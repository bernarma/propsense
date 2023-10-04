//+------------------------------------------------------------------+
//|                                                          fix.mqh |
//|                                 Copyright 2023, Mark Bernardinis |
//|                                   https://www.mtnsconsulting.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2023, Mark Bernardinis"
#property link      "https://www.mtnsconsulting.com"
#property version   "1.00"

#include <Generic\LinkedList.mqh>

#include "HistoricalFix.mqh"
#include "CalendarHelpers.mqh"

class CFix
{

private:
   string _prefix;
   string _name;
   
   int _drawingOffset;
   int _maxHistoricalFixesToShow;
   int _secondsFromMidnight;
   
   CLinkedList<CHistoricalFix *> *_historicalFixes;
   
   color _clr;
   
   ENUM_LINE_STYLE _style;

   SESSION_TZ _session;
      
public:
   CFix(string prefix, string name, int hourUTC, int minUTC, int maxHistoricalFixesToShow,
        int drawingOffset, int serverOffset, SESSION_TZ session, color clr, ENUM_LINE_STYLE style);

   ~CFix();
   
   void Handle(datetime time, double price);

   bool IsInRange(datetime dtCurrent);

};

CFix::CFix(string prefix, string name, int hourUTC, int minUTC, int maxHistoricalFixesToShow,
           int drawingOffset, int serverOffset, SESSION_TZ session, color clr, ENUM_LINE_STYLE style)
{
   _prefix = prefix;
   _name = name;
   _clr = clr;
   _style = style;
   _drawingOffset = drawingOffset;
   _session = session;

   _secondsFromMidnight = (((hourUTC * 60) + minUTC) * 60) + serverOffset;
   
   _maxHistoricalFixesToShow = maxHistoricalFixesToShow;
   
   _historicalFixes = new CLinkedList<CHistoricalFix *>();
}

CFix::~CFix()
{
   for (int i = _historicalFixes.Count(); i > 0; i--)
   {
      CLinkedListNode<CHistoricalFix *> *historicalFixNode = _historicalFixes.First();
      delete historicalFixNode.Value();
      _historicalFixes.Remove(historicalFixNode);
   }
   
   delete _historicalFixes;
}

bool CFix::IsInRange(datetime dtCurrent)
{
   // Initialise using the current date as the start of the session window
   MqlDateTime dtS;
   TimeToStruct(dtCurrent, dtS);

   MqlDateTime sToday;
   sToday.year = dtS.year;
   sToday.mon = dtS.mon;
   sToday.day = dtS.day;
   sToday.hour = 0;
   sToday.min = 0;
   sToday.sec = 0;

   bool isDaylightSavingsTime = CCalendarHelpers::IsInDaylightSavingsTime(_session, dtCurrent);
   int daylightSavingsTimeOffset = ((isDaylightSavingsTime) ? 60*60 : 0);
   datetime dtFix = StructToTime(sToday) + _secondsFromMidnight + daylightSavingsTimeOffset;

   //PrintFormat("Initialized [%s] Fix %s",
      //_name, TimeToString(StructToTime(_startTime)));

   return dtFix == dtCurrent;
}

void CFix::Handle(datetime time, double price)
{
   if (IsInRange(time))
   {
      // Add Fix
      CHistoricalFix *historicalFix = new CHistoricalFix(_prefix, _name, time, price, _drawingOffset, _clr, _style);
      historicalFix.Initialize();
      _historicalFixes.Add(historicalFix);
      //PrintFormat("Creating Historical Fix %s", historicalFix.GetName());
      
      if (_historicalFixes.Count() > _maxHistoricalFixesToShow)
      {
         CLinkedListNode<CHistoricalFix *> *historicalFixNode = _historicalFixes.First();
         //PrintFormat("Removing Historical Fix %s", historicalFixNode.Value().GetName());
         delete historicalFixNode.Value();
         _historicalFixes.Remove(historicalFixNode);
      }
   }
   else
   {
      //PrintFormat("Updating Fix %s [%i] Historical Fixes with Time %s", _name, _historicalFixes.Count(), TimeToString(time));
   
      CLinkedListNode<CHistoricalFix *> *node = _historicalFixes.Head();
      int count = 0;
      if (node != NULL)
      {
         do
         {
            //PrintFormat("Updating Historical Fix LL %s", node.Value().GetName());
            node.Value().Update(time);
            node = node.Next();
         } while (node != _historicalFixes.Head() && count++ < 10);
      }
   }
}

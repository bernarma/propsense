/ / + - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - +  
 / / |                                                                                 P r o p S e n s e   B o o k   L e v e l s . m q 5   |  
 / / + - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - +  
  
 / /   b a s e d   o n   h t t p s : / / w d d b b d d b . n o t i o n . s i t e / P r o p - F i r m - P a s s e d - 5 m - S c a l p i n g - b a b 5 b a a 1 d a 3 7 4 4 1 0 9 c 1 0 8 f 9 5 0 1 2 a 2 8 1 a  
  
 / /   T O D O :   O u t s t a n d i n g   I t e m s  
 / /   -   u p d a t e   b o o k   l e v e l   ( p o s s i b l y   g r e y   o r   u s e r   c o n f i g u r a b l e   c o l o r )   i f   i t   w i l l   b e   c l o s e d   b a s e d   o n   c u r r e n t   f o r m i n g   c a n d l e  
 / /   -   s h o w   b i a s   ( u s e   w h a t   h a s   b e e n   d o n e   o n   t h e   t r a d i n g   v i e w   o n e )  
 / /   -   f i x   i n p u t   t o   f i x e s   ( h a r d   c o d e d )  
  
 / /   h t t p s : / / w w w . m q l 5 . c o m / e n / d o c s / c o n s t a n t s / o b j e c t c o n s t a n t s / e n u m _ o b j e c t / o b j _ b i t m a p  
 / /   h t t p s : / / w w w . m q l 5 . c o m / e n / d o c s / r u n t i m e / r e s o u r c e s   ( e m b e d   r e s o u r c e   i n t o   e x 5 )  
  
 # p r o p e r t y   v e r s i o n       " 1 . 4 "  
 # p r o p e r t y   i n d i c a t o r _ c h a r t _ w i n d o w  
  
 # p r o p e r t y   i n d i c a t o r _ p l o t s       0  
  
 # i n c l u d e   < G e n e r i c \ S t a c k . m q h >  
 # i n c l u d e   < G e n e r i c \ A r r a y L i s t . m q h >  
  
 # i n c l u d e   " C a l e n d a r H e l p e r s . m q h "  
 # i n c l u d e   " D r a w i n g H e l p e r s . m q h "  
 # i n c l u d e   " T i m e H e l p e r s . m q h "  
  
 # i n c l u d e   " B o o k s . m q h "  
 # i n c l u d e   " S e s s i o n s . m q h "  
 # i n c l u d e   " F i x e s . m q h "  
  
 c o n s t   s t r i n g   I N D I C A T O R _ S H O R T _ N A M E   =   " P S " ;  
  
 / / - - -   i n p u t   p a r a m e t e r s  
 i n p u t   i n t                         I n p M a x L e v e l s T o S h o w           =   5 ;                 / /   M a x   L e v e l s   t o   S h o w   -   I G N O R E D  
 i n p u t   i n t                         I n p L o o k b a c k B a r s                 =   9 9 9 ;                 / /   M a x   L o o k b a c k   t o   S h o w  
  
 i n p u t   E N U M _ L I N E _ S T Y L E   I n p L i n e S t y l e   =   S T Y L E _ S O L I D ;   / /   L i n e   S t y l e  
 i n p u t   i n t                         I n p L i n e W i d t h   =   1 ;                 / /   L i n e   W i d t h  
  
 i n p u t   c o l o r                     I n p B u l l i s h C o l o r   =   c l r S k y B l u e ;   / /   L e v e l   C o l o r   ( B u l l i s h )  
 i n p u t   c o l o r                     I n p B e a r i s h C o l o r   =   c l r L i g h t C o r a l ;   / /   L e v e l   C o l o r   ( B e a r i s h )  
  
 i n p u t   b o o l   I n p O n l y I n S e s s i o n   =   t r u e ;   / /   F i l t e r   w i t h   M a r k e t   S e s s i o n s  
  
 i n p u t   b o o l   I n p D e t e c t S e r v e r T i m e z o n e   =   f a l s e ;   / /   D e t e c t   t h e   t i m e z o n e   o f   t h e   S e r v e r   A u t o m a t i c a l l y  
 i n p u t   d o u b l e   I n p S e r v e r T i m e z o n e   =   3 . 0 ;   / /   S e r v e r   T i m e z o n e   ( u s e d   i f   a u t o   d e t e c t i o n   i s   d i s a b l e d )  
  
 i n p u t   i n t     I n p M a x H i s t o r i c a l S e s s i o n s T o S h o w           =   1 0 ;                 / /   M a x   H i s t o r i c a l   S e s s i o n s   t o   S h o w  
  
 i n p u t   i n t   I n p S e s s i o n T i m e Z o n e s H o u r   =   8 ;   / /   T i m e z o n e   ( H o u r )  
 i n p u t   i n t   I n p S e s s i o n T i m e Z o n e s M i n   =   0 ;   / /   T i m e z o n e   ( M i n )  
  
 i n p u t   b o o l   I n p S h o w S e s s i o n 1   =   t r u e ;   / /   S h o w   S e s s i o n   1  
 i n p u t   b o o l   I n p S h o w N e x t S e s s i o n 1   =   t r u e ;   / /   S h o w   N e x t   S e s s i o n   1  
 i n p u t   s t r i n g   I n p S e s s i o n 1 N a m e   =   " A s i a " ;   / /   S e s s i o n   1   N a m e  
 i n p u t   S E S S I O N _ T Z   I n p S e s s i o n 1 T y p e   =   S E S S I O N _ T Z _ A S I A ;   / /   S e s s i o n   1   T y p e  
 i n p u t   c o l o r   I n p S e s s i o n 1 C o l o r   =   c l r B l u e V i o l e t ;   / /   S e s s i o n   1   C o l o r  
 i n p u t   i n t   I n p S e s s i o n 1 S t a r t H o u r   =   0 7 ;   / /   S e s s i o n   1   T i m e   ( S t a r t   H o u r )  
 i n p u t   i n t   I n p S e s s i o n 1 S t a r t M i n   =   0 0 ;   / /   S e s s i o n   1   T i m e   ( S t a r t   M i n )  
 i n p u t   i n t   I n p S e s s i o n 1 E n d H o u r   =   1 6 ;   / /   S e s s i o n   1   T i m e   ( E n d   H o u r )  
 i n p u t   i n t   I n p S e s s i o n 1 E n d M i n   =   0 0 ;   / /   S e s s i o n   1   T i m e   ( E n d   M i n )  
  
 i n p u t   b o o l   I n p S h o w S e s s i o n 2   =   t r u e ;   / /   S h o w   S e s s i o n   2  
 i n p u t   b o o l   I n p S h o w N e x t S e s s i o n 2   =   t r u e ;   / /   S h o w   N e x t   S e s s i o n   2  
 i n p u t   s t r i n g   I n p S e s s i o n 2 N a m e   =   " L o n d o n " ;   / /   S e s s i o n   2   N a m e  
 i n p u t   S E S S I O N _ T Z   I n p S e s s i o n 2 T y p e   =   S E S S I O N _ T Z _ L O N D O N ;   / /   S e s s i o n   2   T y p e  
 i n p u t   c o l o r   I n p S e s s i o n 2 C o l o r   =   c l r G o l d ;   / /   S e s s i o n   2   C o l o r  
 i n p u t   i n t   I n p S e s s i o n 2 S t a r t H o u r   =   1 4 ;   / /   S e s s i o n   2   T i m e   ( S t a r t   H o u r )  
 i n p u t   i n t   I n p S e s s i o n 2 S t a r t M i n   =   0 0 ;   / /   S e s s i o n   2   T i m e   ( S t a r t   M i n )  
 i n p u t   i n t   I n p S e s s i o n 2 E n d H o u r   =   2 3 ;   / /   S e s s i o n   2   T i m e   ( E n d   H o u r )  
 i n p u t   i n t   I n p S e s s i o n 2 E n d M i n   =   0 0 ;   / /   S e s s i o n   2   T i m e   ( E n d   M i n )  
  
 i n p u t   b o o l   I n p S h o w S e s s i o n 3   =   t r u e ;   / /   S h o w   S e s s i o n   3  
 i n p u t   b o o l   I n p S h o w N e x t S e s s i o n 3   =   t r u e ;   / /   S h o w   N e x t   S e s s i o n   3  
 i n p u t   s t r i n g   I n p S e s s i o n 3 N a m e   =   " N e w   Y o r k " ;   / /   S e s s i o n   3   N a m e  
 i n p u t   S E S S I O N _ T Z   I n p S e s s i o n 3 T y p e   =   S E S S I O N _ T Z _ N E W Y O R K ;   / /   S e s s i o n   3   T y p e  
 i n p u t   c o l o r   I n p S e s s i o n 3 C o l o r   =   c l r L i m e G r e e n ;   / /   S e s s i o n   3   C o l o r  
 i n p u t   i n t   I n p S e s s i o n 3 S t a r t H o u r   =   2 0 ;   / /   S e s s i o n   3   T i m e   ( S t a r t   H o u r )  
 i n p u t   i n t   I n p S e s s i o n 3 S t a r t M i n   =   0 0 ;   / /   S e s s i o n   3   T i m e   ( S t a r t   M i n )  
 i n p u t   i n t   I n p S e s s i o n 3 E n d H o u r   =   0 5 ;   / /   S e s s i o n   3   T i m e   ( E n d   H o u r )  
 i n p u t   i n t   I n p S e s s i o n 3 E n d M i n   =   0 0 ;   / /   S e s s i o n   3   T i m e   ( E n d   M i n )  
  
 i n p u t   b o o l   I n p S h o w T o k y o F i x   =   t r u e ;   / /   S h o w   t h e   T o k y o   F i x  
 i n p u t   c o l o r   I n p T o k y o F i x C o l o r   =   c l r D a r k G o l d e n r o d ;   / /   T o k y o   F i x   C o l o r  
 i n p u t   E N U M _ L I N E _ S T Y L E   I n p T o k y o F i x S t y l e   =   S T Y L E _ D O T ;   / /   T o k y o   F i x   S t y l e  
 i n p u t   d o u b l e   I n p T o k y o F i x T z   =   9 . 0 0 ;   / /   T o k y o   F i x   T i m e z o n e  
 i n p u t   d o u b l e   I n p T o k y o F i x   =   9 . 5 5 ;   / /   T o k y o   F i x  
 / / T O K Y O _ F I X   =   ' 0 0 5 5 - 0 1 0 0 '   / /   9 : 5 5 a m   T o k y o   t i m e ( G M T + 9 )  
  
 i n p u t   b o o l   I n p S h o w L o n d o n F i x   =   t r u e ;   / /   S h o w   t h e   L o n d o n   F i x  
 i n p u t   c o l o r   I n p L o n d o n F i x C o l o r   =   c l r P a l e G o l d e n r o d ;   / /   L o n d o n   F i x   C o l o r  
 i n p u t   E N U M _ L I N E _ S T Y L E   I n p L o n d o n F i x S t y l e   =   S T Y L E _ D O T ;   / /   L o n d o n   F i x   S t y l e  
 i n p u t   d o u b l e   I n p L o n d o n F i x T z   =   0 . 0 0 ;   / /   L o n d o n   F i x   T i m e z o n e  
 i n p u t   d o u b l e   I n p L o n d o n F i x   =   1 5 . 0 0 ;   / /   L o n d o n   F i x  
 / / L O N D O N _ F I X   =   ' 1 5 0 0 - 1 5 0 1 '   / /   4 p m   L o n d o n   t i m e ( G M T + 1 )  
  
 C F i x e s   * g _ F i x e s ;  
 C S e s s i o n s   * g _ S e s s i o n s ;  
 C B o o k s   * g _ B o o k s ;  
  
 b o o l   i s I n i t i a l i s e d   =   f a l s e ;  
  
 v o i d   O n D e i n i t ( c o n s t   i n t   r e a s o n )  
 {  
       P r i n t F o r m a t ( " S h u t t i n g   D o w n   ( p r o p s e n s e ) " ) ;  
  
       d e l e t e   g _ B o o k s ;  
       d e l e t e   g _ F i x e s ;  
       d e l e t e   g _ S e s s i o n s ;  
        
       i s I n i t i a l i s e d   =   f a l s e ;  
 }  
  
 v o i d   I n i t i a l i z e ( d a t e t i m e   d t )  
 {  
       g _ S e s s i o n s   =   n e w   C S e s s i o n s ( ) ;  
  
       / /   T O D O :   c o n v e r t   b a r s   t o   s e c o n d s   f o r   o f f s e t  
       g _ F i x e s   =   n e w   C F i x e s ( I N D I C A T O R _ S H O R T _ N A M E ,   2 ,   6 0 0 0 ) ;  
        
       g _ B o o k s   =   n e w   C B o o k s ( I N D I C A T O R _ S H O R T _ N A M E ,   6 0 0 0 ,   I n p O n l y I n S e s s i o n ,   g _ S e s s i o n s ,   I n p L o o k b a c k B a r s ,   I n p B e a r i s h C o l o r ,   I n p B u l l i s h C o l o r ) ;  
        
       / /   I n i t i a l i s e   F i x e s  
       i f   ( I n p S h o w T o k y o F i x )  
       {  
             g _ F i x e s . C r e a t e F i x ( " T o k y o " ,   I n p T o k y o F i x ,   ( i n t ) ( I n p T o k y o F i x T z * 6 0 * 6 0 ) ,   ( i n t ) d t ,   I n p T o k y o F i x C o l o r ,   I n p T o k y o F i x S t y l e ) ;  
       }  
       i f   ( I n p S h o w L o n d o n F i x )  
       {  
             g _ F i x e s . C r e a t e F i x ( " L o n d o n " ,   I n p L o n d o n F i x ,   ( i n t ) ( I n p L o n d o n F i x T z * 6 0 * 6 0 ) ,   ( i n t ) d t ,   I n p L o n d o n F i x C o l o r ,   I n p L o n d o n F i x S t y l e ) ;  
       }  
        
       i f   ( I n p S h o w S e s s i o n 1 )  
       {  
             g _ S e s s i o n s . C r e a t e S e s s i o n (  
                   I N D I C A T O R _ S H O R T _ N A M E ,   I n p S e s s i o n 1 N a m e ,   I n p S e s s i o n 1 C o l o r ,   I n p M a x H i s t o r i c a l S e s s i o n s T o S h o w ,   I n p S h o w N e x t S e s s i o n 1 ,   I n p S e s s i o n 1 S t a r t H o u r ,  
                   I n p S e s s i o n 1 S t a r t M i n ,   I n p S e s s i o n 1 E n d H o u r ,   I n p S e s s i o n 1 E n d M i n ,   ( I n p S e s s i o n T i m e Z o n e s H o u r * 6 0 * 6 0   +   I n p S e s s i o n T i m e Z o n e s M i n * 6 0 ) ,   ( i n t ) d t ,   I n p S e s s i o n 1 T y p e ) ;  
       }  
        
       i f   ( I n p S h o w S e s s i o n 2 )  
       {  
             g _ S e s s i o n s . C r e a t e S e s s i o n (  
                   I N D I C A T O R _ S H O R T _ N A M E ,   I n p S e s s i o n 2 N a m e ,   I n p S e s s i o n 2 C o l o r ,   I n p M a x H i s t o r i c a l S e s s i o n s T o S h o w ,   I n p S h o w N e x t S e s s i o n 2 ,   I n p S e s s i o n 2 S t a r t H o u r ,  
                   I n p S e s s i o n 2 S t a r t M i n ,   I n p S e s s i o n 2 E n d H o u r ,   I n p S e s s i o n 2 E n d M i n ,   ( I n p S e s s i o n T i m e Z o n e s H o u r * 6 0 * 6 0   +   I n p S e s s i o n T i m e Z o n e s M i n * 6 0 ) ,   ( i n t ) d t ,   I n p S e s s i o n 2 T y p e ) ;  
       }              
        
       i f   ( I n p S h o w S e s s i o n 3 )  
       {  
             g _ S e s s i o n s . C r e a t e S e s s i o n (  
                   I N D I C A T O R _ S H O R T _ N A M E ,   I n p S e s s i o n 3 N a m e ,   I n p S e s s i o n 3 C o l o r ,   I n p M a x H i s t o r i c a l S e s s i o n s T o S h o w ,   I n p S h o w N e x t S e s s i o n 3 ,   I n p S e s s i o n 3 S t a r t H o u r ,  
                   I n p S e s s i o n 3 S t a r t M i n ,   I n p S e s s i o n 3 E n d H o u r ,   I n p S e s s i o n 3 E n d M i n ,   ( I n p S e s s i o n T i m e Z o n e s H o u r * 6 0 * 6 0   +   I n p S e s s i o n T i m e Z o n e s M i n * 6 0 ) ,   ( i n t ) d t ,   I n p S e s s i o n 3 T y p e ) ;  
       }  
  
       P r i n t F o r m a t ( " I n i t i a l i s e d   ( p r o p s e n s e ) " ) ;  
        
       i s I n i t i a l i s e d   =   t r u e ;  
 }  
  
 v o i d   O n T i m e r ( )  
 {  
       i f   ( ! i s I n i t i a l i s e d )  
       {  
             d a t e t i m e   d t   =   T i m e T r a d e S e r v e r ( )   -   T i m e G M T ( ) ;  
              
             I n i t i a l i z e ( d t ) ;  
  
             P r i n t F o r m a t ( " S t a r t i n g   ( p r o p s e n s e )   -   d e l a y e d   i n i t i a l i z a t i o n   s u c c e s s f u l " ) ;  
       }  
 }  
  
 i n t   O n I n i t ( )  
 {  
       / / - - -   D e l a y   a   s e c o n d   t o   g i v e   M T 5   a   c h a n c e   t o   s t a r t u p   b e f o r e   a t t e m p t i n g   t o   q u e r y   t h e   s e r v e r  
       / / - - -   f o r   t i m e z o n e   i n f o r m a t i o n   a n d   o t h e r   b i t s   t h a t   c a n   c a u s e   f a i l u r e s   d u r i n g   s t a r t u p   o f   t h e   p l a t f o r m  
       i f   ( I n p D e t e c t S e r v e r T i m e z o n e )  
       {  
             E v e n t S e t T i m e r ( 1 ) ;  
             P r i n t F o r m a t ( " S t a r t i n g   ( p r o p s e n s e )   -   i n i t i a l i z a t i o n   d e l a y e d " ) ;  
       }  
       e l s e  
       {  
             I n i t i a l i z e ( ( i n t ) I n p S e r v e r T i m e z o n e   *   6 0   *   6 0 ) ;  
       }  
        
       / / - - -  
       r e t u r n ( I N I T _ S U C C E E D E D ) ;  
 }  
      
 i n t   O n C a l c u l a t e ( c o n s t   i n t   r a t e s _ t o t a l ,  
                                 c o n s t   i n t   p r e v _ c a l c u l a t e d ,  
                                 c o n s t   d a t e t i m e   & t i m e [ ] ,  
                                 c o n s t   d o u b l e   & o p e n [ ] ,  
                                 c o n s t   d o u b l e   & h i g h [ ] ,  
                                 c o n s t   d o u b l e   & l o w [ ] ,  
                                 c o n s t   d o u b l e   & c l o s e [ ] ,  
                                 c o n s t   l o n g   & t i c k _ v o l u m e [ ] ,  
                                 c o n s t   l o n g   & v o l u m e [ ] ,  
                                 c o n s t   i n t   & s p r e a d [ ] )  
 {  
       i f   ( ! i s I n i t i a l i s e d )  
       {  
             P r i n t ( " A w a i t i n g   i n i t i a l i z a t i o n . . . " ) ;  
             r e t u r n ( 0 ) ;  
       }  
  
       / / - - -   O n l y   c a l c u l a t e   h i s t o r i c a l l y   f r o m   I n p L o o k b a c k B a r s  
       i n t   s t a r t   =   M a t h M a x ( r a t e s _ t o t a l   -   I n p L o o k b a c k B a r s   -   1 ,   p r e v _ c a l c u l a t e d   -   1 ) ;  
  
       / / - - -   L o o p   t h r o u g h   t h e   p e r i o d s   i n   t h e   w i n d o w   e x c e p t   t h e   l a s t   c a n d l e   ( w h i c h   i s   t h e   a c t i v e   o n e )  
       f o r ( i n t   i   =   s t a r t ;   i   <   r a t e s _ t o t a l   & &   ! I s S t o p p e d ( ) ;   i + + )  
       {  
             P r o c e s s B a r ( i ,   r a t e s _ t o t a l ,   t i m e ,   o p e n ,   h i g h ,   l o w ,   c l o s e ) ;  
       }  
        
       / / - - -   r e t u r n   v a l u e   o f   p r e v _ c a l c u l a t e d   f o r   n e x t   c a l l  
       r e t u r n ( r a t e s _ t o t a l ) ;  
 }  
  
 v o i d   P r o c e s s B a r ( c o n s t   i n t   c u r r e n t ,  
                                 c o n s t   i n t   r a t e s T o t a l ,  
                                 c o n s t   d a t e t i m e   & t i m e [ ] ,  
                                 c o n s t   d o u b l e   & o p e n [ ] ,  
                                 c o n s t   d o u b l e   & h i g h [ ] ,  
                                 c o n s t   d o u b l e   & l o w [ ] ,  
                                 c o n s t   d o u b l e   & c l o s e [ ] )  
 {  
       / /   u p d a t e   t h e   s e s s i o n s   ( i n c l u d i n g   h i g h s / l o w s   a n d   b o u n d i n g   b o x )  
       g _ S e s s i o n s . P r o c e s s T i m e ( t i m e [ c u r r e n t ] ,   o p e n [ c u r r e n t ] ,   h i g h [ c u r r e n t ] ,   l o w [ c u r r e n t ] ,   c l o s e [ c u r r e n t ] ) ;  
  
       / /   u p d a t e   t h e   b o o k s  
       g _ B o o k s . P r o c e s s T i m e ( c u r r e n t ,   r a t e s T o t a l ,   t i m e ,   o p e n ,   h i g h ,   l o w ,   c l o s e ) ;  
  
       / /   u p d a t e   t h e   f i x e s   -   i f   a   n e w   c a n d l e   j u s t   f o r m e d  
       g _ F i x e s . H a n d l e ( t i m e [ c u r r e n t ] ,   o p e n [ c u r r e n t ] ) ;  
 }  
 
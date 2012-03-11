FasdUAS 1.101.10   ��   ��    k             l     ��  ��   �� autoAccept: Since you can't specify both this script and "Auto Accept" in the script field in iChat's preferences, it's handy to be able to tell this script to do the accept for certain types of invitations.  It would also be possible to tell it to chain-call a different script; this would be more flexible (for example, if you wanted to run "iTunes Remote Control" instead), but slower.     � 	 	
   a u t o A c c e p t :   S i n c e   y o u   c a n ' t   s p e c i f y   b o t h   t h i s   s c r i p t   a n d   " A u t o   A c c e p t "   i n   t h e   s c r i p t   f i e l d   i n   i C h a t ' s   p r e f e r e n c e s ,   i t ' s   h a n d y   t o   b e   a b l e   t o   t e l l   t h i s   s c r i p t   t o   d o   t h e   a c c e p t   f o r   c e r t a i n   t y p e s   o f   i n v i t a t i o n s .     I t   w o u l d   a l s o   b e   p o s s i b l e   t o   t e l l   i t   t o   c h a i n - c a l l   a   d i f f e r e n t   s c r i p t ;   t h i s   w o u l d   b e   m o r e   f l e x i b l e   ( f o r   e x a m p l e ,   i f   y o u   w a n t e d   t o   r u n   " i T u n e s   R e m o t e   C o n t r o l "   i n s t e a d ) ,   b u t   s l o w e r .   
  
 l     ��  ��   % Set this to a list containing some subset of "text", "audio", "video", "buddy authorization", "local screen sharing", "remote screen sharing", and "file transfer", depending on what you want to auto-accept.  (Note that "remote screen sharing" is presently broken; see the comment below.     �  >   S e t   t h i s   t o   a   l i s t   c o n t a i n i n g   s o m e   s u b s e t   o f   " t e x t " ,   " a u d i o " ,   " v i d e o " ,   " b u d d y   a u t h o r i z a t i o n " ,   " l o c a l   s c r e e n   s h a r i n g " ,   " r e m o t e   s c r e e n   s h a r i n g " ,   a n d   " f i l e   t r a n s f e r " ,   d e p e n d i n g   o n   w h a t   y o u   w a n t   t o   a u t o - a c c e p t .     ( N o t e   t h a t   " r e m o t e   s c r e e n   s h a r i n g "   i s   p r e s e n t l y   b r o k e n ;   s e e   t h e   c o m m e n t   b e l o w .      l     ��  ��    = 7 Example to enable only text and remote screen sharing:     �   n   E x a m p l e   t o   e n a b l e   o n l y   t e x t   a n d   r e m o t e   s c r e e n   s h a r i n g :      l     ��  ��    > 8 property autoAccept : {"text", "remote screen sharing"}     �   p   p r o p e r t y   a u t o A c c e p t   :   { " t e x t " ,   " r e m o t e   s c r e e n   s h a r i n g " }      l          j     �� �� 0 
autoaccept 
autoAccept  J     ����    p j The default, as distributed, is to disable auto-accept, since that's really not the point of this script.     �   �   T h e   d e f a u l t ,   a s   d i s t r i b u t e d ,   i s   t o   d i s a b l e   a u t o - a c c e p t ,   s i n c e   t h a t ' s   r e a l l y   n o t   t h e   p o i n t   o f   t h i s   s c r i p t .     !   l     ��������  ��  ��   !  "�� " w       # $ # k       % %  & ' & l     ��������  ��  ��   '  ( ) ( i     * + * I      �� , -�� 	0 growl   , o      ���� 0 thetext theText - �� . /
�� 
from . o      ���� 0 thebuddy theBuddy / �� 0 1
�� 
for  0 o      ���� 0 theevent theEvent 1 �� 2��
�� 
stat 2 o      ���� 0 
showstatus 
showStatus��   + k    ` 3 3  4 5 4 q       6 6 �� 7�� 0 	buddyname 	buddyName 7 ������ 0 	buddyicon 	buddyIcon��   5  8 9 8 q       : : �� ;�� 0 thetitle theTitle ; ������  0 thedescription theDescription��   9  < = < l     ��������  ��  ��   =  > ? > Z     � @ A�� B @ =     C D C o     ���� 0 thebuddy theBuddy D m    ��
�� 
null A k     E E  F G F r    	 H I H o    ���� 0 theevent theEvent I o      ���� 0 thetitle theTitle G  J K J r   
  L M L o   
 ���� 0 thetext theText M o      ����  0 thedescription theDescription K  N�� N r     O P O m    ��
�� 
msng P o      ���� 0 	buddyicon 	buddyIcon��  ��   B k    � Q Q  R S R r     T U T n    V W V 1    ��
�� 
pnam W o    ���� 0 thebuddy theBuddy U o      ���� 0 	buddyname 	buddyName S  X Y X r     Z [ Z n    \ ] \ 1    ��
�� 
imaA ] o    ���� 0 thebuddy theBuddy [ o      ���� 0 	buddyicon 	buddyIcon Y  ^ _ ^ Z     A ` a�� b ` F     + c d c o     !���� 0 
showstatus 
showStatus d >  $ ) e f e n  $ ' g h g 1   % '��
�� 
smsg h o   $ %���� 0 thebuddy theBuddy f m   ' ( i i � j j   a k   . 7 k k  l m l r   . 1 n o n o   . /���� 0 thetext theText o o      ���� 0 thetitle theTitle m  p�� p r   2 7 q r q n  2 5 s t s 1   3 5��
�� 
smsg t o   2 3���� 0 thebuddy theBuddy r o      ����  0 thedescription theDescription��  ��   b k   : A u u  v w v r   : = x y x o   : ;���� 0 	buddyname 	buddyName y o      ���� 0 thetitle theTitle w  z�� z r   > A { | { o   > ?���� 0 thetext theText | o      ����  0 thedescription theDescription��   _  } ~ } l  B B��������  ��  ��   ~   �  l  B B�� � ���   � E ? Don't do anything if we're chatting with the buddy in question    � � � � ~   D o n ' t   d o   a n y t h i n g   i f   w e ' r e   c h a t t i n g   w i t h   t h e   b u d d y   i n   q u e s t i o n �  ��� � Q   B � � ��� � k   E � � �  � � � q   E E � � �� ��� 0 frontapp frontApp � ������ 0 
windowname 
windowName��   �  � � � l  E E�� � ���   � � � This is in a "try" because, if things aren't exactly as we're expecting (e.g., iChat is frontmost  but has no windows open), we want to go ahead and growl.    � � � �8   T h i s   i s   i n   a   " t r y "   b e c a u s e ,   i f   t h i n g s   a r e n ' t   e x a c t l y   a s   w e ' r e   e x p e c t i n g   ( e . g . ,   i C h a t   i s   f r o n t m o s t     b u t   h a s   n o   w i n d o w s   o p e n ) ,   w e   w a n t   t o   g o   a h e a d   a n d   g r o w l . �  � � � O  E [ � � � r   I Z � � � 6  I X � � � n   I O � � � 1   M O��
�� 
pnam � 4  I M�� �
�� 
pcap � m   K L����  � =  P W � � � 1   Q S��
�� 
pisf � m   T V��
�� boovtrue � o      ���� 0 frontapp frontApp � m   E F � ��                                                                                  sevs  alis    �  System                     �S�H+   j�System Events.app                                               	a� lb        ����  	                CoreServices    �R�      � PB     j� j� j�  7System:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    S y s t e m  -System/Library/CoreServices/System Events.app   / ��   �  ��� � Z   \ � � ����� � =  \ _ � � � o   \ ]���� 0 frontapp frontApp � m   ] ^ � � � � � 
 i C h a t � k   b � � �  � � � O  b o � � � r   f n � � � n   f l � � � 1   j l��
�� 
pnam � 4  f j�� �
�� 
cwin � m   h i����  � o      ���� 0 
windowname 
windowName � m   b c � ��                                                                                  fez!  alis    6  System                     �S�H+   j�	iChat.app                                                       
��0��        ����  	                Applications    �R�      �0s�     j�  System:Applications: iChat.app   	 i C h a t . a p p    S y s t e m  Applications/iChat.app  / ��   �  � � � l  p p�� � ���   � � � Character id 8212 is an em dash.  We don't use a literal, because AppleScript uses Mac-Roman or UTF-16 (with a BOM), but github will show it as ISO-8859-1.  To allow both clones and web browsing to work, we use ASCII only.    � � � ��   C h a r a c t e r   i d   8 2 1 2   i s   a n   e m   d a s h .     W e   d o n ' t   u s e   a   l i t e r a l ,   b e c a u s e   A p p l e S c r i p t   u s e s   M a c - R o m a n   o r   U T F - 1 6   ( w i t h   a   B O M ) ,   b u t   g i t h u b   w i l l   s h o w   i t   a s   I S O - 8 8 5 9 - 1 .     T o   a l l o w   b o t h   c l o n e s   a n d   w e b   b r o w s i n g   t o   w o r k ,   w e   u s e   A S C I I   o n l y . �  � � � Z  p � � ����� � C   p � � � � o   p q���� 0 
windowname 
windowName � l  q � ����� � b   q � � � � b   q ~ � � � b   q t � � � o   q r���� 0 	buddyname 	buddyName � 1   r s��
�� 
spac � 5   t }�� ���
�� 
cha  � m   v y���� 
�� kfrmID   � 1   ~ ��
�� 
spac��  ��   � L   � �����  ��  ��   �  ��� � Z  � � � ����� � D   � � � � � o   � ����� 0 
windowname 
windowName � l  � � ����� � b   � � � � � b   � � � � � b   � � � � � 1   � ���
�� 
spac � 5   � ��� ���
�� 
cha  � m   � ����� 
�� kfrmID   � 1   � ���
�� 
spac � o   � ����� 0 	buddyname 	buddyName��  ��   � L   � �����  ��  ��  ��  ��  ��  ��   � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��   ?  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � For Growl 1.2.2, the application should be "GrowlHelperApp".  If it's wrong, AppleScript Editor will highlight this line and tell you to select an app.  In that case, you have Growl 1.2.2 or earlier, and should change "Growl" in the next line to "GrowlHelperApp".    � � � �   F o r   G r o w l   1 . 2 . 2 ,   t h e   a p p l i c a t i o n   s h o u l d   b e   " G r o w l H e l p e r A p p " .     I f   i t ' s   w r o n g ,   A p p l e S c r i p t   E d i t o r   w i l l   h i g h l i g h t   t h i s   l i n e   a n d   t e l l   y o u   t o   s e l e c t   a n   a p p .     I n   t h a t   c a s e ,   y o u   h a v e   G r o w l   1 . 2 . 2   o r   e a r l i e r ,   a n d   s h o u l d   c h a n g e   " G r o w l "   i n   t h e   n e x t   l i n e   t o   " G r o w l H e l p e r A p p " . �  � � � O   �^ � � � k   �] � �  � � � q   � � � � �� ��� ,0 allnotificationslist allNotificationsList � ������ 40 enablednotificationslist enabledNotificationsList��   �  � � � r   � � � � � J   � � � �  � � � m   � � � � � � �  L o g i n   F i n i s h e d �  � � � m   � � � � � � �  L o g o u t   F i n i s h e d �  � � � m   � � � � � � � , B u d d y   B e c a m e   A v a i l a b l e �  � � � m   � � � � � � � 0 B u d d y   B e c a m e   U n a v a i l a b l e �  � � � m   � � � � � � � : B u d d y   A u t h o r i z a t i o n   R e q u e s t e d �  � � � m   � � � � � � � 4 C h a t   R o o m   M e s s a g e   R e c e i v e d �  � � � m   � �   �   M e s s a g e   R e c e i v e d �  m   � � � 4 A d d r e s s e d   M e s s a g e   R e c e i v e d  m   � � �		  M e s s a g e   S e n t 

 m   � � � 0 R e c e i v e d   T e x t   I n v i t a t i o n  m   � � � 2 R e c e i v e d   A u d i o   I n v i t a t i o n  m   � � � 2 R e c e i v e d   V i d e o   I n v i t a t i o n  m   � � � P R e c e i v e d   L o c a l   S c r e e n   S h a r i n g   I n v i t a t i o n  m   � � � R R e c e i v e d   R e m o t e   S c r e e n   S h a r i n g   I n v i t a t i o n  m   � �   �!!   A / V   C h a t   S t a r t e d "#" m   � �$$ �%%  A / V   C h a t   E n d e d# &'& m   � �(( �)) B R e c e i v e d   F i l e   T r a n s f e r   I n v i t a t i o n' *��* m   � �++ �,, . C o m p l e t e d   F i l e   T r a n s f e r��   � l     -����- o      ���� ,0 allnotificationslist allNotificationsList��  ��   � ./. r   � �010 o   � ����� ,0 allnotificationslist allNotificationsList1 l     2��~2 o      �}�} 40 enablednotificationslist enabledNotificationsList�  �~  / 343 l  � ��|56�|  5 < 6 Another reasonable enabledNotificationsList would be:   6 �77 l   A n o t h e r   r e a s o n a b l e   e n a b l e d N o t i f i c a t i o n s L i s t   w o u l d   b e :4 898 l  � ��{:;�{  :�� {"Buddy Became Available", "Buddy Became Unavailable", "Buddy Authorization Requested", "Chat Room Message Received", "Message Received", "Addressed Message Received", "Received Text Invitation", "Received Audio Invitation", "Received Video Invitation", "Received Local Screen Sharing Invitation", "Received Remote Screen Sharing Invitation", "Received File Transfer Invitation", "Completed File Transfer"}   ; �<<.   { " B u d d y   B e c a m e   A v a i l a b l e " ,   " B u d d y   B e c a m e   U n a v a i l a b l e " ,   " B u d d y   A u t h o r i z a t i o n   R e q u e s t e d " ,   " C h a t   R o o m   M e s s a g e   R e c e i v e d " ,   " M e s s a g e   R e c e i v e d " ,   " A d d r e s s e d   M e s s a g e   R e c e i v e d " ,   " R e c e i v e d   T e x t   I n v i t a t i o n " ,   " R e c e i v e d   A u d i o   I n v i t a t i o n " ,   " R e c e i v e d   V i d e o   I n v i t a t i o n " ,   " R e c e i v e d   L o c a l   S c r e e n   S h a r i n g   I n v i t a t i o n " ,   " R e c e i v e d   R e m o t e   S c r e e n   S h a r i n g   I n v i t a t i o n " ,   " R e c e i v e d   F i l e   T r a n s f e r   I n v i t a t i o n " ,   " C o m p l e t e d   F i l e   T r a n s f e r " }9 =>= l  � ��z?@�z  ? � � but since the script has to be enabled individually for each event in iChat anyway, there's no point in not enabling all notifications in Growl by default.   @ �AA8   b u t   s i n c e   t h e   s c r i p t   h a s   t o   b e   e n a b l e d   i n d i v i d u a l l y   f o r   e a c h   e v e n t   i n   i C h a t   a n y w a y ,   t h e r e ' s   n o   p o i n t   i n   n o t   e n a b l i n g   a l l   n o t i f i c a t i o n s   i n   G r o w l   b y   d e f a u l t .> BCB I  ��y�xD
�y .registernull��� ��� null�x  D �wEF
�w 
applE m   �GG �HH . i C h a t   G r o w l   A p p l e S c r i p tF �vIJ
�v 
anotI o  �u�u ,0 allnotificationslist allNotificationsListJ �tKL
�t 
dnotK o  	�s�s 40 enablednotificationslist enabledNotificationsListL �rM�q
�r 
iappM m  NN �OO 
 i C h a t�q  C P�pP Z  ]QR�oSQ = TUT o  �n�n 0 	buddyicon 	buddyIconU m  �m
�m 
msngR I 9�l�kV
�l .notifygrnull��� ��� null�k  V �jWX
�j 
nameW o   !�i�i 0 theevent theEventX �hYZ
�h 
titlY o  $%�g�g 0 thetitle theTitleZ �f[\
�f 
desc[ o  ()�e�e  0 thedescription theDescription\ �d]^
�d 
appl] m  ,/__ �`` . i C h a t   G r o w l   A p p l e S c r i p t^ �ca�b
�c 
stcka m  23�a
�a boovfals�b  �o  S I <]�`�_b
�` .notifygrnull��� ��� null�_  b �^cd
�^ 
namec o  @A�]�] 0 theevent theEventd �\ef
�\ 
title o  DE�[�[ 0 thetitle theTitlef �Zgh
�Z 
descg o  HI�Y�Y  0 thedescription theDescriptionh �Xij
�X 
appli m  LOkk �ll . i C h a t   G r o w l   A p p l e S c r i p tj �Wmn
�W 
imagm o  RS�V�V 0 	buddyicon 	buddyIconn �Uo�T
�U 
stcko m  VW�S
�S boovfals�T  �p   � m   � �pp�                                                                                  GRRR  alis    6  System                     �S�H+   j�	Growl.app                                                       4K�ʥ�         ����  	                Applications    �R�      ʥ�      j�  System:Applications: Growl.app   	 G r o w l . a p p    S y s t e m  Applications/Growl.app  / ��   � q�Rq l __�Q�P�O�Q  �P  �O  �R   ) rsr l     �N�M�L�N  �M  �L  s tut i    vwv I     �K�Jx
�K .ichthe00null��� ��� null�J  x �Iy�H
�I 
heacy o      �G�G 0 
theservice 
theService�H  w I    �Fz{�F 	0 growl  z l    |�E�D| b     }~} n    � 1    �C
�C 
pnam� o     �B�B 0 
theservice 
theService~ m    �� ���    l o g i n   f i n i s h e d�E  �D  { �A��
�A 
from� m    �@
�@ 
null� �?��
�? 
for � m    	�� ���  L o g i n   F i n i s h e d� �>��=
�> 
stat� m   
 �<
�< boovfals�=  u ��� i    ��� I     �;�:�
�; .ichthe01null��� ��� null�:  � �9��8
�9 
heac� o      �7�7 0 
theservice 
theService�8  � I    �6���6 	0 growl  � l    ��5�4� b     ��� n    ��� 1    �3
�3 
pnam� o     �2�2 0 
theservice 
theService� m    �� ���     l o g o u t   f i n i s h e d�5  �4  � �1��
�1 
from� m    �0
�0 
null� �/��
�/ 
for � m    	�� ���  L o g o u t   F i n i s h e d� �.��-
�. 
stat� m   
 �,
�, boovfals�-  � ��� i    ��� I     �+��*
�+ .ichthe02null���     pres� o      �)�) 0 thebuddy theBuddy�*  � I    �(���( 	0 growl  � l    ��'�&� b     ��� n    ��� 1    �%
�% 
pnam� o     �$�$ 0 thebuddy theBuddy� m    �� ��� "   b e c a m e   a v a i l a b l e�'  �&  � �#��
�# 
from� o    �"�" 0 thebuddy theBuddy� �!��
�! 
for � m    	�� ��� , B u d d y   B e c a m e   A v a i l a b l e� � ��
�  
stat� m   
 �
� boovtrue�  � ��� i    ��� I     ���
� .ichthe03null���     pres� o      �� 0 thebuddy theBuddy�  � I    ���� 	0 growl  � l    ���� b     ��� n    ��� 1    �
� 
pnam� o     �� 0 thebuddy theBuddy� m    �� ��� &   b e c a m e   u n a v a i l a b l e�  �  � ���
� 
from� o    �� 0 thebuddy theBuddy� ���
� 
for � m    	�� ��� 0 B u d d y   B e c a m e   U n a v a i l a b l e� ���
� 
stat� m   
 �
� boovtrue�  � ��� i    ��� I     ���
� .ichthe14null���     barq� o      �� 0 
therequest 
theRequest�  � k     )�� ��� q      �� ��� 0 thebuddy theBuddy�  � ��� r     ��� n    ��� m    �

�
 
pres� o     �	�	 0 
therequest 
theRequest� o      �� 0 thebuddy theBuddy� ��� I   ���� 	0 growl  � l   ���� b    ��� n   	��� 1    	�
� 
pnam� o    �� 0 thebuddy theBuddy� m   	 
�� ��� 0   r e q u e s t e d   a u t h o r i z a t i o n�  �  � ���
� 
from� o    �� 0 thebuddy theBuddy� � ��
�  
for � m    �� ��� : B u d d y   A u t h o r i z a t i o n   R e q u e s t e d� �����
�� 
stat� m    ��
�� boovfals��  � ���� Z   )������� E   ��� o    ���� 0 
autoaccept 
autoAccept� m    �� ��� & b u d d y   a u t h o r i z a t i o n� I    %�����
�� .ichtacptnull���     ****� o     !���� 0 
therequest 
theRequest��  ��  ��  ��  � ��� i    ��� I     ����
�� .ichthe12null���     ctxt� o      ���� 0 message  � ����
�� 
hepr� o      ���� 0 thebuddy theBuddy� �����
�� 
hect� o      ���� 0 textchat textChat��  � I    ������ 	0 growl  � o     ���� 0 message  � ����
�� 
from� o    ���� 0 thebuddy theBuddy� �� 
�� 
for   m     � 4 C h a t   R o o m   M e s s a g e   R e c e i v e d ����
�� 
stat m    ��
�� boovfals��  �  i     # I     ��	

�� .ichthe04null���     ctxt	 o      ���� 0 message  
 ��
�� 
hepr o      ���� 0 thebuddy theBuddy ����
�� 
hect o      ���� 0 textchat textChat��   I    ���� 	0 growl   o     ���� 0 message   ��
�� 
from o    ���� 0 thebuddy theBuddy ��
�� 
for  m     �   M e s s a g e   R e c e i v e d ����
�� 
stat m    ��
�� boovfals��    l      ����  82
	-- The "addressed message received" and "received remote screen sharing invitation" events
	-- conflict; I think they have the same ID by mistake.
	on addressed message received from theBuddy for textChat
		growl of message from theBuddy for "Addressed Message Received"
	end addressed message received
	    �d 
 	 - -   T h e   " a d d r e s s e d   m e s s a g e   r e c e i v e d "   a n d   " r e c e i v e d   r e m o t e   s c r e e n   s h a r i n g   i n v i t a t i o n "   e v e n t s 
 	 - -   c o n f l i c t ;   I   t h i n k   t h e y   h a v e   t h e   s a m e   I D   b y   m i s t a k e . 
 	 o n   a d d r e s s e d   m e s s a g e   r e c e i v e d   f r o m   t h e B u d d y   f o r   t e x t C h a t 
 	 	 g r o w l   o f   m e s s a g e   f r o m   t h e B u d d y   f o r   " A d d r e s s e d   M e s s a g e   R e c e i v e d " 
 	 e n d   a d d r e s s e d   m e s s a g e   r e c e i v e d 
 	  i   $ ' I     �� !
�� .ichthe05null���     ctxt  o      ���� 0 message  ! ��"��
�� 
hect" o      ���� 0 textchat textChat��   I    ��#$�� 	0 growl  # o     ���� 0 message  $ ��%&
�� 
from% m    ��
�� 
null& ��'(
�� 
for ' m    )) �**  M e s s a g e   S e n t( ��+��
�� 
stat+ m    ��
�� boovfals��   ,-, i   ( +./. I     ��01
�� .ichthe06null���     ctxt0 o      ���� 0 message  1 ��23
�� 
hepr2 o      ���� 0 thebuddy theBuddy3 ��4��
�� 
hect4 o      ���� 0 textchat textChat��  / k     55 676 I    ��89�� 	0 growl  8 o     ���� 0 message  9 ��:;
�� 
from: o    ���� 0 thebuddy theBuddy; ��<=
�� 
for < m    >> �?? 0 R e c e i v e d   T e x t   I n v i t a t i o n= ��@��
�� 
stat@ m    ��
�� boovfals��  7 A��A Z   BC����B E   DED o    ���� 0 
autoaccept 
autoAcceptE m    FF �GG  t e x tC I   ��H��
�� .ichtacptnull���     ****H o    ���� 0 textchat textChat��  ��  ��  ��  - IJI i   , /KLK I     ����M
�� .ichthe07null��� ��� null��  M ��NO
�� 
heprN o      ���� 0 thebuddy theBuddyO ��P��
�� 
hectP o      ���� 0 	audiochat 	audioChat��  L k     #QQ RSR I    ��TU�� 	0 growl  T l    V����V b     WXW n    YZY 1    ��
�� 
pnamZ o     ���� 0 thebuddy theBuddyX m    [[ �\\ <   w o u l d   l i k e   t o   s p e a k   w i t h   y o u .��  ��  U ��]^
�� 
from] o    ���� 0 thebuddy theBuddy^ ��_`
�� 
for _ m    	aa �bb 2 R e c e i v e d   A u d i o   I n v i t a t i o n` ��c��
�� 
statc m   
 ��
�� boovfals��  S d��d Z   #ef����e E   ghg o    ���� 0 
autoaccept 
autoAccepth m    ii �jj 
 a u d i of I   ��k��
�� .ichtacptnull���     ****k o    ���� 0 	audiochat 	audioChat��  ��  ��  ��  J lml i   0 3non I     ����p
�� .ichthe08null��� ��� null��  p ��qr
�� 
heprq o      ���� 0 thebuddy theBuddyr ��s��
�� 
hects o      ���� 0 	videochat 	videoChat��  o k     #tt uvu I    ��wx�� 	0 growl  w l    y����y b     z{z n    |}| 1    ��
�� 
pnam} o     ���� 0 thebuddy theBuddy{ m    ~~ � .   w o u l d   l i k e   t o   s e e   y o u .��  ��  x ����
�� 
from� o    ���� 0 thebuddy theBuddy� ����
�� 
for � m    	�� ��� 2 R e c e i v e d   V i d e o   I n v i t a t i o n� �����
�� 
stat� m   
 ��
�� boovfals��  v ���� Z   #������� E   ��� o    ���� 0 
autoaccept 
autoAccept� m    �� ��� 
 v i d e o� I   �����
�� .ichtacptnull���     ****� o    ���� 0 	videochat 	videoChat��  ��  ��  ��  m ��� i   4 7��� I     �����
�� .ichthe15null��� ��� null��  � ���
� 
hepr� o      �~�~ 0 thebuddy theBuddy� �}��|
�} 
hect� o      �{�{ 0 
screenchat 
screenChat�|  � k     #�� ��� I    �z���z 	0 growl  � l    ��y�x� b     ��� n    ��� 1    �w
�w 
pnam� o     �v�v 0 thebuddy theBuddy� m    �� ��� >   w o u l d   l i k e   t o   s e e   y o u r   s c r e e n .�y  �x  � �u��
�u 
from� o    �t�t 0 thebuddy theBuddy� �s��
�s 
for � m    	�� ��� P R e c e i v e d   L o c a l   S c r e e n   S h a r i n g   I n v i t a t i o n� �r��q
�r 
stat� m   
 �p
�p boovfals�q  � ��o� Z   #���n�m� E   ��� o    �l�l 0 
autoaccept 
autoAccept� m    �� ��� ( l o c a l   s c r e e n   s h a r i n g� I   �k��j
�k .ichtacptnull���     ****� o    �i�i 0 
screenchat 
screenChat�j  �n  �m  �o  � ��� l      �h���h  ���
	-- The "addressed message received" and "received remote screen sharing invitation" events
	-- conflict; I think they have the same ID by mistake.
	on received remote screen sharing invitation from theBuddy for screenChat
		growl of (theBuddy's name & " would like you to see their screen.") from theBuddy for "Received Remote Screen Sharing Invitation"
		if "remote screen sharing" is in autoAccept then accept screenChat
	end received remote screen sharing invitation
	   � ���� 
 	 - -   T h e   " a d d r e s s e d   m e s s a g e   r e c e i v e d "   a n d   " r e c e i v e d   r e m o t e   s c r e e n   s h a r i n g   i n v i t a t i o n "   e v e n t s 
 	 - -   c o n f l i c t ;   I   t h i n k   t h e y   h a v e   t h e   s a m e   I D   b y   m i s t a k e . 
 	 o n   r e c e i v e d   r e m o t e   s c r e e n   s h a r i n g   i n v i t a t i o n   f r o m   t h e B u d d y   f o r   s c r e e n C h a t 
 	 	 g r o w l   o f   ( t h e B u d d y ' s   n a m e   &   "   w o u l d   l i k e   y o u   t o   s e e   t h e i r   s c r e e n . " )   f r o m   t h e B u d d y   f o r   " R e c e i v e d   R e m o t e   S c r e e n   S h a r i n g   I n v i t a t i o n " 
 	 	 i f   " r e m o t e   s c r e e n   s h a r i n g "   i s   i n   a u t o A c c e p t   t h e n   a c c e p t   s c r e e n C h a t 
 	 e n d   r e c e i v e d   r e m o t e   s c r e e n   s h a r i n g   i n v i t a t i o n 
 	� ��� i   8 ;��� I     �g�f�e
�g .ichthe09null���     icaa�f  �e  � I    �d���d 	0 growl  � m     �� ���   A / V   C h a t   S t a r t e d� �c��
�c 
from� m    �b
�b 
null� �a��
�a 
for � m    �� ���   A / V   C h a t   S t a r t e d� �`��_
�` 
stat� m    �^
�^ boovfals�_  � ��� i   < ?��� I     �]�\�[
�] .ichthe13null���     icaa�\  �[  � I    �Z���Z 	0 growl  � m     �� ���  A / V   C h a t   E n d e d� �Y��
�Y 
from� m    �X
�X 
null� �W��
�W 
for � m    �� ���  A / V   C h a t   E n d e d� �V��U
�V 
stat� m    �T
�T boovfals�U  � ��� i   @ C��� I     �S��R
�S .ichthe10null���     tnfr� o      �Q�Q 0 filetransfer fileTransfer�R  � k     #�� ��� I    �P���P 	0 growl  � l    ��O�N� n    ��� 1    �M
�M 
pnam� o     �L�L 0 filetransfer fileTransfer�O  �N  � �K��
�K 
from� n   ��� m    �J
�J 
pres� o    �I�I 0 filetransfer fileTransfer� �H��
�H 
for � m    	�� ��� B R e c e i v e d   F i l e   T r a n s f e r   I n v i t a t i o n� �G��F
�G 
stat� m   
 �E
�E boovfals�F  � ��D� Z   #���C�B� E   ��� o    �A�A 0 
autoaccept 
autoAccept� m    �� ���  f i l e   t r a n s f e r� I   �@��?
�@ .ichtacptnull���     ****� o    �>�> 0 filetransfer fileTransfer�?  �C  �B  �D  � ��� i   D G��� I     �=��<
�= .ichthe11null���     tnfr� o      �;�; 0 filetransfer fileTransfer�<  � I    �:���: 	0 growl  � l    ��9�8� n    ��� 1    �7
�7 
pnam� o     �6�6 0 filetransfer fileTransfer�9  �8  � �5��
�5 
from� n   � � m    �4
�4 
pres  o    �3�3 0 filetransfer fileTransfer� �2
�2 
for  m    	 � . C o m p l e t e d   F i l e   T r a n s f e r �1�0
�1 
stat m   
 �/
�/ boovfals�0  � �. l     �-�,�+�-  �,  �+  �.   $�                                                                                  fez!  alis    6  System                     �S�H+   j�	iChat.app                                                       
��0��        ����  	                Applications    �R�      �0s�     j�  System:Applications: iChat.app   	 i C h a t . a p p    S y s t e m  Applications/iChat.app  / ��  ��       �*	
�*   �)�(�'�&�%�$�#�"�!� ���������) 0 
autoaccept 
autoAccept�( 	0 growl  
�' .ichthe00null��� ��� null
�& .ichthe01null��� ��� null
�% .ichthe02null���     pres
�$ .ichthe03null���     pres
�# .ichthe14null���     barq
�" .ichthe12null���     ctxt
�! .ichthe04null���     ctxt
�  .ichthe05null���     ctxt
� .ichthe06null���     ctxt
� .ichthe07null��� ��� null
� .ichthe08null��� ��� null
� .ichthe15null��� ��� null
� .ichthe09null���     icaa
� .ichthe13null���     icaa
� .ichthe10null���     tnfr
� .ichthe11null���     tnfr ���  �  	 � +���� 	0 growl  � 0 thetext theText� ��
� 
from� 0 thebuddy theBuddy ��
� 
for � 0 theevent theEvent ���
� 
stat� 0 
showstatus 
showStatus�   �
�	��������� ���
 0 thetext theText�	 0 thebuddy theBuddy� 0 theevent theEvent� 0 
showstatus 
showStatus� 0 	buddyname 	buddyName� 0 	buddyicon 	buddyIcon� 0 thetitle theTitle�  0 thedescription theDescription� 0 frontapp frontApp� 0 
windowname 
windowName�  ,0 allnotificationslist allNotificationsList�� 40 enablednotificationslist enabledNotificationsList :���������� i�� ����� � ���������������p � � � � � �  $(+����G������N����������_������k����
�� 
null
�� 
msng
�� 
pnam
�� 
imaA
�� 
smsg
�� 
bool
�� 
pcap  
�� 
pisf
�� 
cwin
�� 
spac
�� 
cha �� 
�� kfrmID  ��  ��  �� 
�� 
appl
�� 
anot
�� 
dnot
�� 
iapp�� 
�� .registernull��� ��� null
�� 
name
�� 
titl
�� 
desc
�� 
stck�� 

�� .notifygrnull��� ��� null
�� 
imag�� �a��  �E�O�E�O�E�Y ���,E�O��,E�O�	 	��,��& �E�O��,E�Y 	�E�O�E�O i� *�k/�,�[�,\Ze81E�UO��  H� 
*�k/�,E�UO���%)�a a 0%�% hY hO��)�a a 0%�%�% hY hY hW X  hOa  �a a a a a a a a a a a a  a !a "a #a $a %a &a 'vE�O�E�O*a (a )a *�a +�a ,a -a . /O��  "*a 0�a 1�a 2�a (a 3a 4fa 5 6Y #*a 0�a 1�a 2�a (a 7a 8�a 4fa 9 6UOP
 ��w���� ��
�� .ichthe00null��� ��� null��  �� ������
�� 
heac�� 0 
theservice 
theService��   ���� 0 
theservice 
theService  	����������������
�� 
pnam
�� 
from
�� 
null
�� 
for 
�� 
stat�� �� 	0 growl  �� ��,�%�����f�  �������!"��
�� .ichthe01null��� ��� null��  �� ������
�� 
heac�� 0 
theservice 
theService��  ! ���� 0 
theservice 
theService" 	����������������
�� 
pnam
�� 
from
�� 
null
�� 
for 
�� 
stat�� �� 	0 growl  �� ��,�%�����f�  �������#$��
�� .ichthe02null���     pres�� 0 thebuddy theBuddy��  # ���� 0 thebuddy theBuddy$ ��������������
�� 
pnam
�� 
from
�� 
for 
�� 
stat�� �� 	0 growl  �� ��,�%����e�  �������%&��
�� .ichthe03null���     pres�� 0 thebuddy theBuddy��  % ���� 0 thebuddy theBuddy& ��������������
�� 
pnam
�� 
from
�� 
for 
�� 
stat�� �� 	0 growl  �� ��,�%����e�  �������'(��
�� .ichthe14null���     barq�� 0 
therequest 
theRequest��  ' ������ 0 
therequest 
theRequest�� 0 thebuddy theBuddy( �������������������
�� 
pres
�� 
pnam
�� 
from
�� 
for 
�� 
stat�� �� 	0 growl  
�� .ichtacptnull���     ****�� *��,E�O��,�%����f� Ob   � 
�j 
Y h �������)*��
�� .ichthe12null���     ctxt�� 0 message  �� ����+
�� 
hepr�� 0 thebuddy theBuddy+ ������
�� 
hect�� 0 textchat textChat��  ) �������� 0 message  �� 0 thebuddy theBuddy�� 0 textchat textChat* ����������
�� 
from
�� 
for 
�� 
stat�� �� 	0 growl  �� �����f�  ������,-��
�� .ichthe04null���     ctxt�� 0 message  �� ����.
�� 
hepr�� 0 thebuddy theBuddy. ������
�� 
hect�� 0 textchat textChat��  , �������� 0 message  �� 0 thebuddy theBuddy�� 0 textchat textChat- ������~�}
�� 
from
�� 
for 
� 
stat�~ �} 	0 growl  �� �����f�  �|�{�z/0�y
�| .ichthe05null���     ctxt�{ 0 message  �z �x�w�v
�x 
hect�w 0 textchat textChat�v  / �u�t�u 0 message  �t 0 textchat textChat0 �s�r�q)�p�o�n
�s 
from
�r 
null
�q 
for 
�p 
stat�o �n 	0 growl  �y ������f�  �m/�l�k12�j
�m .ichthe06null���     ctxt�l 0 message  �k �i�h3
�i 
hepr�h 0 thebuddy theBuddy3 �g�f�e
�g 
hect�f 0 textchat textChat�e  1 �d�c�b�d 0 message  �c 0 thebuddy theBuddy�b 0 textchat textChat2 �a�`>�_�^�]F�\
�a 
from
�` 
for 
�_ 
stat�^ �] 	0 growl  
�\ .ichtacptnull���     ****�j  �����f� Ob   � 
�j Y h �[L�Z�Y45�X
�[ .ichthe07null��� ��� null�Z  �Y �W�V6
�W 
hepr�V 0 thebuddy theBuddy6 �U�T�S
�U 
hect�T 0 	audiochat 	audioChat�S  4 �R�Q�R 0 thebuddy theBuddy�Q 0 	audiochat 	audioChat5 
�P[�O�Na�M�L�Ki�J
�P 
pnam
�O 
from
�N 
for 
�M 
stat�L �K 	0 growl  
�J .ichtacptnull���     ****�X $��,�%����f� Ob   � 
�j 	Y h �Io�H�G78�F
�I .ichthe08null��� ��� null�H  �G �E�D9
�E 
hepr�D 0 thebuddy theBuddy9 �C�B�A
�C 
hect�B 0 	videochat 	videoChat�A  7 �@�?�@ 0 thebuddy theBuddy�? 0 	videochat 	videoChat8 
�>~�=�<��;�:�9��8
�> 
pnam
�= 
from
�< 
for 
�; 
stat�: �9 	0 growl  
�8 .ichtacptnull���     ****�F $��,�%����f� Ob   � 
�j 	Y h �7��6�5:;�4
�7 .ichthe15null��� ��� null�6  �5 �3�2<
�3 
hepr�2 0 thebuddy theBuddy< �1�0�/
�1 
hect�0 0 
screenchat 
screenChat�/  : �.�-�. 0 thebuddy theBuddy�- 0 
screenchat 
screenChat; 
�,��+�*��)�(�'��&
�, 
pnam
�+ 
from
�* 
for 
�) 
stat�( �' 	0 growl  
�& .ichtacptnull���     ****�4 $��,�%����f� Ob   � 
�j 	Y h �%��$�#=>�"
�% .ichthe09null���     icaa�$  �#  =  > ��!� �����
�! 
from
�  
null
� 
for 
� 
stat� � 	0 growl  �" ������f�  ����?@�
� .ichthe13null���     icaa�  �  ?  @ ��������
� 
from
� 
null
� 
for 
� 
stat� � 	0 growl  � ������f�  ����AB�
� .ichthe10null���     tnfr� 0 filetransfer fileTransfer�  A �� 0 filetransfer fileTransferB 
���
�	������
� 
pnam
� 
from
�
 
pres
�	 
for 
� 
stat� � 	0 growl  
� .ichtacptnull���     ****� $��,��,���f� Ob   � 
�j 	Y h ����CD�
� .ichthe11null���     tnfr� 0 filetransfer fileTransfer�  C � �  0 filetransfer fileTransferD ��������������
�� 
pnam
�� 
from
�� 
pres
�� 
for 
�� 
stat�� �� 	0 growl  � ��,��,���f�  ascr  ��ޭ
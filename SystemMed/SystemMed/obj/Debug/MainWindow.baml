   M S B A M L   `   `   `  ����D  @SystemMed, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:SystemMed	SystemMed  5   	       SystemMed.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:SystemMed     5   	   V RMaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5
   	   -   5          �Name$  MainForm��5   	    � 
ResizeMode$ NoResize=�5
   R    � Title$6 0Система медицинской карты��6h   $	��600��6�   $
��1024��6�    � WindowStartupLocation$ CenterScreen=�6�    � 	Resources 5         OpenMenu �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value  	CloseMenu��%o  &	        &	 �    �� 5   
   .��5      U� $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�6,   $ GridMain��6�   .\�5        $ 0��6'   $ 0Q�63     5      $ 0:0:0.5��6'   $	 250Q�69   5      U� 5      $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.Y)�6,   $ GridMain��6�   .\�5        $ 0��6'   $ 0Q�63     5      $ 0:0:0.5��6'   $ 50Q�69   5      U� 5      $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�6,   $ StackPanelMenu��6�   .\�5        $ 0��6'   $ 0Q�63     5      $ 0:0:0.5��6'   $	 250Q�69   5      U� 5      $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�6,   $ listViewItem��6�   .\�5        $ 0��6'   $
 -250Q�63     5      $ 0:0:0.5��6'   $
 -250Q�69     5      $ 0:0:0.7��6'   $ 0Q�69   5      U� 5      $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�6,   $ listViewItem1��6�   .\�5        $ 0��6'   $
 -250Q�63     5       $ 0:0:0.5��6'   $
 -250Q�69     5!      $ 0:0:0.9��6'   $ 0Q�69   5"      U� 5#      $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�6,   $ listViewItem2��6�   .\�5$        $ 0��6'   $
 -250Q�63     5%      $ 0:0:0.5��6'   $
 -250Q�69     5&      $ 0:0:1.1��6'   $ 0Q�69   5'      U� 5(      $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�6,   $ listViewItem3��6�   .\�5)        $ 0��6'   $
 -250Q�63     5*      $ 0:0:0.5��6'   $
 -250Q�69     5+      $ 0:0:1.3��6'   $ 0Q�69   5,      U� 5-      $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�6,   $ listViewItem4��6�   .\�5.        $ 0��6'   $
 -250Q�63     5/      $ 0:0:0.5��6'   $
 -250Q�69     50      $ 0:0:1.5��6'   $ 0Q�69   51      U� 52      $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�6,   $ listViewItem5��6�   .\�53        $ 0��6'   $
 -250Q�63     54      $ 0:0:0.5��6'   $
 -250Q�69     55      $ 0:0:1.7��6'   $ 0Q�69   56      U� 57      $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�6,   $ listViewItem6��6�   .\�58        $ 0��6'   $
 -250Q�63     59      $ 0:0:0.5��6'   $
 -250Q�69     5:      $ 0:0:1.9��6'   $ 0Q�69   5;      U� 5<      $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�6,   $ listViewItem7��6�   .\�5=        $ 0��6'   $
 -250Q�63     5>      $ 0:0:0.5��6'   $
 -250Q�69     5?      $ 0:0:1.3��6'   $ 0Q�69   5@      U� 5A      $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6,   $ button��6�   .\�5B        $ 0��6'   $ 0Q�63     5C      $ 0:0:0.5��6'   $ 0Q�69     5D      $ 0:0:1.5��6'   $ 1Q�69   5E      U� 5F      $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6,   $ button��6�   .\�5G        $ 0��6'   $ 0Q�63     5H      $ 0:0:0.5��6'   $ 0Q�69     5I      $ 0:0:1.5��6'   $ 1Q�69   5J      5K      �� 5L   
   .��5M      U� $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�6,   $ GridMain��6�   .\�5N        $ 0��6'   $	 250Q�63     5O      $ 0:0:0.5��6'   $ 0Q�69   5P      U� 5Q      $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.Y)�6,   $ GridMain��6�   .\�5R        $ 0��6'   $ 50Q�63     5S      $ 0:0:0.5��6'   $ 0Q�69   5T      U� 5U      $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�6,   $ StackPanelMenu��6�   .\�5V        $ 0��6'   $	 250Q�63     5W      $ 0:0:0.5��6'   $ 0Q�69   5X      5Y      5Z      	 � Triggers	 5[      :� 5\   
   
 :� RoutedEvent$
 ButtonBase.Click��6    :� 
SourceName$ ButtonOpenMenu��66   .[�5]      �� #��[  6   5^      :� 5_   
   $
 ButtonBase.Click��6   $ ButtonCloseMenu��66   .[�5`      �� -   5         ��Name$ CloseMenu_BeginStoryboard��5`      #��[ 6A   5a      .��5c      � ��5e   
   �� 5f       �� EndPoint$ 0.5,1&�6"    �� 
StartPoint$ 0.5,0&�63   .��5g      �  � Color$ 	#FF019BFF��6    � Offset$ 1Q�61   � 5h      $ 	#CCEA4646��6   � 5i      $ #cb0990��6   $ 0.566Q�6/   5j      .+�5l   
   �� -   5         ��Name$ StackPanelMenu��5l      $	��250��6-   $
��Left=�69   $��
-250 0 0 0q�6T    J� RenderTransformOrigin$ 0.5,0.5&�6h   z�5m      V� 5n      .~�5o      �� �� 5p      �� 5q      T� 5r      5s      .+�5u      �� $��38��6   $��20,10,-766.4,0q�6&   .+�5v      �� $6��0СИСТЕМА МЕДИЦИНСКОЙ КАРТЫ��6   $��0q�6?   $��MADE Evolve Sans EVO)�6J   $
��Bold"�6l   ���	#FFFBFBFB$��30(�6�   $��Center=�6�   5x      �� 5y       �� Orientation$ 
Horizontal=�6   $	��Top=�62   $	��100��6J   $��Center=�6W   .+�5z      �� $y�Hidden=�6   
������� 0 ,MaterialDesignFloatingActionMiniAccentButton#��[ 6@   $��0q�6�   $��50��6�   $��50��6�   $��10q�6�   ��6�   Z� ��6�   Z� .��5{      '  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=null]]   Kind$ Settings=�6.   $��40��6>   $��40��6I   5|      �� 5}      -   5         ��Name$ button��5}      #��[ 6)   $��0q�6�   $��80��6�   $��80��6�   $��10q�6�   $ 0.5,0.5&�6�   ��6o   Z� z�5~      V� 5      .~�5�      �� �� 5�      �� 5�      T� 5�      5�      ��5�      �� 5�       �� ImageSource$ Picture/labl.png��6%    j� Stretch$ UniformToFill=�6D   5�      �� 5�      
�������#��[ 6,   $��0q�6�   $��50��6�   $��50��6�   $��10q�6�   ��6r   Z� ��6�   Z� .��5�        $ InformationOutline=�6.   $��40��6H   $��40��6S   5�      5�      �� 5�      .@�5�      �� -   5         ��Name$ listViewItem��5�      $��60��65   $ 0.5,0.5&�6A   z�5�      V� 5�      .~�5�      �� �� 5�      �� 5�      T� 5�      5�      .��5�      �� $ 
Horizontal=�6!   $
��10 0q�6:   .+�5�        $
 Home=�62   
�������$��30��6Q   $��30��6\   $��Center=�6h   $��5q�6�   �� 5�      $��Главная��6$   
�������$��10q�6F   $��Center=�6R   5�      5�      �� 5�      -   5        $ listViewItem1��5�      $��60��66   $ 0.5,0.5&�6B   z�5�      V� 5�      .~�5�      �� �� 5�      �� 5�      T� 5�      5�      .��5�      �� $ 
Horizontal=�6"   $
��10 0q�6;   .+�5�        $ AccountSearch=�62   
�������$��30��6Z   $��30��6e   $��Center=�6q   $��5q�6�   �� 5�      -   5         ��Name$ menuItemConsultationList1��5�   $   
�������$+��%Список консультаций��6Z   $��10q�6u   $��Center=�6�   6�   5�      5�      �� 5�      -   5        $ listViewItem2��5�      $��60��66   $ 0.5,0.5&�6B   z�5�      V� 5�      .~�5�      �� �� 5�      �� 5�      T� 5�      5�      .��5�      �� $ 
Horizontal=�6!   $
��10 0q�6:   .+�5�        $ Magnify=�62   
�������$��30��6T   $��30��6_   $��Center=�6k   $��5q�6�   �� 5�      -	   5        $ menuItemDiagnosesList1��5�   $   
�������$%��Список диагнозов��6W   $��10q�6o   $��Center=�6�   5�      5�      �� 5�      -
   5        $ listViewItem3��5�      $��60��66   $ 0.5,0.5&�6B   z�5�      V� 5�      .~�5�      �� �� 5�      �� 5�      T� 5�      5�      .��5�      �� -   5        $ menuItemDoctorsList1��5�   !   $ 
Horizontal=�6?   $
��10 0q�6X   .+�5�        $ 
MedicalBag=�62   
�������$��30��6W   $��30��6b   $��Center=�6n   $��5q�6�   �� 5�      -   5        $��Список врачей��5�   $   
�������$��10q�6L   $��Center=�6X   6s   5�      5�      �� 5�      -   5        $ listViewItem7��5�      $��60��66   $ 0.5,0.5&�6B   z�5�      V� 5�      .~�5�      �� �� 5�      �� 5�      T� 5�      5�      .��5�      �� -   5        $ menuItemPatientList��5�   !   $ 
Horizontal=�6>   $
��10 0q�6W   .+�5�        $ AccountSearch=�62   
�������$��30��6Z   $��30��6e   $��Center=�6q   $��5q�6�   �� 5�      -   5        $%��Список пациентов��5�   $   
�������$��10q�6O   $��Center=�6[   6v   5�      5�      �� 5�      -   5        $ listViewItem4��5�      $��60��66   $ 0.5,0.5&�6B   z�5�      V� 5�      .~�5�      �� �� 5�      �� 5�      T� 5�      5�      .��5�      �� $ 
Horizontal=�6!   $
��10 0q�6:   .+�5�        $ NewBox=�62   
�������$��30��6S   $��30��6^   $��Center=�6j   $��5q�6�   �� 5�      -   5        $ menuItemUserRegistration1��5�   $   
�������$!��Новая карточка��6Z   $��10q�6p   $��Center=�6|   6�   5�      5�      �� 5�      -   5        $ listViewItem5��5�      $��60��66   $ 0.5,0.5&�6B   z�5�      V� 5�      .~�5�      �� �� 5�      �� 5�      T� 5�      5�      .��5�      �� $ 
Horizontal=�6!   $
��10 0q�6:   .+�5�        $ 	ExitToApp=�62   
�������$��30��6V   $��30��6a   $��Center=�6m   $��5q�6�   �� 5�      -   5        $/��)Войти/выйти с карточки��5�   $   
�������$��10q�6U   $��Center=�6a   6|   5�      5�      �� 5�      -   5        $ listViewItem6��5�      $��60��66   $ 0.5,0.5&�6B   z�5�      V� 5�      .~�5      �� �� 5     �� 5     T� 5     5     .��5     �� $ 
Horizontal=�6!   $
��10 0q�6:   .+�5       $ Power=�62   
�������$��30��6R   $��30��6]   $��Center=�6i   $��5q�6�   �� 5     -   5        $&�� Выйти с программы��5  %   
�������$��10q�6Q   $��Center=�6|   5	     5
     5     5     � 5  
   -   5         �Name$ GridMain��5     ���	#FFFBFBFB$
��1024��68   $ 
0.598,0.44&�6E   z�5     V� 5     .~�5     �� �� 5     �� 5     T� 5     5      � ColumnDefinitions 5     �� 5     $��* �6#   �� 5     $	��250 �6#   .+�5     7  1MaterialDesignThemes.Wpf.Transitions.Transitioner   �� SelectedIndex$ 0��5     !   AutoApplyTransitionOrigins . $��0,0,0.4,37.4q�5   %   .@�5#     <  6MaterialDesignThemes.Wpf.Transitions.TransitionerSlide  -   5          Name$ TransitionerSlide��5#  3   C  =MaterialDesignThemes.Wpf.Transitions.TransitioningContentBase   OpeningEffect 5$     D  >MaterialDesignThemes.Wpf.Transitions.TransitionEffectExtension  *FadeIn+.��5%     E'clr-namespace:SystemMed.TransitionsDemoSystemMed.TransitionsDemo  6)   ,   &SystemMed.TransitionsDemo.Slide1_Intro  6   3local'clr-namespace:SystemMed.TransitionsDemo  6)   $��0,0,0.4,-0.2q�6_   5&     E'clr-namespace:SystemMed.TransitionsDemoSystemMed.TransitionsDemo  5(  %   ,	   &SystemMed.TransitionsDemo.Slide2_Intro	  6   3local'clr-namespace:SystemMed.TransitionsDemo  6%     5*         BackwardWipe  5+     5
  /MaterialDesignThemes.Wpf.Transitions.CircleWipe
  5,     !   ForwardWipe! 5.     4  .MaterialDesignThemes.Wpf.Transitions.SlideWipe  5/     "   	Direction$" Right=�50  	   .��52     E'clr-namespace:SystemMed.TransitionsDemoSystemMed.TransitionsDemo  6)   ,   &SystemMed.TransitionsDemo.Slide3_Intro  6   3local'clr-namespace:SystemMed.TransitionsDemo  6)   53       55        MaterialDesignDarkBackground#���  56        MaterialDesignDarkForeground#���  57     }�. #   OpeningEffects# 59     ;  5MaterialDesignThemes.Wpf.Transitions.TransitionEffect  5:     $   Kind$$ SlideInFromLeft=�5;  	   %   Duration$% 0:0:0.8h�5<  	     5=     $$ SlideInFromBottom=�5>  	   $% 0:0:0.8h�5?  	   &   
OffsetTime$& 0:0:0.15h�5@  	   .��5B     E'clr-namespace:SystemMed.TransitionsDemoSystemMed.TransitionsDemo  66   9   3SystemMed.TransitionsDemo.Slide4_CombineTransitions  6   3local'clr-namespace:SystemMed.TransitionsDemo  66   5C     E'clr-namespace:SystemMed.TransitionsDemoSystemMed.TransitionsDemo  5F  $   +   %SystemMed.TransitionsDemo.Slide7_MVVM  6   3local'clr-namespace:SystemMed.TransitionsDemo  6$   5G     o� 5J     $��94��6   $��43,0,0,0q�6   $	��Top=�61   $��2��6I   $
��Left=�6]   $	��811��6x   
������ .@�5K     m� -   5        ' m�Name$' menuItemFile��5K  *   $��
Файлы��6   $��41��6B   $	��127��6N   .@�5L     m� -   5        $' menuItemExit��5L  /   $��
Выход��6    $
��Left=�6E   $��47��6`   $	��139��6l   
�������6�   5M     m� 5N     -   5        $' menuItemConsultations��5N     $��Осмотры��6:   $��41��6K   $	��161��6W   .@�5O     m� -   5        $' menuItemConsultationList��5O     $#��Список осмотров��6A   $
��Left=�6Z   $��47��6u   $	��223��6�   $��
0,0,-2.2,0q�6�   
�������6�   m� 5P     -   5        $' menuItemNewConsultation��5P     $?��9Зарегестрировать новый осмотр
��6@   $��37��6l   $��0,0,-45.2,0q�6x   
�������6�   5Q     m� 5R     -   5        $' menuItemDiagnoses��5R     $��Диагнозы��66   $��41��6H   $	��171��6T   .@�5S     m� -   5        $' menuItemDiagnosesList��5S     $%��Список диагнозов��6>   $��47��6X   $
��Left=�6d   $	��274��6   $��
0,0,-3.6,0q�6�   
�������6�   m� 5T     -   5        $' menuItemNewDiagnose��5T     $@��:Зарегестрировать новый диагноз��6<   $��43��6d   $
��Left=�6p   $	��270��6�   
�������6�   5U     m� 5V     -    5        $' menuItemDoctors��5V     $��
Врачи��64   $��47��6C   $	��115��6O   .@�5W     m� -!   5        $' menuItemDoctorsList��5W     $!��Список врачей
	��6<   $��47��6]   $��0,0,-28.8,0q�6i   $
��Left=�6~   $	��168��6�   
�������6�   m� 5X     -"   5        $' menuItemNewDoctor��5X     $��Новый врач��6:   $
��Left=�6N   $��51��6i   $	��153��6u   $��0,0,-13.8,0q�6�   
�������6�   5Y     m� 5Z     -#   5        $' menuItemUser��5Z     $��Пользователь��61   $��42��6G   $	��232��6S   .@�5[     m� -$   5        $' menuItemUserProfile��5[     $��Мой профиль��6<   $��47��6Q   $��
0,0,-3.8,0q�6]   
�������.@�5\     m� -%   5        $' menuItemCurrentDoctor��5\  #   $��Врач - depr��6B   $
��Left=�6W   $��47��6r   $	��155��6~   $��0,0,-15.8,0q�6�   6�   m� 5]     -&   5        $' menuItemCurrentPatient��5]  #   $��Пациент��6C   $
��Left=�6T   $��51��6o   $	��139��6{   
�������6�   m� 5^     -'   5        $' userToolStripMenuItem��5^  #   $��Пользователь��6B   $
��Left=�6X   $��45��6s   $	��168��6   $��0,0,-28.8,0q�6�   
�������6�   5_     m� 5`     -(   5        $' menuItemUserRegistration��5`     $��Регистрация��6A   $
��Left=�6V   $��44��6q   $	��158��6}   $��0,0,-18.8,0q�6�   
�������6�   m� 5a     -)   5        $' menuItemLogin��5a     $��
Войти��66   $
��Left=�6E   $��51��6`   $	��139��6l   
�������6�   5b     m� 5c     -*   5        $' menuItemAdmin��5c     $��Админ - deprecared��62   $��47��6N   $	��268��6Z   .@�5d     m� -+   5        $' menuItemUsersList��5d     $��Пользователи��6:   $
��Left=�6P   $��47��6k   $	��174��6w   $��0,0,-34.8,0q�6�   5e     m� 5f     -,   5        $' menuItemPatients��5f     $��Пациент��65   $��31��6F   $	��230��6R   $y�	Collapsed=�6^   .@�5g     m� --   5        $' menuItemPatientsList��5g     $��пациент лист��6=   $
��Left=�6S   $��54��6n   $	��172��6z   $��0,0,-32.8,0q�6�   6�   m� 5h     -.   5        $' menuItemNewPatient��5h     $6��0Нов пациент                           ��6;   $
��Left=�6k   $��44��6�   $	��166��6�   $��0,0,-26.8,0q�6�   6�   5i     5j     �� 5k     -/   5        ( ��Name$( Kardoc��5k     $1��+Picture/Provider-Credentialing-Services.jpg��6$   $��-349,0,-110,-141.6q�6Z   $ 0.5,0.5&�6v   $��2��6�   z�5l     V� 5m     .~�5n     �� ) �� ScaleX$) -1Q�6)   �� 5o     �� 5p     T� 5q     5r     5t     �� 5u     -0   5        $( Karadm��5u     $��Picture/admin.jpg��6$   $��-380,0,-374,-141.6q�6@   $ 0.5,0.5&�6\   $��2��6|   �� 5v     $��0,0,182,0.4q�6   ���	#FF019BFF$��34��6D   $��Bottom=�6P   $��2��6k   .@�5w     �� -1   5        * ��Name$* labelStatusUser��5w  3   
�������$��Пользователь:��6L   $��34��6d   $	��Top=�6p   $��
0,0,0,-0.4q�6�   $��86��6�   �� 5x     -2   5        $* labelStatusLoggedUser��5x  3   
�������$��Анонимен��6R   $��34��6e   $��Bottom=�6q   $��
0,0,0,-0.4q�6�   $	��496��6�   �� 5y     -3   5        $"* labelStatusNextConsultations��5y  3   
�������$"��Консультации (0)��6Y   $��
0,0,0,-0.4q�6t   $	��109��6�   $ 	0.5,0.506&�6�   $��34��6�   $��Bottom=�6�   6�   5z     �� 5|     -4   5        $! labelStatusLoggedUserAnanim��5|     $��MADE Evolve Sans EVO)�6>   $��40(�6b   $
��Bold"�6p   $��33,52,216,432.4q�6�   $��2��6�   ��5}     �� 5~     .��5     � $ 	#CCEA4646��6'   $ 1Q�69   � 5�     $ 	#FF019BFF��6'   � 5�     $ #cb0990��6'   $ 0.566Q�67   5�     5�  *   �� 5�     -5   5        $" labelStatusLoggedUserPatient��5�     $��MADE Evolve Sans EVO)�6?   $��40(�6c   $
��Bold"�6q   $��33,52,216,432.4q�6�   $��2��6�   ��5�     �� 5�     .��5�     � $ 	#CCEA4646��6'   $ 1Q�69   � 5�     $ 	#FF019BFF��6'   � 5�     $ #cb0990��6'   $ 0.566Q�67   5�     5�  *   �� 5�     -6   5        $ buttonNewConsultaton��5�      & "MaterialDesignFloatingActionButton#��[ 5�     3  -MaterialDesignThemes.Wpf.ButtonProgressAssist+   IsIndicatorVisible+ . ,   IndicatorForeground
, ����-   Value$- -1Q�5�     .   IsIndeterminate. . $��173,308,433.4,0q�5�     
�������$	��172��6>   $
��Auto��6K   $	��Top=�6X   .��5�     � $	��419��6   $��65��6#   .+�5�     �� $
��Wrap=�6    $
��Bold"�64   $��MADE Evolve Sans EVO)�6F   $��18(�6h   $��
4,21,228,7q�6x   ��5�     �� 5�     .��5�  "   � $ 	#CCEA4646��6/   $ 1Q�6A   � 5�  "   $ 	#FF019BFF��6/   � 5�  "   $ #cb0990��6/   $ 0.566Q�6?   5�     +)ДОБАВИТЬ КОНСУЛЬТАЦИЮ5�       5�     $ EyePlus =�6.   $��Center=�6>   $��Bottom=�6[   
���   �$	��150��6�   $��56��6�   $��46,-9,223,18q�6�   ��5�     �� 5�     .��5�  "   � $ 	#CCEA4646��6/   $ 1Q�6A   � 5�  "   $ 	#FF019BFF��6/   � 5�  "   $ #cb0990��6/   $ 0.566Q�6?   5�     5�     5�     5�     �� 5�     $y�	Collapsed=�6   $@��:Зарегестрировать новый
 осмотр��6,   $��
10,131,0,0q�6^   $	��Top=�6r   $��93��6�   $
��Left=�6�   $	��198��6�   ��5�     �� 5�     $ 0.5,1&�6*   $ 0.5,0&�6;   .��5�     � $ 	#FF019BFF��6'   $ 1Q�69   � 5�     $ 	#CCEA4646��6'   � 5�     $ #cb0990��6'   $ 0.566Q�67   5�     5�     �� 5�     -7   5        $ buttonNewDiagnose��5�     #��[ 5�     + . 
, ����$- -1Q�5�     . . $��470,308,136.4,0q�5�     
�������$	��172��6A   $
��Auto��6N   $	��Top=�6[   .��5�     � $	��419��6   $��65��6#   .+�5�     �� $
��Wrap=�6    $��MADE Evolve Sans EVO)�64   $��18(�6V   $
��Bold"�6d   $��10,16,272,11q�6w   ��5�     �� 5�     .��5�  "   � $ 	#CCEA4646��6/   $ 1Q�6A   � 5�  "   $ 	#FF019BFF��6/   � 5�  "   $ #cb0990��6/   $ 0.566Q�6?   5�     !ДОБАВИТЬ ДИАГНОЗ5�       5�     $ CommentPlusOutline =�6.   $��Center=�6I   $��Bottom=�6f   
���   �$	��150��6�   $��56��6�   $��59,-4,210,13q�6�   ��5�     �� 5�     .��5�  "   � $ 	#CCEA4646��6/   $ 1Q�6A   � 5�  "   $ 	#FF019BFF��6/   � 5�  "   $ #cb0990��6/   $ 0.566Q�6?   5�     5�     5�     5�     �� 5�     -8   5        $ buttonNewPatient��5�     #��[ 5�     + . $- -1Q�5�     . . $��204,313,402.4,0q�5�     
�������$	��172��6A   $
��Auto��6N   $	��Top=�6[   .��5�     � $	��419��6   $��65��6#   .+�5�     �� $
��Wrap=�6    $��MADE Evolve Sans EVO)�64   $��18(�6V   $
��Bold"�6d   $��10,16,272,11q�6w   ��5�     �� 5�     .��5�  "   � $ 	#CCEA4646��6/   $ 1Q�6A   � 5�  "   $ 	#FF019BFF��6/   � 5�  "   $ #cb0990��6/   $ 0.566Q�6?   5�     НОВАЯ КАРТОЧКА5�       5�     $ AccountCardDetails=�6.   $��Center=�6H   $��Bottom=�6e   
���   �$	��150��6�   $��56��6�   $��56,-2,213,11q�6�   ��5�     �� 5�     .��5�  "   � $ 	#CCEA4646��6/   $ 1Q�6A   � 5�  "   $ 	#FF019BFF��6/   � 5�  "   $ #cb0990��6/   $ 0.566Q�6?   5�     5�     5�     5�     �� 5�     -9   5        $ buttonSpisPatient��5�     #��[ 5�     + . $- -1Q�5�     . . $��543,313,63.4,0q�5      
�������$	��172��6@   $
��Auto��6M   $	��Top=�6Z   .��5     � $	��419��6   $��65��6#   .+�5     �� $
��Wrap=�6    $��MADE Evolve Sans EVO)�64   $��18(�6V   $
��Bold"�6d   $��10,16,272,11q�6w   ��5     �� 5     .��5  "   � $ 	#CCEA4646��6/   $ 1Q�6A   � 5  "   $ 	#FF019BFF��6/   � 5	  "   $ #cb0990��6/   $ 0.566Q�6?   5
     !СПИСОК ПАЦИЕНТОВ5       5     $ AccountSearch=�6.   $��Center=�6C   $��Bottom=�6`   
���   �$	��150��6�   $��56��6�   $��56,-2,213,11q�6�   ��5     �� 5     .��5  "   � $ 	#CCEA4646��6/   $ 1Q�6A   � 5  "   $ 	#FF019BFF��6/   � 5  "   $ #cb0990��6/   $ 0.566Q�6?   5     5     5     5     �� 5     -:   5        $ buttonNewDoc��5     #��[ 5     + . 
, ��d�$- -1Q�5     . . $��43,131,563.4,0q�5!     
�������$	��172��6@   $
��Auto��6M   $	��Top=�6Z   .��5#     � $	��419��6   $��65��6#   .+�5%     �� $
��Wrap=�6    $��MADE Evolve Sans EVO)�64   $��18(�6V   $
��Bold"�6d   $��10,16,272,11q�6w   ��5&     �� 5'     .��5(  "   � $ 	#CCEA4646��6/   $ 1Q�6A   � 5)  "   $ 	#FF019BFF��6/   � 5*  "   $ #cb0990��6/   $ 0.566Q�6?   5+     ДОБАВИТЬ ВРАЧА5.       5/     $ AccountPlusOutline =�6.   $��Center=�6I   $��Bottom=�6f   
���   �$	��150��6�   $��56��6�   $��59,-4,210,13q�6�   ��50     �� 51     .��52  "   � $ 	#CCEA4646��6/   $ 1Q�6A   � 53  "   $ 	#FF019BFF��6/   � 54  "   $ #cb0990��6/   $ 0.566Q�6?   55     57     58     5:     �� 5;     -;   5        $ buttonSpisDoc��5;     #��[ 5<     + . 
, ��d�$- -1Q�5?     . . $��370,131,236.4,0q�5A     
�������$	��172��6A   $
��Auto��6N   $	��Top=�6[   .��5C     � $	��419��6   $��65��6#   .+�5E     �� $
��Wrap=�6    $��MADE Evolve Sans EVO)�64   $��18(�6V   $
��Bold"�6d   $��10,16,272,11q�6w   ��5F     �� 5G     .��5H  "   � $ 	#CCEA4646��6/   $ 1Q�6A   � 5I  "   $ 	#FF019BFF��6/   � 5J  "   $ #cb0990��6/   $ 0.566Q�6?   5K     СПИСОК ВРАЧЕЙ5N       5O     $ LibraryBooks=�6.   $��Center=�6B   $��Bottom=�6_   
���   �$	��150��6�   $��56��6�   $��
49,0,220,9q�6�   ��5P     �� 5Q     .��5R  "   � $ 	#CCEA4646��6/   $ 1Q�6A   � 5S  "   $ 	#FF019BFF��6/   � 5T  "   $ #cb0990��6/   $ 0.566Q�6?   5U     5W     5X     5Z     �� 5[     -<   5        $ buttonDiagnoses��5[     $y�	Collapsed=�6.   $#��Поиск диагнозов��6E   $��95��6_   $��559,256,0,0q�6k   $	��Top=�6�   $
��Left=�6�   $	��152��6�   �� 5\     -=   5        $ buttonConsultations��5\     $y�	Collapsed=�62   $!��Поиск осмотров��6I   $��93��6b   $��559,138,0,0q�6n   $	��Top=�6�   $
��Left=�6�   $	��152��6�   � 5_     / � IsIndeterminate/ . $��0,0,0.4,34.4q�5`  (   $��3��6>   $��Bottom=�6I   � 5b     ->   5        $ GridbuttonCurrentPatient��5b     $��185,121,108.4,267.4q�65   .+�5e     �� -?   5        $ buttonCurrentPatient��5e     $��MADE Evolve Sans EVO)�68   ���#cb0990$��30(�6q   $��0,31,0,0q�6   $	��118��6�   $	��Top=�6�   $
��Left=�6�   $	��461��6�   .��5f     � $	��404��6   .+�5h     �� $
��Wrap=�6$   $��184,10,35,-10q�69   !ПРОФИЛЬ ПАЦИЕНТА5i  2     5j     $ AccountCardDetails=�62   $��Center=�6L   $��Bottom=�6i   
�������$	��211��6�   $��94��6�   $��-27,-2,220,0q�6�   5l     5n     5q     �� 5r     $��774,0,0,0.4q�6   0 �� RadiusY$0 15��6-   1 �� RadiusX$1 15��6:   $��2��6G   ��5s     �� 5t     $ 0.5,1&�6*   $ 0.5,0&�6;   .��5u     � $ 	#FF019BFF��6'   $ 1Q�69   � 5v     $ 	#CCEA4646��6'   � 5w     $ #cb0990��6'   $ 0.566Q�67   5x     5{     �� 5�     -@   5        $ 
buttonExit��5�       MaterialDesignFlatButton#��[ 6)   
�������$��
Выход��6n   $
��Left=�6~   $��32��6�   $��528,0,0,2.4q�6�   $	��127��6�   $��Bottom=�6�   � 5�     $��1��6   .+�5�     �� $��Picture/doc.jpg��6   $��UniformToFill=�61   $��
0,0,-0.4,0q�6I   $	��150��6]   $	��Top=�6j   A� 5�     $	��100��6   $	��100��6'   $	��Top=�63   $��Right=�6K   $��20 100q�6g   
���������5�     �� 5�     $ Picture/labl.png��6%   $ UniformToFill=�6D   5�     �� 5�     -A   5        2 ��Name$2 labelStatusLoggedUser1��5�  *   $��Аноним��6   
�������$��28(�6]   $��Nirmala UI Semilight)�6k   $��10 100q�6�   $	��Top=�6�   �� 5�     $
��Wrap=�6   $��MADE Evolve Sans EVO)�61   ���	#FFFBFBFB$
��Bold"�6j   $��30(�6|   $��1,277,8.6,239.4q�6�   �� 6�   $�МЕДИЦИНСКОЙ��6�   6�   �� 5�     $
��Wrap=�6   $��MADE Evolve Sans EVO)�61   $
��Bold"�6S   ���	#FFFBFBFB$��30(�6|   $��68,331,70.6,193.4q�6�   
КАРТЫ6�   �� 5�     $
��Wrap=�6   $��47,226,49.6,298.4q�60   $
��Bold"�6K   $��MADE Evolve Sans EVO)�6]   ���	#FFFBFBFB$��30(�6�   �� 6�   $�СИСТЕМА��6�   6�   5�     � 5�     3 � RowDefinitions3 5�     �� 5�     $��40 �6$   �� 5�     $��50 �6$   �� 5�     $��* �6$   �� 5�     $��* �6$   �� 5�     $��* �6$    5�     �� 5�     $��* �6'   �� 5�     $��* �6'   �� 5�     $��* �6'   .+�5�     �� -B   5        $ ButtonCloseMenu��5�     #��[ 62   $��30��6x   $��30��6�   $��0q�6�   $	��Top=�6�   $
��Left=�6�   $��5q�6�   $y�	Collapsed=�6$  ��6�   Z� ��6�   Z� .��5�       $
 Menu=�6.   ���	#FF3580BF6:   5�     �� 5�     -C   5        $ ButtonOpenMenu��5�     #��[ 61   $��30��6w   $��30��6�   $��0q�6�   $	��Top=�6�   $
��Left=�6�   $��5q�6�   ��6�   Z� ��6�   Z� .��5�       $
 Menu=�6.   ���	#FF3580BF6:   5�     �� 5�     $��ГЛАВНАЯ��6   $y�Hidden=�6+   $��MADE Evolve Sans EVO)�6?   $��40(�6c   $
��Bold"�6q   $��24,23,29.4,133.6q�6�   $��1��6�   $��2��6�   ��5�     �� 5�     .��5�     � $ 	#CCEA4646��6+   $ 1Q�6=   � 5�     $ 	#FF019BFF��6+   � 5�     $ #cb0990��6+   $ 0.566Q�6;   5�     5�  .   5�     5�     �� 5�  
   $ 
Horizontal=�6   $	��Top=�6.   $��40��6F   $��Right=�6R   $��10q�6n   .+�5�     �� -D   5        $y�	Collapsed=�5�     #��[ 6-   $��30��6s   $��30��6~   $��0q�6�   ��6�   Z� ��6�   Z� .��5�       $ 	SearchWeb=�6*   5�     �� 5�     -E   5        $ ButtonClose��5�     #��[ 6*   $��30��6p   $��30��6{   $��0q�6�   ��6�   Z� ��6�   Z� .��5�       $ Power=�6*   5�     5�     5�     5�     
   M S B A M L   `   `   `  ����D  @SystemMed, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:SystemMed.ViewSystemMed.View  5   	        SystemMed.View.DoctorsForm   5   
   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:SystemMed.View     5   	   V RMaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   
     � Title$  Список врачей��5	   	   $	��450��6   $	��916��6,    � 
ResizeMode$ NoResize=�68    � WindowStyle$
 None=�6N    � AllowsTransparency . 
������  � WindowStartupLocation$ CenterScreen=�6�   .��5
      � .+�5   
   ��  �� RadiusY$ 15��6    �� RadiusX$ 15��6!   
�������6.   �� 5   
   $��0,0,709,-0.4q�6   $ 15��6*   $ 15��67   ��5      �� 5       �� EndPoint$ 0.5,1&�6&    �� 
StartPoint$ 0.5,0&�67   .��5      � 	 � Color$	 	#FF019BFF��6#   
 � Offset$
 1Q�65   � 5      $	 	#CCEA4646��6#   � 5      $	 #cb0990��6#   $
 0.566Q�63   5      5      �� 5   
   -   5         ��Name$ ButtonClose��5       0  ,MaterialDesignFloatingActionMiniAccentButton#��[  6&   $��30��6l   $��30��6w   $��0q�6�   $��876,5,10,415q�6�   ��6�   Z� ��6�   Z� .��5      '  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=null]]   Kind$ Power=�6&   
���   �64   5      �� 5   
   $
��Left=�6   $	��357��60   $��4,10,0,0q�6=   $	��Top=�6O   $	��200��6g   .+�5      �� $ ��Поиск Доктора��6   $��Segoe UI Black)�61   $��24(�6M   $��10,5,0,5q�6[   $	��Top=�6m   $
��Left=�6�   
�������$��77��6�   $	��180��6�   �� 5      -   5        $ button��5      #��[  6%   $��0q�6�   $��80��6�   $��80��6�   $	��10 q�6�    J� RenderTransformOrigin$ 0.5,0.5&�6�   ��6k   Z� z�5      V� 5      .~�5      �� �� 5       �� 5!      T� 5"      5#      ��5%      �� 5&       �� ImageSource$ ../Picture/labl.png��6!    j� Stretch$ UniformToFill=�6D   5(      � 5)      $��10 30q�6   .+�5*        $ SecurityAccount=�6*   
�������$��30��6T   $��22��6`   �� 5+      -   5         ��Name$ textBoxSubject��5+      $��5 0 0 0q�62   $
��Left=�6C   $��29��6^    �� TextWrapping$
 Wrap=�6j   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Имя(доктора)��6~   
�������$	��Top=�6�   $	��140��6�   5-      �� 5.      -   5        $ buttonSearch��5.      $��
23,30,24,0q�6+   $��
Поиск��6?   6O   5/      &   System.Windows.Controls.DataGrid  51   
   -   5          Name$ dataGridViewResult��51         
IsReadOnly . $
��Left=�6Z   $	��312��6v   $��
207,28,0,0q�6�   $	��Top=�6�   $	��709��6�      AlternatingRowBackground �	#FFEEEEEE   RowBackground
 �����
�������
���   �
���   � J� OpacityMask
 �   �$��	ComicSans)�54   N   ��51   0   ��    Columns 55      0  *System.Windows.Controls.DataGridTextColumn  56      ,  &System.Windows.Controls.DataGridColumn   Header$  ��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 57   %   ��  �� Path$ DoctorId�6I     58      $ Имя��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$	 110 62    59   %   �� $
 Name�6E     5:      $ Телефон��6%   $	 110 67    5;   %   �� $ Phone�6F     5<      $ 
Адрес��6%   $	 110 64    5=   %   �� $ Address�6H     5>      $ Квалификация��6%   $	 110 6<    5?   %   �� $ Skils�6F   5A      � 5C   
   -   5         �Name$ panelChooseButtons��5C      $��229,366,355,31.6q�60   .+�5D      �� -   5        $ buttonChoose��5D      $��Выбрать��6+   $��15(�6=   $
��Bold"�6K   $	��156��6]   $��40��6i    � ToolTip$# Выбрать доктора��6�   �� 5E      -   5        $ buttonCancel��5E      $��Отменить��6+   $��15(�6>   $
��Bold"�6L   $	��156��6^     MaterialDesignFlatButton#��[ 6�   $$ Отменить и выйти��6�   $��40��6�   5F      � 5G   
   -	   5        $ panelButtons��5G      $��591,359,-66,-40.4q�6*   .+�5H      �� -
   5        $ 
buttonEdit��5H      $��58��6*    & "MaterialDesignFloatingActionButton#��[ 6O   $D >Редактировать выбранного доктора��5I      $��58��6@   .��5J        $ 	TableEdit=�5K      $��35��5L      $��35��5M      5N      �� 5O      -   5        $ buttonDelete��5O      $��58��6+   $��0 0 90 0q�66   #��[ 6c   $8 2Удалить выбранного доктора��5P      $��58��66   .��5Q        $ DeleteEmpty=�5R      $��35��5S      $��35��5T      5U      �� 5V      -   5        $ 	buttonAdd��5V      $��58��6)   #��[ 6L   $% Добавить доктора��5W      $��58��6,   .��5X        $
 Plus=�5Y      $��35��5Z      $��35��5[      5\      5]      �� 5_   
   -   5         ��Name$ statusStripBottom��5_      
�������$
��Left=�6B   $��27��6]   $��229,423,0,-0.4q�6i   $	��Top=�6�   $	��639��6�   5b      5c      
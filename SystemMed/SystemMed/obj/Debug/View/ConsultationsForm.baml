   M S B A M L   `   `   `  ����D  @SystemMed, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:SystemMed.ViewSystemMed.View  5   	   &     SystemMed.View.ConsultationsForm   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:SystemMed.View     5   	   V RMaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   -   5          �Name$  ConsultationsForm1��5   	    � Title$ Консультации��5	   	   $	��450��6   $	��916��6+    � 
ResizeMode$ NoResize=�67    � WindowStyle$
 None=�6M    � AllowsTransparency . 
������  � WindowStartupLocation$ CenterScreen=�6�   .��5
      � $��
0,0,0,-0.4q�6   .+�5   
   ��  �� RadiusY$ 15��6    �� RadiusX$ 15��6!   
�������6.   �� 5   
   $��0,0,709,-0.4q�6   $ 15��6*   $ 15��67   ��5      �� 5       �� EndPoint$ 0.5,1&�6&   	 �� 
StartPoint$	 0.5,0&�67   .��5      � 
 � Color$
 	#FF019BFF��6#    � Offset$ 1Q�65   � 5      $
 	#CCEA4646��6#   � 5      $
 #cb0990��6#   $ 0.566Q�63   5      5      �� 5   
   -   5         ��Name$ ButtonClose��5       0  ,MaterialDesignFloatingActionMiniAccentButton#��[  6&   $��30��6l   $
��Auto��6w   $��0q�6�   $��876,5,10,415q�6�   ��6�   Z� ��6�   Z� .��5      '  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=null]]   Kind$ Power=�6&   
���   �64   5      &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ dataGridViewResult��5         
IsReadOnly . $
��Left=�6Z   $	��312��6u   $��
207,28,0,0q�6�   $	��Top=�6�   $	��709��6�      AlternatingRowBackground �	#FFEEEEEE   RowBackground
 �����
�������
���   �
���   � J� OpacityMask
 �   �$��	ComicSans)�5   N   ��5   /   ��    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5       ,  &System.Windows.Controls.DataGridColumn   Header$  ��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 5!   %   ��  �� Path$ ConsultationId�6O     5"      $ Дата��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$	 110 63    5#   %   �� $ ScheduleDate� �� StringFormat$ {0:dd.MM.yyyy}��6m     5$      $ 
Время��6%   $ 75 64    5%   %   �� $ ScheduleTime�6M     5&      $ Врач��6%   $	 110 64    5'   %   �� $ Doctor.Name�6M     5(      $ Пациент��6%   $	 110 66    5)   %   �� $ Patient.Name�6M     5*      $ Причина��6%   $	 110 67    5+   %   �� $ Reason�6G     5,      $ Заключение��6%   $	 110 69    5-   %   �� $ 
Conclusion�   ElementStyle 5.      �� 5/       �� 
TargetType" ��6    .�50      ��  �� Property � �� �� Value$
 Wrap=�6=   6L   51      53      55      �� 56   
   $
��Left=�6   $	��384��60   $��10,5,0,0q�6=   $	��Top=�6O   $	��182��6g   .+�59      �� $*��$Поиск Консультаций��6   $��Segoe UI Black)�66   $��24(�6R   $��
0,5,-7.6,5q�6`   $	��Top=�6t   $
��Left=�6�   
�������$��77��6�   $	��190��6�   �� 5:      -   5        $ button��5:      #��[  6%   $��0q�6�   $��80��6�   $��80��6�   $	��10 q�6�    J� RenderTransformOrigin$ 0.5,0.5&�6�   ��6k   Z� z�5;      V� 5<      .~�5=      �� �� 5>      �� 5?      T� 5@      5A      ��5C      �� 5D       �� ImageSource$ ../Picture/labl.png��6!    j� Stretch$ UniformToFill=�6D   5F      (  "System.Windows.Controls.DatePicker  5G      -   5           Name$  dateTimePickerFrom��5G      )	  #MaterialDesignThemes.Wpf.HintAssist! 	  Hint$! От даты��65   $��25��6_   $��	0,10,0,30q�6k     5H      -   5        $  dateTimePickerTo��5H      $! До даты��63   $	��180��6\   $��0 0 0 50q�6h   �� 5I      -   5        $ buttonSearch��5I      " � ToolTip$+" %Искать консультацию��6+   $��
Поиск��6I   $��10,0,10.4,0q�6Y   6o   5J      �� 5L   
   -   5        # ��Name$# 
lblMessage��5L      $�� ��6$   $
��Left=�6/   $��
10,394,0,0q�6J   $	��Top=�6^   $	��207��6v   �� 5M   
   -	   5        $ ��Name$$ statusStripBottom��5M      
�������$
��Left=�6B   $��30��6]   $��207,420,0,0q�6i   $	��Top=�6~   $	��681��6�   �� 5N   
   -
   5        $ 
buttonEdit��5N      $
��Auto��6&    & "MaterialDesignFloatingActionButton#��[ 6M   $L" FРедактировать выбранную консультацию��5O      $
��Auto��6D   $��263,345,595,46q�6R   .��5P        $ 	TableEdit=�5Q      $��35��5R      $��35��5S      5T      �� 5U   
   -   5        $ buttonDelete1��5U      $
��Auto��6)   #��[ 6R   $@" :Удалить выбранную консультацию��5V      $
��Auto��6>   $��345,345,513,46q�6L   .��5W        $ DeleteEmpty=�5X      $��35��5Y      $��35��5Z      5[      �� 5\   
   -   5        $ 	buttonAdd��5\      $
��Auto��6%   #��[ 6J   $/" )Добавить консультацию��5]      $
��Auto��65   $��802,345,56,46q�6C   .��5^        $
 Plus=�5_      $��35��5`      $��35��5a      5b      5d      5e      
   M S B A M L   `   `   `  ����D  @SystemMed, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:SystemMed.ViewSystemMed.View  5   	   "    SystemMed.View.DiagnosesForm   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:SystemMed.View     5   	   V RMaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   -   5          �Name$  DiagnosesForm1��5   	    � Title$ Диагнозы��5	   	   $	��450��6   $	��916��6(    � 
ResizeMode$ NoResize=�64    � WindowStyle$
 None=�6J    � AllowsTransparency . 
������  � WindowStartupLocation$ CenterScreen=�6�   .��5
      � .+�5   
   ��  �� RadiusY$ 15��6    �� RadiusX$ 15��6!   
�������6.   �� 5   
   $��0,0,709,-0.4q�6   $ 15��6*   $ 15��67   ��5      �� 5       �� EndPoint$ 0.5,1&�6&   	 �� 
StartPoint$	 0.5,0&�67   .��5      � 
 � Color$
 	#FF019BFF��6#    � Offset$ 1Q�65   � 5      $
 	#CCEA4646��6#   � 5      $
 #cb0990��6#   $ 0.566Q�63   5      5      �� 5   
   -   5         ��Name$ ButtonClose��5       0  ,MaterialDesignFloatingActionMiniAccentButton#��[  6&   $��30��6l   $��30��6w   $��0q�6�   $��876,5,10,415q�6�   ��6�   Z� ��6�   Z� .��5      '  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=null]]   Kind$ Power=�6&   
���   �64   5      �� 5   
   $
��Left=�6   $	��357��60   $��4,10,0,0q�6=   $	��Top=�6O   $	��200��6g   .+�5      �� $$��Поиск Диагнозов��6   $��Segoe UI Black)�63   $��24(�6O   $��10,5,0,5q�6]   $	��Top=�6o   $
��Left=�6�   
�������$��77��6�   $	��180��6�   �� 5      -   5        $ button��5      #��[  6%   $��0q�6�   $��80��6�   $��80��6�   $	��10 q�6�    J� RenderTransformOrigin$ 0.5,0.5&�6�   ��6k   Z� z�5       V� 5!      .~�5"      �� �� 5#      �� 5$      T� 5%      5&      ��5(      �� 5)       �� ImageSource$ ../Picture/labl.png��6!    j� Stretch$ UniformToFill=�6D   5+      � 5,      $��10 30q�6   .+�5-        $ BookPlus=�6*   
�������$��30��6M   $��22��6Y   �� 5.      -   5         ��Name$ textBoxSubject��5.      $��5 0 0 0q�62   $
��Left=�6C   $��29��6^    �� TextWrapping$
 Wrap=�6j   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$( "Название(диагноза)��6~   
�������$	��Top=�6�   $	��140��6�   50      �� 51      -   5        $ buttonSearch��51       � ToolTip$! Искать диагноз��6+   $��
23,30,24,0q�6D   $��
Поиск��6X   6h   52      &   System.Windows.Controls.DataGrid  53   
   -   5          Name$ dataGridViewResult��53         
IsReadOnly . $
��Left=�6\   $	��312��6w   $��
207,28,0,0q�6�   $	��Top=�6�   $	��709��6�      AlternatingRowBackground �	#FFEEEEEE   RowBackground
 �����
�������
���   �
���   � J� OpacityMask
 �   �$��	ComicSans)�56   N   ��53   0   ��    Columns 57      0  *System.Windows.Controls.DataGridTextColumn  58      ,  &System.Windows.Controls.DataGridColumn   Header$  ��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 59   %   ��  �� Path$ 
DiagnoseId�6K     5:      $ Диагноз��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$	 110 66    5;   %   �� $ Subect�6G     5<      $ Пациент��6%   $	 110 67    5=   %   �� $ Patient.Name�6M     5>      $ Дата��6%   $	 110 63    5?   %   �� $ DiagnosticationDate� �� StringFormat$ {0:dd.MM.yyyy}��6s     5@      $ Врач��6%   $	 110 64    5A   %   �� $ Doctor.Name�6L     5B      $ Примечание��6%   $	 110 6:    5C   %   �� $ Notes�6F     5D      $ Рецепт��6%   $	 110 66    5E   %   �� $ Prescription�6M   5G      �� 5I   
   -   5        $ 
buttonEdit��5I      $
��Auto��6&    & "MaterialDesignFloatingActionButton#��[ 6M   $B <Редактировать выбранный диагноз��5J      $
��Auto��6?   $��252,345,606,46.6q�6M   .��5K        $ 	TableEdit=�5L      $��35��5M      $��35��5N      5O      �� 5P   
   -   5        $ buttonDelete��5P      $
��Auto��6'   #��[ 6P   $6 0Удалить выбранный диагноз��5Q      $
��Auto��65   $��335,345,523,46.6q�6C   .��5R        $ DeleteEmpty=�5S      $��35��5T      $��35��5U      5V      �� 5W   
   -	   5        $ 	buttonAdd��5W      $
��Auto��6%   #��[ 6K   $% Добавить диагноз��5X      $
��Auto��6,   $��798,340,60,51.6q�6:   .��5Y        $
 Plus=�5Z      $��35��5[      $��35��5\      5]      �� 5`   
   -
   5          ��Name$  statusStripBottom��5`      
�������$
��Left=�6B   $��20��6]   $��212,428,0,0q�6i   $	��Top=�6~   $	��624��6�   �� 5a   
   -   5        ! ��Name$! 
lblMessage��5a      $�� ��6$   $
��Left=�6/   $��38��6J   $��
10,402,0,0q�6V   $	��Top=�6j   $	��173��6�   5d      5e      
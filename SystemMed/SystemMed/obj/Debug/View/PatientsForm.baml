   M S B A M L   `   `   `  ����D  @SystemMed, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:SystemMed.ViewSystemMed.View  5   	   !    SystemMed.View.PatientsForm   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:SystemMed.View     5   	   V RMaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$  PatientsForm��5	   	   $	��450��6   $	��916��6+    � 
ResizeMode$ NoResize=�67    � WindowStyle$
 None=�6M    � AllowsTransparency . 
������  � WindowStartupLocation$ CenterScreen=�6�   .��5      � .+�5   
   ��  �� RadiusY$ 15��6    �� RadiusX$ 15��6!   
�������6.   �� 5   
   -   5         ��Name$ ButtonClose��5       0  ,MaterialDesignFloatingActionMiniAccentButton#��[  6&   $��30��6l   $��30��6w   $��0q�6�   $��876,5,10,415q�6�   ��6�   Z� ��6�   Z� .��5      '  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=null]]   Kind$ Power=�6&   
���   �64   5      �� 5   
   $��0,0,709,-0.4q�6   $ 15��6*   $ 15��67   ��5      �� 5      	 �� EndPoint$	 0.5,1&�6&   
 �� 
StartPoint$
 0.5,0&�67   .��5      �  � Color$ 	#FF019BFF��6#    � Offset$ 1Q�65   � 5      $ 	#CCEA4646��6#   � 5      $ #cb0990��6#   $ 0.566Q�63   5      5      &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ dataGridViewResult��5         
IsReadOnly . 
�������$
��Left=�6l   $	��245��6�   $��
207,38,0,0q�6�   $	��Top=�6�   $	��709��6�      AlternatingRowBackground �	#FFEEEEEE   RowBackground
 �����
���   �
���   � J� OpacityMask
 �   �$��	ComicSans)�5   N   ��5   /   ��    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$  ��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 5   %   ��  �� Path$ 	PatientId�6J     5       $ Имя��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$	 110 62    5!   %   �� $
 Name�6E     5"      $ ЕГН��6%   $	 110 63    5#   %   �� $ Number�6G     5$      $ 
Адрес��6%   $	 110 64    5%   %   �� $ Address�6H     5&      $ Телефон��6%   $	 110 67    5'   %   �� $ Phone�6F     5(      $ Дата рождения��6%   $	 110 6<    5)   %   �� $ 	Birthdate� �� StringFormat$ {0:dd.MM.yyyy }��6j   5+      � 5,   
   $
��Left=�6   $	��340��6/   $��10,0,0,0q�6<   $	��Top=�6N   $	��207��6f   .+�5-      �� $$��Поиск Пациентов��6   $��Segoe UI Black)�63   $��24(�6O   $��
0,5,-7.6,5q�6]   $	��Top=�6q   $
��Left=�6�   
�������$��77��6�   $	��190��6�   �� 5.      -   5        $ button��5.      #��[  6%   $��0q�6�   $��80��6�   $��80��6�   $��55 0  q�6�    J� RenderTransformOrigin$ 0.5,0.5&�6�   ��6k   Z� z�5/      V� 50      .~�51      �� �� 52      �� 53      T� 54      55      ��57      �� 58       �� ImageSource$ ../Picture/labl.png��6!    j� Stretch$ UniformToFill=�6D   5:      � 5;      .+�5<        $ Account=�6*   $��Center=�69   
�������6T   �� 5=      -   5         ��Name$ textBoxName��5=      $��24��6/   $��10 20 0 10 q�6;    �� TextWrapping$
 Wrap=�6P   
�������)  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Имя(содержит)��6w   $	��120��6�   5>      � 5@      .+�5A        $ Numeric=�6*   $��Center=�69   
�������6T   �� 5B      -   5        $ textBoxNumber��5B      $��23��61   $��10q�6=   
�������$
 Wrap=�6\   $ ЕГН(содержит)��6p   $	��120��6�   5C      �� 5E      -   5        $ buttonSearch��5E      $��
Поиск��6+   $	��166��6;   $��10 30q�6G   $��30��6r   5F      �� 5H   
   -   5         ��Name$ 
lblMessage��5H      $�� ��6$   $
��Left=�6/   $��
10,366,0,0q�6J   $	��Top=�6^   $	��207��6v   �� 5I   
   -   5         ��Name$ statusStripBottom��5I      $
��Left=�6/   $��28��6J   
�������$��212,422,0,-0.4q�6i   $	��Top=�6�   $	��572��6�   � 5J   
   -	   5          �Name$  panelButtons��5J      $
��Left=�6*   $��78��6E   $��604,354,-95,0q�6Q   $	��Top=�6h   $	��407��6�   .+�5K      �� -
   5        $ 
buttonEdit��5K      $y�	Collapsed=�6*   $��58��6A    & "MaterialDesignFloatingActionButton#��[ 6f   ! � ToolTip$F! @Редактировать выбранного пациента��5L      $��58��6A   .��5M        $ 	TableEdit=�5N      $��35��5O      $��35��5P      5Q      �� 5R      -   5        $ buttonDelete��5R      $y�Hidden=�6+   $��58��6?   $��0 0 90 0q�6J   #��[ 6w   $:! 4Удалить выбранного пациента��5S      $��58��6;   .��5T        $ DeleteEmpty=�5U      $��35��5V      $��35��5W      5X      �� 5Y      -   5        $ 	buttonAdd��5Y      $��58��6)   #��[ 6L   $'! !Добавить пациента��5Z      $��58��61   .��5[        $
 Plus=�5\      $��35��5]      $��35��5^      5_      5`      � 5a   
   -   5        $  panelChooseButtons��5a      $
��Left=�60   $��47��6K   $��232,366,0,0q�6W   $	��Top=�6l   $	��315��6�   .+�5b      �� -   5        $ buttonChoose��5b      $��Выбрать��6+   $��15(�6=   $
��Bold"�6K   $	��156��6]   $��40��6i   $%! Выбрать пациента��6�   �� 5c      -   5        $ buttonCancel��5c      $��Отменить��6+   $��15(�6>   $
��Bold"�6L   $	��156��6^     MaterialDesignFlatButton#��[ 6�   $$! Отменить и выйти��6�   $��40��6�   5d      5e      5f      
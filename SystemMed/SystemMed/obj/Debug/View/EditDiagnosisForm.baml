   M S B A M L   `   `   `  ����D  @SystemMed, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:SystemMed.ViewSystemMed.View  5   	   &     SystemMed.View.EditDiagnosisForm   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:SystemMed.View     5   	   V RMaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$  Диагноз��5	   	   $	��450��6   $	��916��6&    � 
ResizeMode$ NoResize=�62    � WindowStyle$
 None=�6H    � AllowsTransparency . 
������  � WindowStartupLocation$ CenterScreen=�6�   .��5      � .+�5   
   ��  �� RadiusY$ 15��6    �� RadiusX$ 15��6!   
�������6.   �� 5   
   -   5         ��Name$ ButtonClose��5       0  ,MaterialDesignFloatingActionMiniAccentButton#��[  6&   $��30��6l   $��30��6w   $��0q�6�   $��876,0,10,414.6q�6�   $��Bottom=�6�   ��6�   Z� ��6�   Z� .��5      '  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=null]]   Kind$ Power=�6&   
���   �64   5      �� 5   
   $��0,0,709,-0.4q�6   $ 15��6*   $ 15��67   ��5      �� 5      	 �� EndPoint$	 0.5,1&�6&   
 �� 
StartPoint$
 0.5,0&�67   .��5      �  � Color$ 	#FF019BFF��6#    � Offset$ 1Q�65   � 5      $ 	#CCEA4646��6#   � 5      $ #cb0990��6#   $ 0.566Q�63   5      5      �� 5   
   -   5        $ button��5      #��[  6!   $��0q�6~   $��80��6�   $��80��6�   $��62,58,774,311.6q�6�    J� RenderTransformOrigin$ 0.5,0.5&�6�   ��6g   Z� z�5      V� 5      .~�5      �� �� 5      �� 5      T� 5       5!      ��5#      �� 5$       �� ImageSource$ ../Picture/labl.png��6    j� Stretch$ UniformToFill=�6@   5&      �� 5'   
   $��0,0,347,22.6q�6   .+�5+      �� $��Диагноз��6   $��Segoe UI Black)�6&   $��24(�6B   $��48,5,0,5q�6P   $	��Top=�6b   $
��Left=�6z   
�������$	��135��6�   $	��170��6�   � 5/      $
��Left=�6   $��30��63   $	��195��6?   .+�50      �� -   5         ��Name$ label6��50      $
��№.��6(   $��27��65   
�������$��41��6T   $��Segoe UI Black)�6_   $��16(�6{   �� 51      -   5        $ labelId��51      $��0��6)   
�������$��Segoe UI Black)�6H   $��16(�6d   52      � 53      $��87��6   $��
0,0,-9.2,0q�6$   .+�54      �� -   5        $ labelDoctor��54      $��Segoe UI Black)�6-   $��16(�6I   $��Врач��6W   
�������$��31��6y   $��52��6�   � 55      -   5         �Name$ panelDoctor��55      $��30��61   $	��500��6=   .+�56      �� -   5         ��Name$ textBoxDoctorName��56      $��30��69   {�.  
������� �� TextWrapping$
 Wrap=�6j   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$" Выберите врача!��6~   $	��121��6�   �� 57      -   5        $ label3��57      $��*��6,   
�������$��30��6K   $��16��6W   59      �� 5:      -	   5        $ buttonLoadDoctor��5:      $��
50 10 20 0q�63   $��Выбрать��6G   $��32��6Z   $	��103��6f    � ToolTip$ Выбрать врача��6r   6�   5<      � 5=      $	��148��6   $��0,0,360.8,0q�6%   .+�5>      �� -
   5        $ labelPatient��5>      $��Пациент��6.   $��34��6@   
�������$��Segoe UI Black)�6_   $��18(�6{   � 5?      -   5        $ panelPatient1��5?      $��60��63   $	��234��6?   .+�5@      �� -   5        $ label1��5@      $��Имя��6,   $��29��6:   $��51��6F   
�������$��Segoe UI Black)�6d   $��16(�6�   �� 5A      -   5        $ textBoxPatientName��5A      {�.  $��25��6L   $
 Wrap=�6X   $ Имя пациента��6l   
�������$	��119��6�   �� 5B      -   5        $ label5��5B      $��*��6,   
�������$��30��6K   $��31��6W   �� 5C      -   5        $ label2��5C      $��ЕГН��6,   $��27��6:   $��48��6F   
�������$��Segoe UI Black)�6d   $��16(�6�   �� 5D      -   5        $ textBoxPatientNumber��5D      {�.  $��26��6N   $
 Wrap=�6Z   $! Номер пациента��6n   
�������$	��122��6�   �� 5E      -   5        $ label8��5E      $��*��6,   
�������$��30��6K   $��16��6W   5F      � 5G      .+�5H      �� -   5        $ buttonLoadPatient��5H      $��Выбрать��68   $��
50 20 0 0 q�6J   $��32��6^   $	��103��6j   $% Выбрать пациента��6v   6�   5I      5K      5L      �� 5O   
   $
��Left=�6   $	��421��60   $��244,40,-28,-11.4q�6=   $	��Top=�6W   $	��700��6o   .+�5Q      � $��76��6   .+�5R      �� -   5        $ labelScheduleDate��5R      $��Segoe UI Black)�63   $��16(�6O   $��Дата��6]   $��30��6l   $��61��6x   (  "System.Windows.Controls.DatePicker  5S      -   5          Name$' !dateTimePickerDiagnosticationDate��5S      $! Назначить дату��6H   $
��Left=�6y   $	��Top=�6�   $	��155��6�   �� 5T      -   5        $ label7��5T      $��*��6(   
���  ��$��30��6E   $��16��6Q   5V      � 5W      $��98��6   .+�5X      �� -   5        $ 
labelNotes��5X      $��Segoe UI Black)�6,   $��14(�6H   $��Примечание��6V   $	��110��6k   �� 5Y      -   5        $ textBoxNotes��5Y      $ Информация��60   $
��Left=�6]   $��27��6x   $
 Wrap=�6�   $	��Top=�6�   $	��502��6�   5Z      � 5[      $��98��6   .+�5\      �� -   5        $ labelReason��5\      $��Segoe UI Black)�6-   $��14(�6I   $��Диагноз��6W   $��83��6i   �� 5]      -   5        $ textBoxSubject��5]      $
��Left=�62   $��26��6M   $
 Wrap=�6Y   $- 'Поставленный диагноз��6m   $	��Top=�6�   $	��530��6�   5^      � 5_      $	��100��6   .+�5`      �� -   5        $ label4��5`      $��Рецепт��6(   $��Segoe UI Black)�69   $��14(�6U   $��81��6d   �� 5a      -   5        $ textBoxPrescription��5a      $
��Left=�67   $��29��6R   $
 Wrap=�6^   $ Рецепт��6r   $	��Top=�6�   $	��531��6�   5b      5c      � 5e   
   $
��Left=�6   $��47��6/   $��446,380,-28,0q�6;   $	��Top=�6R   $	��498��6j   .+�5f      �� -   5        $ 
buttonSave��5f      $��Записать��6)   $/ )Записать консультацию��6<   $	��176��6\   $��37��6�   �� 5g      -   5        $ buttonClose��5g      $��30 0 0 0q�6+   $1 +Отменить запись и выйти��6=     MaterialDesignFlatButton#��[ 6_   $(��"Отменить и закрыть��6�   $	��176��6�   $��36��6�   6�   5h      5i      5j      
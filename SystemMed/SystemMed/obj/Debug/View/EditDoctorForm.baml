   M S B A M L   `   `   `  ����D  @SystemMed, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:SystemMed.ViewSystemMed.View  5   	   #    SystemMed.View.EditDoctorForm   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:SystemMed.View     5   	   V RMaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   -   5          �Name$  EditDoctorForm1��5   	    � Title$ Диагноз��5
   	   $	��450��6   $	��700��6&    � 
ResizeMode$ NoResize=�62    � WindowStyle$
 None=�6H    � AllowsTransparency . 
������  � WindowStartupLocation$ CenterScreen=�6�   .��5      � .+�5   
   ��  �� RadiusY$ 15��6    �� RadiusX$ 15��6!   
�������6.   �� 5   
   $��../Picture/welcome.png��6   $��UniformToFill=�61   $��314,1,0,-0.4q�6I   �� 5   
   -   5         ��Name$ ButtonClose��5       0  ,MaterialDesignFloatingActionMiniAccentButton#��[  6&   $��30��6l   $��30��6w   $��0q�6�   $��670,0,0,419.6q�6�   $��Bottom=�6�   ��6�   Z� ��6�   Z� .��5      '  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=null]]	   Kind$	 Power=�6&   
���   �64   5      �� 5   
   $��0,0,372,-0.4q�6   $ 15��6*   $ 15��67   ��5      �� 5      
 �� EndPoint$
 0.5,1&�6&    �� 
StartPoint$ 0.5,0&�67   .��5      �  � Color$ 	#FF019BFF��6#    � Offset$ 1Q�65   � 5      $ 	#CCEA4646��6#   � 5      $ #cb0990��6#   $ 0.566Q�63   5      5      �� 5   
   $
��Left=�6   $	��293��60   $��
10,0,-64,0q�6=   $	��Top=�6Q   $	��754��6i   .+�5      �� $!��Данные Доктора��6   $��Segoe UI Black)�6-   $��24(�6I   $
��0,10q�6W   $	��Top=�6e   $
��Left=�6}   
�������6�   � 5      $��40��6   $��	0,0,0.6,0q�6%   .+�5       �� -   5         ��Name$ label6��5       
�������$
��№.��6;   �� 5!      -   5        $ labelId��5!      
�������$��0��6<   5"      � 5#      $��35��6   $��0,0,437.6,0q�6$   .+�5$        $	 Account=�6*   $��Center=�69   
�������6T   �� 5%      -   5         ��Name$ textBoxName��5%      $��24��6/    �� TextWrapping$
 Wrap=�6;   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Имя��6O   
�������$	��255��6�   $��5q�6�   �� 5&      -   5        $ label7��5&      
�������$��*��6;   5'      � 5(      $��35��6   $��0,0,437.6,0q�6$   .+�5)        $	 Phone=�6*   $��Center=�67   
�������6R   �� 5*      -   5        $ textBoxPhone��5*      $��24��60   $
 Wrap=�6<   $ Телефон��6Q   
�������$	��255��6�   $��5q�6�   5+      � 5,      $��35��6   $��0,0,437.6,0q�6$   .+�5-        $	 SecurityHome=�6*   $��Center=�6>   
�������6Y   �� 5.      -   5        $ textBoxAddress��5.      $��24��62   $
 Wrap=�6>   $ 
Адрес��6S   
�������$	��255��6�   $��5q�6�   5/      � 50      $��70��6   $��0,0,437.6,0q�6$   .+�51        $	 School=�6*   $��Center=�68   
�������6S   �� 52      -	   5        $ textBoxSkills��52      $��24��61   $
 Wrap=�6=   $ Квалификация��6R   
�������$	��255��6�   $��5q�6�   53      54      � 56   
   -
   5         �Name$ panelBottom��56      $
��Left=�6)   $	��142��6D   $��
80,298,0,0q�6Q   $	��Top=�6e   $	��248��6}   .+�57      �� -   5        $ 
buttonSave��57      $��Записать��6)    � ToolTip$ Записать��6<   $��Impact)�6O   $��18(�6e   $	��176��6s   ���	#FF307CD6���	#FF307CD6$��30��6�   �� 58      -   5        $ buttonClose��58      $��Отмена��6*   $$ Отменить и выйти��6;     MaterialDesignFlatButton#��[ 6V   $	��105��6�   $��30��6�   $��Impact)�6�   $��18(�6�   
�������$��35 20q�6�   5:      �� 5;   
   -   5        $ labelMessage��5;      $�� ��6&   
���  ��$
��Left=�6C   $��29��6^   $��464,370,0,0q�6j   $	��Top=�6   $	��186��6�   5<      5=      
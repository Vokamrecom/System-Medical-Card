   M S B A M L   `   `   `  ����D  @SystemMed, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:SystemMed	SystemMed  5   	   C&clr-namespace:MaterialDesignThemes.WpfMaterialDesignThemes.Wpf  5   	       SystemMed.LoginForm   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:SystemMed     5   	   6wpf&clr-namespace:MaterialDesignThemes.Wpf     5   	   V RMaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	   	     � Title$  	LoginForm��5
   	   $	��450��6   $	��700��6(    � 
ResizeMode$ NoResize=�64    � WindowStyle$
 None=�6J    � AllowsTransparency . 
������  � WindowStartupLocation$ CenterScreen=�6�   .��5      � .+�5   
   ��  �� RadiusY$ 15��6    �� RadiusX$ 15��6!   
�������6.   �� 5   
   $��Picture/welcome.png��6   $��UniformToFill=�6-   $��316,0,0,-0.4q�6E   �� 5   
   $��0,0,372,-0.4q�6   $ 15��6*   $ 15��67   ��5      �� 5       �� EndPoint$ 0.5,1&�6&    �� 
StartPoint$ 0.5,0&�67   .��5      � 	 � Color$	 	#FF019BFF��6#   
 � Offset$
 1Q�65   � 5      $	 	#CCEA4646��6#   � 5      $	 #cb0990��6#   $
 0.566Q�63   5      5      �� 5   
   $��20,10,290,10q�6   .+�5      �� $��
Войти��6   $��Segoe UI Black)�6$   $��24(�6@   $
��0,10q�6N   $	��Top=�6\   $
��Left=�6t   
�������6�   �� 5       �� Orientation$ 
Horizontal=�6   .+�5      �� $
��Left=�6   $	��Top=�67   $
��Wrap=�6O   
��������� 6w   $4�.У вас нет учетной записи? ��6{   6�   �� 5      $
��Left=�6   $	��Top=�67   $
��Wrap=�6O   ���#0193ff�� 6|   -   5        .�5   �   .�6�   �� $3�-Создайте учетную запись,��6�   6�   6�   5      �� 5       $
��Left=�6   $	��Top=�63   $
��Wrap=�6K   
��������� 6s   $4�.это займет менее 1 минуты.��6w   6�   �� 5!      $
��0,15q�6   $ 
Horizontal=�6'   .+�5"      '  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=null]]   Kind$ Account=�6*   $��Center=�69   
�������6T   �� 5#      -   5         ��Name$ textBoxUserName��5#      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ 
Логин��63   
�������$	��250��6m   $��5q�6y   5$      �� 5%      $ 
Horizontal=�6   .+�5&        $	 Key=�6*   $��Center=�65   
�������6P   G� 5'      -   5         G�Name$ textBoxPassword��5'   p   $ Пароль��6   $	��250��6F   
�������$��5q�6e   6p   5(      �� 5)      $ 
Horizontal=�6   .+�5*      �� -   5         ��Name$ buttonOk��5*      $��Center=�6,   $��
Войти��6I   $��Impact)�6Y   $��18(�6o   $	��187��6}   ���	#FF307CD6���	#FF307CD6$��50,50,94.6,0q�6�   $��39��6�   5+      5,      �� 5.   
   -   5        $ buttonCancel��5.      $��Закрыть��6'   $��Center=�69   $��Impact)�6V   $��18(�6l   $	��128��6z   ���	#FF307CD6���	#FF307CD6$��100,318,472,96.6q�6�   $
��Auto��6�   �� 5/   
   -   5         ��Name$ labelMessage��5/      $�� ��6&   $��MADE Evolve Sans EVO)�61   $
��Left=�6S   $��26��6n   $��448,379,0,0q�6z   $	��Top=�6�   $	��223��6�   �� 53      -   5        $ ButtonClose��53       0  ,MaterialDesignFloatingActionMiniAccentButton#��[  6*   $��30��6p   $��30��6{   $��0q�6�   $��670,0,0,419.6q�6�   ��6�   Z� ��6�   Z� .��54        $ Power=�6*   
���   �68   55      57      58      
   M S B A M L   `   `   `  ����D  @SystemMed, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:SystemMed	SystemMed  5   	       SystemMed.Web   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:SystemMed     5   	   V RMaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$	  Web��5	   	   $	��600��6   $
��1024��6"    � 
ResizeMode$ NoResize=�6/    � WindowStyle$
 None=�6E   
������  � WindowStartupLocation$ CenterScreen=�6s   .��5
      � .+�5   
   ��  �� RadiusY$ 15��6    �� RadiusX$ 15��6!   
�������6.   �� 5   
   $��-19,0,0,470q�6   $ 15��6)   $ 15��66   ��5      �� 5       �� EndPoint$ 0.5,1&�6&    �� 
StartPoint$ 0.5,0&�67   .��5      �  � Color$ 	#FF019BFF��6#   	 � Offset$	 1Q�65   � 5      $ 	#CCEA4646��6#   � 5      $ #cb0990��6#   $	 0.566Q�63   5      5      �� 5   
   -   5        
 ��Name$
 ButtonClose��5       0  ,MaterialDesignFloatingActionMiniAccentButton#��[  6&   $��30��6l   $��30��6w   $��0q�6�   $��984,0,10,560.4q�6�   $��Bottom=�6�   ��6�   Z� ��6�   Z� .��5      '  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.4.0.1044, Culture=neutral, PublicKeyToken=null]]   Kind$ Power=�6&   
���   �64   5      (  "System.Windows.Controls.WebBrowser  5   
   -   5          Name$ Browser��5         Source$ https://google.by?�6&   $��0,45,0,0q�6A   6V   �� 5   
   -   5        $

 Back��5      $
��Left=�6    $��30��6;   $��	20,10,0,0q�6G   $	��Top=�6Z   $��51��6r   .��5        $ ArrowLeftThick=�6&   $��22��6<   $��22��6H   5      �� 5   
   -   5        $
 Go��5      $
��Left=�6   $��30��69   $��	81,10,0,0q�6E   $	��Top=�6X   $��51��6p   .��5        $ ArrowRightThick=�6&   $��22��6=   $��24��6I   5      �� 5    
   -   5        $
 Update��5       $
��Left=�6"   $��30��6=   $��
227,10,0,0q�6I   $	��Top=�6]   $��53��6u   .��5!        $ Refresh=�6&   $��23��65   $��23��6A   5"      �� 5#   
   -   5         ��Name$ Ssylka��5#      $
��Left=�6"   $��30��6=   $��
306,10,0,0q�6I    �� TextWrapping$
 Wrap=�6]   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$! Введите ссылку��6q   
�������$	��Top=�6�   $	��465��6�   �� 5$   
   -   5        $
 Search��5$      $
��Left=�6!   $��30��6<   $��
776,10,0,0q�6H   $	��Top=�6\   $��57��6t   .��5%        $ Magnify=�6&   $��27��65   $��26��6A   5&      5'      5(      
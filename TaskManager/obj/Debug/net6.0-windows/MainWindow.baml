   M S B A M L   `   `   `  ����F  BTaskManager, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:TaskManagerTaskManager  5   	       TaskManager.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:TaskManager     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��600��6)   .��5	      �  � RowDefinitions 5
   
   �� 5      $��8* �6   �� 5      .+�5   
   �  � ColumnDefinitions 5      �� 5      .+�5      �� -   5         ��Name$ LV��5      ��6$   �� *	Processes+ �� SelectedItem 6G   �� *SelectProcess+ �� View 5      �� 5      P�5      �� 5       �� Width$	 150��6.   $
��Name��6;    �� DisplayMemberBinding 6J   �� *ProcessName+�� 5      $	 150��6-   $��Id��69    6E   �� *Id+�� 5      $	 150��6-   $��Machine Name��69    6O   �� *MachineName+5      5      5!      �� 5"   
   $��1��6    �� Orientation$ 
Horizontal=�6"   $��Right=�6;   .+�5#      �� $��Process Name��6   $��Center=�6,   6I   �� 5$      -   5        	 ��Name$	 tb��5$      $	��100��6"   $
��10,4q�6t   ��6.   �� *Text+
 �� UpdateSourceTrigger$
 PropertyChanged=� �� Mode$ TwoWay=�6�   �� 5%      -   5         ��Name$ Cr��5%      $	��100��6!   $
��10,4q�6-   $��Elephant)�6;   .��6f   Create Process6v   �� 5&      -   5        $	 End��5&      $	��100��6#   $
��10,4q�6/   $��Elephant)�6=   .��6h   End Process6u   5'      5(      5)      
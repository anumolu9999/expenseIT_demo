   M S B A M L   `   `   `  ����E  AExpenseIt9, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:ExpenseItDemo.ValidationExpenseItDemo.Validation  5      0    *ExpenseItDemo.CreateExpenseReportDialogBox   5      W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      BlocalValidation&clr-namespace:ExpenseItDemo.Validation     5         ExpenseData  � DataContext#  [  5       � Icon$ Watermark.png��5       � Title$ Create Expense Report��5      $	��600��5	      $	��500��6    � SizeToContent$ WidthAndHeight=�5
       � ShowInTaskbar$ False��5       � WindowStartupLocation$ CenterOwner=�5      .��5      � .+�5   
   ��   WatermarkImage#��[ 6   � 5   
     WindowContentGrid#��[ 6    � ColumnDefinitions 5      �� 5      �� 5      $
��Auto �6#   �� 5      $
��Auto �6#    � RowDefinitions 5      �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $��50 �6    �� 5      �� 5      $��50 �6    �� 5      $
��Auto �6    �� 5       $
��Auto �6    .+�5$      � $��0��6   $��3��6     5&      �� 5'      $
��Auto �6'   �� 5(      �� 5)      $
��Auto �6'   �� 5*      $
��Auto �6'    5,      �� 5-      $
��Auto �6$   �� 5.      $
��Auto �6$   �� 5/      $
��Auto �6$   .+�53      ��  	 Label#��[ 6   $��2��6c   $��0��6s    �� Target 67   �� 	 �� ElementName$	 aliasTextBox��.��6�   Email _Alias:55      �� 56      -   5        $��aliasTextBox��56      4  .System.Windows.Automation.AutomationProperties
   Name$
 Email Alias��6.     ReadOnlyText#��[ 6V   $��3��6|   $��0��6�   ��57      ��  �� Path$ Alias�.��66    � ToolTip 58      �� 59      email alias61   .��5:   '   5;      �� 5>      #��[ 6   $��2��6l   $��1��5?       5>   7   �� $	 employeeNumberTextBox��.��5?   %   Employee _Number:5A      �� 5B      -   5        $��employeeNumberTextBox��5B      $
 Employee Number��67   #��[ 6c   $��3��6�   $��1��5C      ��6'   �� $ EmployeeNumber�.��6L    5D      �� 5E      employee number65   .��5F   '   5G      �� 5J      #��[ 6   $��2��6h   $��2��5K       5J   7   �� $	 costCenterTextBox��.��5K   %   _Cost Center:5M      �� 5N      -   5        $��costCenterTextBox��5N      $
 Cost Center��63   #��[ 6[   $��3��6�   $��2��6�   ��5O      �� $ 
CostCenter�.��6;    5P      �� 5Q      cost center61   .��5R   '   5S      5U      �� 5X        TopSeparatorRectangle#��[ 6   $��1��6G   $��3��6T   �� 5[      $��2��6   $��2��6&   $��2��66   .+�5^      �� -   5        $��addExpenseButton��5^   `     FunctionButton#��[ 6   .��6x   Add _Expense 5`      �� 5a      add expense61   5c      �� 5f      -   5        $��viewExpenseButton��5f   _   #��[ 6   $
 
View Chart��6x    5g      �� 5h      
View chart60   .��5j      ]� -  'System.Windows.Input.KeyboardNavigation   TabNavigation$
 None=�6    .+�5k      �� $	��Top=�6    $��Center=�6f    65   �� $	 viewExpenseButton��.��6�   _View Chart5m      �� 5n        ExpenseChartSmall#��[ 6'   5o      5p      5q      �� 5t        TotalRectangle#��[ 6   $��2��6@   $��2��6M   $��2��6^   &   System.Windows.Controls.DataGrid  5u      -   5        $��expenseDataGrid1��5}       	 DataGridStyle#��� 	 5u      $��2��5v      $��2��5w      $��2��5x      $
��Auto��5y         ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$ * 5z         HeadersVisibility$ Column=�5|         AutoGenerateColumns$ False��5~         CanUserAddRows$ False��5      $
 Expense Report��5�      ��5{      �� *	LineItems+ 5�      �� 5�      Expense Report64      Columns 5�      0  *System.Windows.Controls.DataGridTextColumn  5�      ,  &System.Windows.Controls.DataGridColumn   Header$ Expense type��6)    
 LeftAlignedCell   	CellStyle# [
 6X   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6?   �� *Type+6X     5�      $ Description��6)   # [
 6^    6>   �� *Description+6^     5�      $
 Cost��6-     RightAlignedCell# [ 6;     RightAlignedColumnHeader   HeaderStyle# [ 6i    5�      �� 5�   "   $
 Cost�6*    �� UpdateSourceTrigger$ PropertyChanged=�66    �� ValidationRules 5�   &   3   -ExpenseItDemo.Validation.NumberValidationRule  5�   *   5�   #   5�      5�      �� 5�      #��[ 6   $��4��6@   $��2��6M   �� 5�        TotalExpensesFlow#��[ 6   $��4��6D   $��2��6Q   .+�5�      ��   TotalExpenses#��[ 6   Total Expenses ($): 5�      �� 5�      Total expenses64   5�      �� 5�      #��[ 6   ��5�      �� $ TotalExpenses�$ PropertyChanged=�5�      �� 5�        BottomSeparatorRectangle#��[ 6   $��5��6J   $��3��6W   �� 5�        CommandButtonPanel#��[ 6   $��6��6E   $��3��6R   .+�5�      �� -   5          CommandButton#��[ 5�       �� 	IsDefault$
 True��6W   .��6h   _OK 5�      �� 5�      OK6(   5�      �� 5�      -   5        #��[ 5�       �� IsCancel$
 True��6[   .��6k   	_Cancel 5�      �� 5�      Cancel6,   5�      5�      5�      5�      5�      
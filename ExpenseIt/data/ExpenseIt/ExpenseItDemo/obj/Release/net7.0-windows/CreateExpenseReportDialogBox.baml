   M S B A M L   `   `   `  ���� E  AExpenseIt9, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:ExpenseItDemo.ValidationExpenseItDemo.Validation  0    *ExpenseItDemo.CreateExpenseReportDialogBox   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     BlocalValidation&clr-namespace:ExpenseItDemo.Validation        ExpenseData  � DataContext#  [   � Icon$ Watermark.png�� � Title$ Create Expense Report��$	��600��$	��500�� � SizeToContent$ WidthAndHeight=� � ShowInTaskbar$ False�� � WindowStartupLocation$ CenterOwner=�.��� .+���   WatermarkImage#��[ �   WindowContentGrid#��[  � ColumnDefinitions �� �� $
��Auto ��� $
��Auto � � RowDefinitions �� $
��Auto ��� $
��Auto ��� $��50 ��� �� $��50 ��� $
��Auto ��� $
��Auto �.+�� $��0��$��3�� �� $
��Auto ��� �� $
��Auto ��� $
��Auto � �� $
��Auto ��� $
��Auto ��� $
��Auto �.+���  	 Label#��[ $��2��$��0�� �� Target �� 	 �� ElementName$	 aliasTextBox��.��Email _Alias:�� -   $��aliasTextBox��4  .System.Windows.Automation.AutomationProperties
   Name$
 Email Alias��  ReadOnlyText#��[ $��3��$��0������  �� Path$ Alias�.�� � ToolTip �� email alias.���� #��[ $��2��$��1�� �� $	 employeeNumberTextBox��.��Employee _Number:�� -   $��employeeNumberTextBox��$
 Employee Number��#��[ $��3��$��1������ $ EmployeeNumber�.�� �� employee number.���� #��[ $��2��$��2�� �� $	 costCenterTextBox��.��_Cost Center:�� -   $��costCenterTextBox��$
 Cost Center��#��[ $��3��$��2������ $ 
CostCenter�.�� �� cost center.����   TopSeparatorRectangle#��[ $��1��$��3���� $��2��$��2��$��2��.+��� -   $��addExpenseButton��  FunctionButton#��[ .��Add _Expense �� add expense�� -   $��viewExpenseButton��#��[ $
 
View Chart�� �� 
View chart.��]� -  'System.Windows.Input.KeyboardNavigation   TabNavigation$
 None=�.+��� $	��Top=�$��Center=� �� $	 viewExpenseButton��.��_View Chart��   ExpenseChartSmall#��[ ��   TotalRectangle#��[ $��2��$��2��$��2��&   System.Windows.Controls.DataGrid  -   $��expenseDataGrid1�� 	 DataGridStyle#��� 	 $��2��$��2��$��2��$
��Auto��   ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$ *    HeadersVisibility$ Column=�   AutoGenerateColumns$ False��   CanUserAddRows$ False��$
 Expense Report������ *	LineItems+ �� Expense Report   Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ Expense type�� 
 LeftAlignedCell   	CellStyle# [
 1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *Type+  $ Description��# [
  �� *Description+  $
 Cost��  RightAlignedCell# [   RightAlignedColumnHeader   HeaderStyle# [  �� $
 Cost� �� UpdateSourceTrigger$ PropertyChanged=� �� ValidationRules 3   -ExpenseItDemo.Validation.NumberValidationRule  �� #��[ $��4��$��2����   TotalExpensesFlow#��[ $��4��$��2��.+���   TotalExpenses#��[ Total Expenses ($): �� Total expenses�� #��[ ���� $ TotalExpenses�$ PropertyChanged=���   BottomSeparatorRectangle#��[ $��5��$��3����   CommandButtonPanel#��[ $��6��$��3��.+��� -     CommandButton#��[  �� 	IsDefault$
 True��.��_OK �� OK�� -   #��[  �� IsCancel$
 True��.��	_Cancel �� Cancel
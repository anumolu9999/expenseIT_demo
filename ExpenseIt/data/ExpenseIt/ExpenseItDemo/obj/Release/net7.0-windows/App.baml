   M S B A M L   `   `   `  ���� E  AExpenseIt9, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null    ExpenseItDemo.App   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml       �� 	Resources   �� MergedDictionaries �� Source-clr-namespace:ExpenseItDemoExpenseItDemo  !   ExpenseItDemo.ExpenseReport   ExpenseData   Alias   EmployeeNumber   
CostCenter   	LineItems   ExpenseItDemo.LineItem   Type   Description	   Cost  CostCenters
 � XPath  	Employees  ExpenseChartBar  ExpenseGrid � RowDefinitions  ExpenseRectangleBrackground �� Path T� X T� Y  BarsInExpenseChart  ExpenseChartRectangle  ExpenseViewbox 	 ExpenseRowDescription 
 ExpenseRowCost��  �� $' !/ExpenseIt9;component/Styles.xaml?�%P  &	        &	 D    &	 �    &	 �    7  7  7  7  7  7 	 7 
   ( clr-namespace:ExpenseItDemo     $ Someone@example.com��$ 57304��$
 4032��   $
 Meal��$ Mexican Lunch��$	 12��  $
 Meal��$ Italian Dinner��$	 45��  $ 	Education��$ Developer Conference��$	 90��  $ Travel��$
 Taxi��$	 70��  $ Travel��$ Hotel��$	 60��� $
 /CostCenters/*��.����<CostCenters xmlns="">
                        <CostCenter Number="4032" Name="Sales" />
                        <CostCenter Number="4034" Name="Marketing" />
                        <CostCenter Number="5061" Name="Human Resources" />
                        <CostCenter Number="5062" Name="Research and Development" />
                    </CostCenters>        � $
 /Employees/*��.����<Employees xmlns="">
                        <Employee Name="Terry Adams" Type="FTE" EmployeeNumber="1" />
                        <Employee Name="Claire O'Donnell" Type="FTE" EmployeeNumber="12345" />
                        <Employee Name="Palle Peterson" Type="FTE" EmployeeNumber="5678" />
                        <Employee Name="Amy E. Alberts" Type="CSG" EmployeeNumber="99222" />
                        <Employee Name="Stefan Hesse" Type="Vendor" EmployeeNumber="-" />
                    </Employees>        �� .R�� 8��   �� �� $��10 �.+��� $��0��8�� ���� $
 Cost�z�T� $ 1Q�$ 1Q��� $��0��8�� ���� $
 Cost��� $��0��8�� ���� $
 Cost�(� $��1��8�� .���� $��1��8�� ���� $ Description��� 8�� ���� $
 Cost�
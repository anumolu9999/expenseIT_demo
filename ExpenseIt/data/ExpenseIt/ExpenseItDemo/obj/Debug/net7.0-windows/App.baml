   M S B A M L   `   `   `  ����E  AExpenseIt9, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null    ExpenseItDemo.App   5      W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5        �� 	Resources  5       �� MergedDictionaries �� Source-clr-namespace:ExpenseItDemoExpenseItDemo  5      !   ExpenseItDemo.ExpenseReport   ExpenseData   Alias   EmployeeNumber   
CostCenter   	LineItems   ExpenseItDemo.LineItem   Type   Description	   Cost  CostCenters
 � XPath  	Employees  ExpenseChartBar  ExpenseGrid � RowDefinitions  ExpenseRectangleBrackground �� Path T� X T� Y  BarsInExpenseChart  ExpenseChartRectangle  ExpenseViewbox 	 ExpenseRowDescription 
 ExpenseRowCost�� 5   
    5	      �� 5
      $' !/ExpenseIt9;component/Styles.xaml?�6%   %K  &	        &	 �    &	 �    &	 �    7  7  7  7  7  7 	 7 
   5      ( clr-namespace:ExpenseItDemo     5      $ Someone@example.com��5      $ 57304��5      $
 4032��5       5        5      $
 Meal��6   $ Mexican Lunch��6+   $	 12��6G     5      $
 Meal��6   $ Italian Dinner��6+   $	 45��6H     5      $ 	Education��6   $ Developer Conference��60   $	 90��6S     5      $ Travel��6   $
 Taxi��6-   $	 70��6@     5      $ Travel��6   $ Hotel��6-   $	 60��6A   5      � 5      $
 /CostCenters/*��62   .��5      ��<CostCenters xmlns="">
                        <CostCenter Number="4032" Name="Sales" />
                        <CostCenter Number="4034" Name="Marketing" />
                        <CostCenter Number="5061" Name="Human Resources" />
                        <CostCenter Number="5062" Name="Research and Development" />
                    </CostCenters>        5#      � 5%      $
 /Employees/*��60   .��5&      ��<Employees xmlns="">
                        <Employee Name="Terry Adams" Type="FTE" EmployeeNumber="1" />
                        <Employee Name="Claire O'Donnell" Type="FTE" EmployeeNumber="12345" />
                        <Employee Name="Palle Peterson" Type="FTE" EmployeeNumber="5678" />
                        <Employee Name="Amy E. Alberts" Type="CSG" EmployeeNumber="99222" />
                        <Employee Name="Stefan Hesse" Type="Vendor" EmployeeNumber="-" />
                    </Employees>        5/      �� 51      .R�52      � 8��   53      �� 54      �� 55      $��10 �6(   .+�57      �� $��0��6    8�� ��58      �� $
 Cost�z�5:      T� 5;      $ 1Q�61   $ 1Q�5<   -   5>      �� 5?      $��0��6    8�� ��5@      �� $
 Cost�5B      �� 5C      $��0��6    8�� ��5D      �� $
 Cost�5F      (� 5G      $��1��6   8�� .��5I      �� $��1��6$   8�� ��5K       �� $ Description�5L      �� 5M      8�� ��5N      �� $
 Cost�5O      5P      5Q      5S      
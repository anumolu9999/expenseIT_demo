   M S B A M L   `   `   `  ���� E  AExpenseIt9, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:ExpenseItDemoExpenseItDemo  W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089   WatermarkImage  �� 
TargetType �� Property �� Value  CommandButton  WindowContentGrid 	 Label �� Triggers �� Binding �� Path �� Value  ExpenseChart  ExpenseData  ExpenseChartBar �� 
TargetType �� RadiusX	 �� RadiusY
 �� 
StartPoint �� EndPoint � Color � Offset (� Stretch �� Orientation K� IsItemsHost �� Triggers �� 
TargetName  TotalExpenses  TotalExpensesFlow 	 DataGridBackgroundBrush 
 TotalDataGrid&    System.Windows.Controls.DataGrid �� RelativeSource �� AncestorType  TotalRectangle  EmployeeList , (EmployeeListHighContrastFocusVisualStyle �� StrokeDashArray J� SnapsToDevicePixels " EmployeeListItemContainerStyle4  .System.Windows.Automation.AutomationProperties �� XPath  CostCenterList  HorizontalRadio d� 	IsChecked �� Mode  HorizontalRadioList-  'System.Windows.Input.KeyboardNavigation   TabNavigation  	InputText P� Property P� Value  ReadOnlyText  FunctionButton  LeftAlignedColumnHeader=  7System.Windows.Controls.Primitives.DataGridColumnHeader  RightAlignedColumnHeader �� BasedOn  RightAlignedCell*  $System.Windows.Controls.DataGridCell  LeftAlignedCell  DataGridStyle  CommandButtonPanel  SeparatorRectangle  TopSeparatorRectangle  BottomSeparatorRectangle  ExpenseChartSmall  ExpenseGrid   ExpenseRectangleBrackground ! BrushForBarsInExpenseChart " BarsInExpenseChart # BrushExpenseChartRectangle $ ExpenseChartRectangle % ExpenseViewbox & ExpenseRowDescription ' ExpenseRowCost�� F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     :x,http://schemas.microsoft.com/winfx/2006/xaml     %localclr-namespace:ExpenseItDemo  %;  &	        &	 �     &	     &	 %    &	 @    &	 �    &	 �    &		 �    &	
 @    7 	 &	     &	 �    &	 	    &	 b	    7  &	 �	    &	 %
    &	 �
    &	 ]    &	 �    &	     &	 `    &	 �    7  &	 �    &	 �    7  &	 �    7 
 &	     &	 ^    7  &	 �    7  &	 �    7  &	     7  &	 �    &	  �    &	! �    &	"      7 ! &	# '    &	$     7 # &	% R    &	& �    &	' �    �� "  ��.���  � ��$) #/ExpenseIt9;component/watermark.png����  � ��$
 left=���  � ��$	 top=���  � ��$	 230����  �@J�Opacity$	 0.5Q��� "  ��.���  � ��$ 0,10,5,5q���  � ��$ 5,2,5,2q���  � ��$ 80���� "  �.���  � ��$ 5q��� "  ��.���  � ��
 ��=H���  � ��$
 10pt(���  � ��$ 0,3,0,0q���  � ��$ Trebuchet MS)���  � ��$
 Bold"���  � ��$ Center=���  � ��$ Right=� ��  �� $% (SystemParameters.HighContrast)� true.a���  � ��# � ���� "  ��.���  �@�DataContext# �  ��  � �� �� $ 	LineItems���  � ��# �  ��  � ��$ 5,5,5,0q���  � ��$ 80����  � ��$ 50����  � �� �� " ��.R�� #��z��#��z��.+��� $��ExpenseChartRect��$��1��$ 10��$	 10������ $	
 0,0&�$	 0,1&���� � $ #4E87D4��$ 0Q�� $ #73B2F5��$ 1Q����� $	
 0,0&�$	 0,1&���� � $ #73B2F5��$ 0Q�� $ #4E87D4��$ 1Q�(� $��1q�$ Uniform=�.���� $ 
Horizontal=�$
 True�� �� $
 true�� �� $% (SystemParameters.HighContrast)�.a��� $ ExpenseChartRect��# � �� � ���� $ ExpenseChartRect��# � �� � ���� "  ��.���  � ��$
 18pt(���  � ��
 �������  � ��$ 
0,10,15,10q� ��  �� $% (SystemParameters.HighContrast)� true.a���  � ��# � ���� "  ��.���  �@��Orientation$ 
Horizontal=���  � ��$ Right=��� $	
 0,0&�$	 0,1&�.��� $ #73B2F5��$ 0Q�� $ #4E87D4��$ 1Q��� "    .���  � ��8   ��  � ��$ 
10,10,10,0q���  � �� ��  �� " �$ RenderSize.Width� ��  �� $% (SystemParameters.HighContrast)� true.a���  � ��# � ���� "  ��.���  � ��$ 5,5,5,0q���  � ��$ 1����  �@��RadiusX$ 10����  �@��RadiusY$ 10����  � �� �� $	
 0,0&�$	 0,1&���� � $ #4E87D4��$ 0Q�� $ #73B2F5��$ 1Q���  � �� �� $	
 0,0&�$	 0,1&���� � $ #73B2F5��$ 0Q�� $ #4E87D4��$ 1Q� ��  �� $% (SystemParameters.HighContrast)� true.a���  � ��# � ����  � ��# � ���� "  ��.���  � ��$ 0,5,5,0q���  � ��$ 50���� "  ��.���  � �� �� .R��� $��1��#��� ��$	 1 2R�$��0,1,0,1q�$
 true���� "  ��.���  �@ Name �� $ @Name�� ��  �� $% (SystemParameters.HighContrast)� true.a���  �@�FocusVisualStyle8   �� "  ��.���  � ��$ 0,5,5,0q��� "  ��.���  � ��$ 0,5,5,0q���  � �� �� .R�	� $|�false��#��z��$��Center=� �� $ 
IsSelected� �� *TemplatedParent+$ TwoWay=��� "  ��.���  � ��$ False����  � ��$ 0q���  � �� �� " ��.R��� $
 Once=�$
 True��$ 
Horizontal=�$��25���� "  ��.���  � ��$ Trebuchet MS)���  � �� �#0066CC��  � ��$
 10pt(���  � ��$ 0,5,5,0q� P�  �@=�HasError$
 true��. ���  �@�ToolTip ��  �� *Self+$) #(Validation.Errors)[0].ErrorContent���  �@ HelpText ��  �� *Self+$) #(Validation.Errors)[0].ErrorContent�P�  �@=�HasError$ false��. ���  �@�ToolTip ��  �� *Self+$ ToolTip.Content���  �@ HelpText ��  �� *Self+$ ToolTip.Content���  �� $% (SystemParameters.HighContrast)� true.a���  � ��# � ���� "  ��.���  � ��$ 0,5,5,0q���  �@��
IsReadOnly$
 True���� "  ��.���  � ��$ 5,5,5,0q���  � ��$ 5,2,5,2q���  � ��$ 80���� "   .���  � ��
 �������  � ��
 ���� ��  � ��$ Center=���  � ��$
 Left=���  � ��$
 Bold"���  � ��$
 10pt(���  � ��$ 5,0,5,0q� ��  �� $% (SystemParameters.HighContrast)� true.a���  � ��# � ����  � ��$ .5q���  � ��# � ����  � ��$ 	ExtraBold"��� "   8   .���  � ��$ Right=��� "   .���  �@��TextAlignment$ Right=� ��  �� $% (SystemParameters.HighContrast)� true.a���  � ��# � ����  � ��$
 Bold"���  � ��$ .5q��� "   8   .���  �@��TextAlignment$
 Left=��� "    8   .���  �@  ColumnHeaderStyle# �  �� "  ��.���  �@��Orientation$ 
Horizontal=���  � ��$ Right=��� "  ��8   .���  � ��$ 3����  �@��RadiusX$ 2����  �@��RadiusY$ 2���� "  ��8   .���  � ��$ 5,10,5,5q��� "  ��8   .���  � ��$ 5,10,5,0q��� "  ��8   .���  � ��$	 100����  � ��$ 70����  � ��$	 100����  � ��$ 70����  � ��$ 5,5,5,5q��� "  �.���  � ��$ Bottom=���  � ��$ 40���� "  ��.���  � ��$ 
10,10,10,0q���  � �� �	#33000000��  �@��RadiusX$ 2����  �@��RadiusY$ 2�� ��  �� $% (SystemParameters.HighContrast)� true.a���  � ��
 ���� 
� .��� $ 	LimeGreen��$ 0Q�� $ 	DarkGreen��$ 1Q��� "  ��.���  � ��$ 
10,10,10,0q���  � ��
 �   ���  � ��$	 0.5����  �@��RadiusX$ 2����  �@��RadiusY$ 2����  � ��8    ��  �� $% (SystemParameters.HighContrast)� true.a���  � ��# � ����  � ��$ 2����  � ��# � ���� $	
 0,0&�$	 0,1&�.��� $ 	#aaffffff��$ 0Q�� $ transparent��$ 1Q��� "  ��.���  � ��$ 
11,12,11,0q���  �@��RadiusX$ 1����  �@��RadiusY$ 1����  � ��8    ��  �� $% (SystemParameters.HighContrast)� true.a���  � ��
 ���� �� "  (�.���  � ��$ 30����  � ��$ 2q��� "  ��.���  � ��$
 10pt(���  � ��$ Ariel)���  �@��TextAlignment$ Center=���  � ��$ WordEllipsis=���  � ��$ WrapWithOverflow=���  � ��$	 100�� ��  �� $% (SystemParameters.HighContrast)� true.a���  � ��# � ���� "  ��.���  � ��$	 4pt(���  � ��$ Ariel)���  � ��
 �������  � ��$ 0,5,0,3q���  �@��TextAlignment$ Center=� ��  �� $% (SystemParameters.HighContrast)� true.a���  � ��# � ��
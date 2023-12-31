﻿function completeFlow()
{
  //opening the expenseit app. 
  open_app(true);
  
  //parse the index (0-2) of employee that are in project variables
  //these details to be entered before creating expenses  
  enterDetails(1); 
  
  //parse no of expenses to create in the report (max 4 expenses)
  createExpenses(4); 
  
  //parse the index which expense need to update with the project variable updateExpense
  updateExpense(6);
}


function enterDetails(empIndex)
{  
  mailId=Project.Variables.empInfoByIndex.emailId(empIndex);
  empId=Project.Variables.empInfoByIndex.empId(empIndex);
  costCenter=Project.Variables.empInfoByIndex.costCenter(empIndex);
  empGrp=Project.Variables.empInfoByIndex.empGrp(empIndex);
  empName=Project.Variables.empInfoByIndex.empName(empIndex);
    
  form1=Aliases.Proc_ExpenseIt.form1_Expenseit;
  form1.edit_Email.Keys("^a");
  form1.edit_Email.Keys(mailId);
  form1.edit_EmployeeNumber.Keys("^a");
  form1.edit_EmployeeNumber.Keys(empId);
  form1.combobox_CostCenter.Click();
  Aliases.Proc_ExpenseIt.FindChild("Name","ListItem("+costCenter+")",1).Click();
  empGrpSelection=form1.list_EmployeesGrp;
  reqGrp=empGrpSelection.FindChild(["ObjectType","Caption"],["RadioButton",empGrp],1);
  if(reqGrp.Exists)
  {
    reqGrp.Click();
    Log.Message("Employee Group '"+empGrp+"' is selected");
  }
  else  
    Log.Error("Required Employee Group '"+empGrp+"' not found, please check test data");
  
  empSelection=form1.list_EmployeeNames;
  reqEmp=empSelection.FindChild(["ObjectType","Caption"],["ListItem",empName],0);
  if(reqEmp.Exists)
  {
    reqEmp.Click();
    Log.Message("Employee Group '"+empName+"' is selected");
  }
  else  
    Log.Error("Required Employee Group '"+empName+"' not found, please check test data");
    
  form1.button_CreateExpenseReport.Click();
  
  form2=Aliases.Proc_ExpenseIt.form2_CreateExpenseReport;
  if(form2.edit_EmailAlias.Value==mailId)
    Log.Message("Email entered in form1 is matched in create report screen");
  else
    Log.Error("Email entered in form1 is not matched in create report screen");
  if(form2.edit_EmployeeNumber.Value==empId)
    Log.Message("Employee Name selected in form1 is matched in create report screen");
  else
    Log.Error("Employee Name Selected in form1 is not matched in create report screen"); 
  switch(costCenter){
    case "Sales":
        costCenterCode="4032";
        break;
    case "Marketing":
        costCenterCode="4034";
        break;
    case "Human Resources":
        costCenterCode="5061";
        break;
    case "Research and Development":
        costCenterCode="5062";
        break;
        
  }
  if(form2.edit_CostCenter.Value==costCenterCode)
    Log.Message("Cost Center Selected in form1 is matched in create report screen");
  else
    Log.Error("Cost Center Selected in form1 is not matched in create report screen"); 
}

function createExpenses(count)
{
  for(i=0;i<count;i++)
  {
    expType=Project.Variables.ExpensesDetails.expenseType(i);
    description=Project.Variables.ExpensesDetails.expenseDescrip(i);
    expCost=parseInt(Project.Variables.ExpensesDetails.expenseValue(i));
    
    curExpLabelId=form2.FindChild(["ObjectType","Caption"],["Text","Total Expenses ($):"],0).Id;
    curExpValue=parseInt(form2.FindChild(["ObjectType","Id"],["Text",curExpLabelId+1],0).Caption);
    
    expenses=form2.list_ExpenseReport;
    expCount=expenses.ChildCount;
    form2.button_AddExpense.Click();
    expenses.Refresh();
    if(expenses.ChildCount==expCount+1)
    {
      newExp=expenses.FindChild(["ObjectType","ControlIndex"],["ListItem",expCount],0);
      if(newExp.Exists)
      {
        if(newExp.Button("(Expense type)").Exists && newExp.Button("(Description)").Exists && newExp.Button("0").Exists)
        {
          Log.Message("New empty expense list item added");
          newExp.Button("(Expense type)").Click();
          newExp.Button("(Expense type)").Edit(0).Keys(expType);
          newExp.Button("(Expense type)").Edit(0).Keys("[Tab]");
          newExp.Button("(Description)").Edit(0).Keys(description);
          newExp.Button("(Description)").Edit(0).Keys("[Tab]");
          newExp.Button("0").Edit(0).Keys(expCost);
          newExp.Button("0").Edit(0).Keys("[Tab]");
        }
        else
          Log.Error("New expense list item is not added");
      }
      else
        Log.Error("New List item is not added to the end of expense list");
    }
    else
      Log.Error("New List item is not added on click of 'Add Expense' button");
  
    form2.Refresh();
    newExpLabelId=form2.FindChild(["ObjectType","Caption"],["Text","Total Expenses ($):"],0).Id;
    newExpValue=parseInt(form2.FindChild(["ObjectType","Id"],["Text",newExpLabelId+1],0).Caption);
    Project.Variables.totalExpense=newExpValue;
    if(newExpValue == curExpValue+expCost)
      Log.Message("Total Expenses value is correctly updated when new expense is added");
    else
      Log.Error("Total Expenses value is not correct when new expense is added");
    
    //checking the chart window and values
    form2.button_ViewChart.Click();
    form3=Aliases.Proc_ExpenseIt.form3_ChartWindow;
    curChartLabelId=form3.FindChild(["ObjectType","Caption"],["Text","Total Expenses ($):"],0).Id;
    curChartExpValue=parseInt(form3.FindChild(["ObjectType","Id"],["Text",curChartLabelId+1],0).Caption);
    if(form3.FindChild(["ObjectType","Id"],["Text",curChartLabelId-1],0).Caption==expCost &&
    form3.FindChild(["ObjectType","Id"],["Text",curChartLabelId-2],0).Caption==description &&
    curChartExpValue==newExpValue)
      Log.Message("Newly added expense is displaying correctly in the chart");
    else
      Log.Error("Newly added expense is not showing correctly in the chart");
    form3.button_Close.Click();
  }
}

function updateExpense(expIndex)
{
  
  //updating expense 
  newExpType=Project.Variables.UpdateExpense.expenseType(0)
  newDescription=Project.Variables.UpdateExpense.expenseDescription(0);
  newExpCost=parseInt(Project.Variables.UpdateExpense.expenseValue(0));
  
  form2=Aliases.Proc_ExpenseIt.form2_CreateExpenseReport;
  //checking the chart window and values
  expenses=form2.list_ExpenseReport;
  expCount=expenses.ChildCount;
  editExp=expenses.FindChild(["ObjectType","ControlIndex"],["ListItem",expIndex-1],0);
  editExpType=editExp.FindChild(["ObjectType","Id"],["Button",0],0);
  editExpDesc=editExp.FindChild(["ObjectType","Id"],["Button",1],0);
  editExpValue=editExp.FindChild(["ObjectType","Id"],["Button",2],0);
  preExpValue=parseInt(editExpValue.Value);
  editExpType.Click();
  editExpType.Click();
  editExpType.Edit(0).Keys(newExpType);
  editExpType.Edit(0).Keys("[Tab]");
  editExpDesc.Edit(0).Keys(newDescription);
  editExpDesc.Edit(0).Keys("[Tab]");
  editExpValue.Edit(0).Keys(newExpCost);
  
  form2.Refresh();
  updatedExpLabelId=form2.FindChild(["ObjectType","Caption"],["Text","Total Expenses ($):"],0).Id;
  updatedExpValue=parseInt(form2.FindChild(["ObjectType","Id"],["Text",updatedExpLabelId+1],0).Caption);
  
  if(updatedExpValue == Project.Variables.totalExpense - preExpValue + newExpCost)
    Log.Message("Total Expenses value is correctly updated when existing expense is updated");
  else
    Log.Error("Total Expenses value is not correct when existing expense is updated");
    
  //checking in chart  
  form2.button_ViewChart.Click();
  
  form3=Aliases.Proc_ExpenseIt.form3_ChartWindow;
  newChartLabelId=form3.FindChild(["ObjectType","Caption"],["Text","Total Expenses ($):"],0).Id;
  newChartExpValue=parseInt(form3.FindChild(["ObjectType","Id"],["Text",newChartLabelId+1],0).Caption);
  if(form3.FindChild(["ObjectType","ObjectIdentifier"],["Text",newExpCost],0).Exists &&
  form3.FindChild(["ObjectType","ObjectIdentifier"],["Text",newDescription],0).Exists &&
  newChartExpValue==updatedExpValue)
    Log.Message("Updated expense is displaying correctly in the chart");
  else
    Log.Error("Updated expense is not showing correctly in the chart");
  
  form3.button_Close.Click();
  form2.button_Ok.Click();
  Sys.Process("ExpenseIt9").Dialog("ExpenseIt Standalone").Button("OK").Click();
  
  TestedApps.ExpenseIt.Close();
}


//open app
function open_app(a)
{
    appWindow=Aliases.Proc_ExpenseIt.form1_Expenseit;
    if(appWindow.Exists==true)
    {
        appWindow.Parent.Terminate();
    }
    TestedApps.ExpenseIt.Run();
    Delay(2000,"Delaying execution to open app");
    
    if(appWindow.Exists)
      Log.Message("ExpenseIt application is launched successfully");
    else
      Log.Error("ExpenseIt application launch failed");
}
  

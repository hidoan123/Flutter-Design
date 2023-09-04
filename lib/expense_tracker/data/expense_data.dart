import '../models/expense_item.dart';

class ExpenseData{
  //List of All expense
  List<ExpenseItem> overallExpenseList = [];
  //get expense list
  List<ExpenseItem> getAllExpenseList()
  {
    return overallExpenseList;
  }
  // add expense
  void addNewExpense(ExpenseItem newExpense)
  {
    overallExpenseList.add(newExpense);
  }
  //delete expense
  void deleteExpense(ExpenseItem expense)
  {
    overallExpenseList.remove(expense);
  }
  // gte weekday from dateTime object(mon, tue, )
  String getDayName(DateTime dateTime)
  {
    switch(dateTime.weekday)
    {
      case 1:
        return 'Mon';
      case 2:
        return 'Tues';
      case 3:
        return 'Wed';
      case 4:
        return 'Thur';
      case 5:
        return 'Fri';
      case 6:
        return 'Sat';
      case 7:
        return 'Sun';
      default:
        return '';
    }
  }
  // get the date for the start of the week
  DateTime startOfWeekDate()
  {
    DateTime? startOfWeek;
    //get today date
    DateTime today = DateTime.now();

    //
    for(int i = 0; i < 7; i++)
      {
        if(getDayName(today.subtract(Duration(days: i))) == 'Sun')
          {
            startOfWeek = today.subtract(Duration(days: i));
          }
      }
    return startOfWeek!;
  }
}
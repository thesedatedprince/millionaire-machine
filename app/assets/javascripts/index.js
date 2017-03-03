
$(document).ready(function () {

  //this is an IIEF that runs immediately when document is ready. It gets the data from the database and populates the chart.
  (function(){
    //instantiate a new Income object
    var income = new Income();
    //instantiate a new Expenditure object
    var expenditure = new Expenditure();
    //instantiate a new Projecton object
    var projection = new Projection();
    //instantiate a new Goal object
    var goal = new Goal();
    //instantiate a new Calculator object
    var calculator = new Calculator();

    //this executes the function only after all ajax requests are resolved. Response text, status and jqHR object returned as an array for each resolved request.
    $.when(income.getIncomeFromDB(), expenditure.getExpenditureFromDB(), projection.getProjFromDB(),goal.getGoalFromDB()).done(function(incomeData,expData, projData,goalData){


      //prepare the actual income/expend data for the charts
      //these are the data series for actuals
      var incomeDataArray = income.constructIncomeArray(incomeData[0]);
      var expDataArray = expenditure.constructExpendArray(expData[0]);

      //these are the pure income/exp data to calc running balances
      var pureIncomeArray = income.getPureIncomeArray(incomeData[0]);
      var pureExpArray = expenditure.getPureExpArray(expData[0]);
      //console.log(pureIncomeArray);
      //console.log(pureExpArray);

      //prepare the projected monthly income/expend data for the charts
      var jsonIEObj = JSON.parse(JSON.stringify(projData[0]));
      console.log(jsonIEObj);
      var projMonthlyIncome = jsonIEObj[0].projected_monthly_income;
      var projMonthlyExpend = jsonIEObj[0].projected_monthly_expenditure;
      var projNetIncome = (projMonthlyIncome - projMonthlyExpend);
      var projStartDate = jsonIEObj[0].start_date;

      //prepare the goal data for the charts
      var jsonGoalObj = JSON.parse(JSON.stringify(goalData[0]));
      var goalAmount = jsonGoalObj[0].amount;
      var goalStartDate = jsonGoalObj[0].start_date;
      var goalTargetDate = jsonGoalObj[0].target_date;

      //generate the projected dates for the charts
      var numMonthsToProject = 12;
      var projectedDateArray = projection.constructDateArray(projStartDate,numMonthsToProject);

      //constuct the projected data points
      var projIncomeDataArray = projection.constructProjectedItemDataArray(projMonthlyIncome,projectedDateArray);
      var projExpendDataArray = projection.constructProjectedItemDataArray(projMonthlyExpend,projectedDateArray);
      var projNetIncomeDataArray = projection.constructProjectedNetIncomeArray(projNetIncome,projectedDateArray);


      //the actual and projected data points for the graphs
      var chartDataActuals = [incomeDataArray,expDataArray];
      var chartDataProjected = [projIncomeDataArray,projExpendDataArray]

      //get the chart and populate with the above data series
      getChart(chartDataActuals,chartDataProjected,projNetIncomeDataArray);

      //prepare the data for the goal progress bar
      var runningBalance = calculator.calcNetIncome(pureIncomeArray,pureExpArray);
      var percentOfGoal = (runningBalance/goalAmount)*100;

      moveProgressBar(percentOfGoal);

    });


  })();

});

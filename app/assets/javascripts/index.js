
$(document).ready(function () {

  //this is an IIEF that runs immediately when document is ready. It gets the data from the database and populates the chart.
  (function(){
    //instantiate a new Income object
    var income = new Income();
    //instantiate a new Expenditure object
    var expenditure = new Expenditure();

    //this executes the function only after all ajax requests are resolved. Response text, status and jqHR object returned as an array for each resolved request.
    $.when(income.getIncomeFromDB(), expenditure.getExpenditureFromDB()).done(function(incomeData,expData){

      //prepare the data for the charts
      var incomeDataArray = income.constructIncomeArray(incomeData[0]);
      var expDataArray = expenditure.constructExpendArray(expData[0]);
      var chartData = [incomeDataArray,expDataArray];

      //get the charts and populate with the data
      getChart(chartData);

      //prepare the data for the progress bar
      var goalAmount = 100; //to be retrieved from the third ajax request
      var runningBalance = 30; //to be determined from the calculator engine
      var percentOfGoal = (runningBalance/goalAmount)*100;

      moveProgressBar(percentOfGoal);

    });

    // function getGoal(){
    //
    //   return $.ajax({
    //     url: '/goal',
    //     dataType: 'json',
    //     success: function(data){
    //       console.log("data loaded")
    //     }
    //   });
    //
    // }

  })();

});

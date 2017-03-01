
$(document).ready(function () {

  //this is an IIEF that runs immediately when document is ready. It gets the data from the database and populates the chart.
  (function(){

    //this executes the function only after all ajax requests are resolved. Response text, status and jqHR object returned as an array for each resolved request.
    $.when(getIncome(), getExpenditure()).done(function(incomeData,expData){

      var chartData = constructChartDataArray(incomeData[0],expData[0]);
      getChart(chartData);

      //dummy data for the progress bar view
      var goalAmount = 100; //to be retrieved from the third ajax request
      var runningBalance = 30; //to be determined from the calculator engine
      var percentOfGoal = (runningBalance/goalAmount)*100;

      moveProgressBar(percentOfGoal);

    });

    //these are the ajax requests made via the controllers expressed as functions that return the value from calling the ajax method
    function getIncome(){

      return $.ajax({
        url: '/incomes',
        dataType: 'json',
        success: function(data){
          console.log("data loaded")
        }
      });

    }

    function getExpenditure(){

      return $.ajax({
        url: '/expenditures',
        dataType: 'json',
        success: function(data){
          console.log("data loaded")
        }
      });

    }

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

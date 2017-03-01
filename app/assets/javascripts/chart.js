
//Puts the data into a form consumable by the chart
function constructChartDataArray(incomeData,expData){

  var incomeDataArray = [];
  var expDataArray = [];
  var dateArray = [];

  for (i=0; i < incomeData.length; ++i){

    incomeDataArray.push(incomeData[i].amount);
    dateArray.push(incomeData[i].date);
  }

  for (i=0; i < expData.length; ++i){

    expDataArray.push(expData[i].amount);

  }
  return [dateArray, incomeDataArray, expDataArray];
}


function getChart(chartData){

  Highcharts.setOptions({
        chart: {
            backgroundColor: {
                linearGradient: [0, 0, 500, 500],
                stops: [
                    [0, 'rgb(255, 255, 255)'],
                    [1, 'rgb(240, 240, 255)']
                    ]
            },
            borderWidth: 2,
            plotBackgroundColor: 'rgba(255, 255, 255, .9)',
            plotShadow: true,
            plotBorderWidth: 1
        }
    });

  var myChart = Highcharts.chart('chart-container', {
      chart: {
          type: 'line'
      },
      title: {
          text: 'Income and Expenditure'
      },
      xAxis: {
          categories: chartData[0]
      },
      yAxis: {
          title: {
              text: 'GBP (£)'
          }
      },
      series: [{
          name: 'Income',
          data: chartData[1]
      }, {
          name: 'Expenditure',
          data: chartData[2]
      }]
  });

}

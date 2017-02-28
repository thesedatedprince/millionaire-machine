
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
          type: 'column'
      },
      title: {
          text: 'Income and Expenditure'
      },
      xAxis: {
          categories: ['Jan', 'Feb', 'Mar', 'Apr']
      },
      yAxis: {
          title: {
              text: 'GBP (£)'
          }
      },
      series: [{
          name: 'Income',
          data: chartData[0]
      }, {
          name: 'Expenditure',
          data: chartData[1]
      }]
  });

}

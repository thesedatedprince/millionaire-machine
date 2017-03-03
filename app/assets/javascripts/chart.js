

function getChart(actualIE, projIE, projNI){

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
          categories: []
      },
      yAxis: {
          title: {
              text: 'GBP (£)'
          }
      },
      series: [{
          name: 'Actual Income',
          data: actualIE[0],
          color: '#00FF00'
      }, {
          name: 'Actual Expenditure',
          data: actualIE[1],
          color: '#FF00FF'
      }, {
          name: 'Projected Income',
          data: projIE[0]
      },{
          name: 'Projected Expenditure',
          data: projIE[1]
      },{
          name: 'Projected Net Income',
          data: projNI[0]
      }]
  });

}

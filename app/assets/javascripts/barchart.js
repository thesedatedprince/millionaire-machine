

function getBarChart(actualIE, projIE, projNI){

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
    title: {
        text: 'Combination chart'
    },
    xAxis: {
        categories: []
    },
    labels: {
        items: [{
            html: 'Total fruit consumption',
            style: {
                left: '50px',
                top: '18px',
                color: (Highcharts.theme && Highcharts.theme.textColor) || 'black'
            }
        }]
    },
    series: [{
        type: 'column',
        name: 'Income (proj)',
        data: projIE[0],
    }, {
        type: 'column',
        name: 'Expenditure (proj)',
        data:  projIE[1]
    }, {
        type: 'spline',
        name: 'Net Income (proj)',
        data: projNI[0],
        marker: {
            lineWidth: 2,
            lineColor: Highcharts.getOptions().colors[3],
            fillColor: 'white'
        }
    }, {
        type: 'pie',
        name: 'Total consumption',
        data: [{
            name: 'Jane',
            y: 0,
            color: Highcharts.getOptions().colors[0] // Jane's color
        }, {
            name: 'John',
            y: 23,
            color: Highcharts.getOptions().colors[1] // John's color
        }, {
            name: 'Joe',
            y: 19,
            color: Highcharts.getOptions().colors[2] // Joe's color
        }],
        center: [100, 80],
        size: 100,
        showInLegend: false,
        dataLabels: {
            enabled: false
        }
    }]
});

  // var myChart = Highcharts.chart('chart-container', {
  //     chart: {
  //         type: 'line'
  //     },
  //     title: {
  //         text: 'Income and Expenditure'
  //     },
  //     xAxis: {
  //         categories: []
  //     },
  //     yAxis: {
  //         title: {
  //             text: 'GBP (£)'
  //         }
  //     },
  //     series: [{
  //         name: 'Actual Income',
  //         data: actualIE[0],
  //         color: '#00FF00',
  //         type: 'column'
  //     }, {
  //         name: 'Actual Expenditure',
  //         data: actualIE[1],
  //         color: '#FF00FF'
  //     }, {
  //         name: 'Projected Income',
  //         data: projIE[0]
  //     },{
  //         name: 'Projected Expenditure',
  //         data: projIE[1]
  //     },{
  //         name: 'Projected Net Income',
  //         data: projNI[0]
  //     }]
  // });

}

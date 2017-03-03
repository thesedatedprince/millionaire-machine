

function getProjectedBarChart(){

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

    var myChart = Highcharts.chart('proj-chart-container', {
    title: {
        text: 'Projected Income and Expenditure'
    },
    xAxis: {
        categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sept', 'Oct', 'Nov', 'Dec']
    },
    labels: {
        items: [{
            html: '',
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
        data: [1000,1250,1500,1350,1750,1500,1500,1500,1650,700,800],
    }, {
        type: 'column',
        name: 'Expenditure (proj)',
        data:  [800,700,1400,1200,1300,1500,1100,600,1000,500,750],
    }, {
        type: 'spline',
        name: 'Net Income (proj)',
        data: [200,550,100,150,450,0,400,900,650,200,50],
        marker: {
            lineWidth: 2,
            lineColor: Highcharts.getOptions().colors[3],
            fillColor: 'white'
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

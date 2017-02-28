
$(document).ready(function () {

//Put the data into  form consumable by the chart
function constructData(data) {
  var dataContainer = []

  $.each( data, function( key, val ) {
    dataContainer.push(val);
  });

  console.log(dataContainer);
  return dataContainer
}

//this is an IIFE that runs immediately when document is ready. It gets the data and populates the chart with it.
(function(){

  $.getJSON("example.json", function (data) {

    var chartData = constructData(data);

    getChart(chartData);

    });
  })();
});

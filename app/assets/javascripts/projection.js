(function(exports){

function Projection(){

}

Projection.prototype.constructProjectedItemDataArray = function(projFigure, projDates){

  var output = [];

  for (i=0; i< 12; i++){
    output.push([projDates[i],projFigure]);
  }
  return output;
}

Projection.prototype.constructProjectedNetIncomeArray = function(projNetIncome, projDates){

  var output = [];

  for (i=0; i< 12; i++){
    output.push([projDates[i],projNetIncome]);
  }
  return output;

}

Projection.prototype.constructDateArray = function(startDate, months){

  var d = new Date(startDate);
  var dateArray = [];

  for (i = 0; i < months; i++){
    d.setMonth(d.getMonth() + 1);
    dateArray.push(d.getDate() + "-" + (d.getMonth() + 1) + '-' + d.getFullYear())
  }
  return dateArray;
}

Projection.prototype.getProjFromDB = function(){

    return $.ajax({
      url: '/projections',
      dataType: 'json',
      success: function(data){
        console.log("data loaded")
      }
    });
}

exports.Projection = Projection;


})(this);

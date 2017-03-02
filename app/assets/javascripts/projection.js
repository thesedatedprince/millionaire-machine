(function(exports){

function Projection(){

}

Projection.prototype.constructDateArray = function(startDate){

  var d = startDate;
  var dateArray = [];

  for (i = 0; i < 12; i++){
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

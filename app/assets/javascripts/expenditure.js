(function(exports){


function Expenditure(){

  }

Expenditure.prototype.constructExpendArray = function(dataObj){

  var output = [];

  for (i=0; i < dataObj.length; ++i){
    var dataPoint = [dataObj[i].date, dataObj[i].amount];
    output.push(dataPoint);
  }

  return output
}

Expenditure.prototype.getPureExpArray = function(dataObj){

  var output = [];

  for (i=0; i < dataObj.length; ++i){
    output.push(dataObj[i].amount);
  }

  return output

}

Expenditure.prototype.getExpenditureFromDB = function(){

    return $.ajax({
      url: '/expenditures',
      dataType: 'json',
      success: function(data){
        console.log("data loaded")
      }
    });
}

exports.Expenditure = Expenditure




})(this);

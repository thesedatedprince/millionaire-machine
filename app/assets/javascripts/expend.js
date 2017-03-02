(function(exports){


function Expenditure(){

  }

Expenditure.prototype.constructExpendArray = function(dataObj){

  var expDataArray = [];

  for (i=0; i < dataObj.length; ++i){
    var dataPoint = [dataObj[i].date, dataObj[i].amount];
    expDataArray.push(dataPoint);
  }

  return expDataArray
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

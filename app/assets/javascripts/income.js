(function(exports){


function Income(){

  }

Income.prototype.constructIncomeArray = function(dataObj){

  var output = [];

  for (i=0; i < dataObj.length; ++i){
    var dataPoint = [dataObj[i].date, dataObj[i].amount];
    output.push(dataPoint);
  }

  return output
}

Income.prototype.getPureIncomeArray = function(dataObj){

  var output = [];

  for (i=0; i < dataObj.length; ++i){
    output.push(dataObj[i].amount);
  }
  
  return output

}

Income.prototype.getIncomeFromDB = function(){

    return $.ajax({
      url: '/incomes',
      dataType: 'json',
      success: function(data){
        console.log("data loaded")
      }
    });
}

exports.Income = Income


})(this);

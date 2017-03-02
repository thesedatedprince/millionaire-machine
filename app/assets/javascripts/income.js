(function(exports){

//
//   function Calculator(){
//
//   }
//
//   Calculator.prototype.calcNetIncome = function(data){
//
//     var dataArray =  data;
//     var incomeData = dataArray[0];
//     var expData = dataArray[0];
//
//     var netIncomeData = []
//     for(i=0; i<dataArray.length; i++){
//       netIncomeData[i] = dataArray[1]
//     }
//
//
//   }
//


function Income(){

  }

Income.prototype.constructIncomeArray = function(dataObj){

  var incomeDataArray = [];

  for (i=0; i < dataObj.length; ++i){
    var dataPoint = [dataObj[i].date, dataObj[i].amount];
    incomeDataArray.push(dataPoint);
  }

  return incomeDataArray
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

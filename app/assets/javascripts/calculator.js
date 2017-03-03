(function(exports){

  function Calculator(){

  }

Calculator.prototype.calcNetIncome = function(income, exp){

  var incomeTotal = income.reduce(add,0);
  var expTotal = exp.reduce(add,0);

  return incomeTotal - expTotal;

}

function add(a,b){
  return a + b;
}

exports.Calculator = Calculator

})(this);

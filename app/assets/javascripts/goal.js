(function(exports){

  function Goal(){

  }

  Goal.prototype.getGoalFromDB = function(){

    return $.ajax({
        url: 'goals',
        dataType: 'json',
        success: function(data){
          console.log("data loaded")
        }
    });
  }

exports.Goal = Goal

})(this);

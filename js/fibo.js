var fibonacci = function(n, cb) {
  limit = n || 10;

  var addFib = function(n) {
    return n < 2 ? n : addFib(n-1) + addFib(n-2);
  };

  for(var i=1; i <= limit; i++){
    if (cb){
      cb(addFib(i));
    } else {
      console.log(addFib(i));
    }
  }
}
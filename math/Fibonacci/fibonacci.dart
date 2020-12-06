void main(){
  print(fibonacci(4)); // [1, 1, 2, 3, 5]
}

List<int> fibonacci(n){
  if(n <= 0) {
    return [];
  }
  var fibSequence = [1];

  var currentValue = 1;
  var previousValue = 0;

  if(n == 1 ){
    return fibSequence;
  }

  var iterationCounter = n - 1;

  while(iterationCounter >= 0){
    currentValue += previousValue;
    previousValue = currentValue - previousValue;

    fibSequence.add(currentValue);
    iterationCounter --;
  }
  return fibSequence;
}

void main(){
  print(factorial(4)); // 24
}

int factorial(int number){
  var result = 1;
  for(int i = 2; i<=number; i++){
    result *= i;
  }
  return result;
}

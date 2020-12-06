void main(){
  print(isPowerOfTwo(7)); // false
}

bool isPowerOfTwo( number){
  if(number < 1){
    return false;
  }
  var dividedNumber = number;
  while(dividedNumber != 1){
    if(dividedNumber % 2 != 0){
      return false;
    }
    dividedNumber/=2;
  }
  return true;
}

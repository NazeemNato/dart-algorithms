
void main() {
  print(gcdArray([2, 4, 6, 8, 16]));
  // 2
  print(gcd(4,2));
  //2
}


gcd(num1,num2){
  if(num1==0 || num2 == 0)
    return 0;
  if(num1 == num2)
    return num1;
  if(num1 > num2)
    return gcd(num1 - num2, num2);
  return gcd(num1, num2 - num1);
}

gcdArray(List numbers){
  if(numbers.length == 0) return;
  int result = numbers[0];
  for(int i = 1; i < numbers.length; i++){
    result = gcd(numbers[i], result);
  }
  return result;
}
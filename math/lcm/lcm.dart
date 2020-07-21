
void main() {
  print(lcmArray([1, 2, 8, 3]));
  // 24
  print(lcm(15,20));
  //60
}

lcm(num1,num2){
  if(num1==0 || num2 == 0)
    return 0;
  num1 = num1.abs();  
  num2 = num2.abs();
  return (num1*num2)/gcd(num1, num2);

}
lcmArray(List numbers){
  if(numbers.length == 0) return;
  int result = numbers[0];
  for (int i = 1; i < numbers.length; i++) {
    result = lcm(numbers[i],result);
  }
  return result;
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
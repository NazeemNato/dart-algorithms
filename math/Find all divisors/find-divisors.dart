
void main() {
	print(findDivisors(100));
	//[1, 2, 4, 5, 10, 20, 25, 50, 100]
}


findDivisors(number){
  List divisors = [];
  int i = 1;
  while(i<=number){
    if(number%i == 0)
      divisors.add(i);
    i++;
  }
  return divisors;
}
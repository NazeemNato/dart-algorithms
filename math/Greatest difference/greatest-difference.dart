void main(){
  print(greatestDifference([2, 4, 6, 8, 16]));

}
greatestDifference(List numbers){
  if(numbers.length == 0) return;
  int largest = numbers[0];
  int length = numbers.length;
  int smallest = numbers[0];
  for(int i = 0; i < length; i++){
    int number = numbers[i];
    
    if (number > largest) {
      largest = number;
    }
    if (number < smallest) {
      smallest = number;
    }
  }
  return largest-smallest;
}

void main() {
  List lst =[1,2,3,4,8,5,9,3,2,10,4,8,100,92321,8484,0];
  print(findMinValue(lst)); // output 0
  List lst =[1,2,3,4,8,5,9,3,2,10,4,8,100,92321,8484,0];
  print(findMaxValue(lst)); // output 92321

}

findMaxValue(List arr){
  if(arr.length > 0){
    int max = arr[0];
    for(int i = 0; i < arr.length;i++){
      if(compareFn(max,arr[i]) == -1)
        max = arr[i];
    }
    return max;
  }
  return 'undefined';
}
findMinValue(List arr){
  if(arr.length > 0){
    int min = arr[0];
    for(int i = 0; i < arr.length;i++){
      if(compareFn(min,arr[i]) == 1)
        min = arr[i];
    }
    return min;
  }
  return 'undefined';
}

compareFn(a,b){
  if(a==b)
    return 0;
  return a < b ? -1 : 1;
}
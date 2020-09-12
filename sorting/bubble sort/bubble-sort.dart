void main() {
  List lst =[64, 34, 25, 12, 22, 11, 90];
  print(bubbleSort(lst)); // [11, 12, 22, 25, 34, 64, 90]
}

bubbleSort(List arr){
  if(arr.length == 0)
    return;
  int n = arr.length;
  for(int i = 0;i<n;i++){
    for(int j =0 ; j < n - i-1;j++){
       if (compareFn(arr[j] , arr[j + 1]) == 1) {
        swap(arr, j,j+1);
      }
    }
  }
  return arr;
}

compareFn(a,b){
  if(a==b)
    return 0;
  return a < b ? -1 : 1;
}

swap(List arr,a,b){
  var tem = arr[a];
  arr[a]=arr[b];
  arr[b]=tem;
}
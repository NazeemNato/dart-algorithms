void main() {
	List lst =[1,2,3,4,8,5,9,3,2,10];
  	print(binarySearch(lst,2));
}


compareFn(a,b){
  if(a==b)
    return 0;
  return a < b ? -1 : 1;
}
binarySearch(array, value){
  int low = 0;
  int high = array.length;
  while(low<=high){
    int mid = (low+high) ~/ 2;
    int element = array[mid];
    if(compareFn(element,value)==-1)
      low = mid +1;
    else if(compareFn(element,value)== 1)
      high = mid - 1;
    else
      return mid;
  }
  return -1;
}
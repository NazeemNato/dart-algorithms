void main(){
	var lst =[1,2,3,4,4,8,5];
  	print(sequentialSearch(lst,10));
  	//output: null
  	var lst =[1,2,3,4,4,8,5];
  	print(sequentialSearch(lst,5));
  	//output: 6
}

equalFn(a, b) {
  return a == b;
}
sequentialSearch(List arr,val){
  for(int i = 0;i<arr.length;i++){
    if(equalFn(val,arr[i])){
      return i;
    }
  }
}
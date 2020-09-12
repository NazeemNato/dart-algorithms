void main(){
  var lst =[64, 34, 25, 12, 22, 11, 90];
  print(selectionSort(lst));
}
swap(list,i,j){
  var temp = list[i];
  list[i] = list[j];
  list[j] = temp;
}
List<dynamic> selectionSort(List list){
  var length = list.length;
  int min;
  for(int i = 0; i < length; i++){
    min = i;
    for(int j = i + 1; j < length; j++){
      if(list[j] < list[min]){
        min = j;
      }
    }
    if(i != min){
      swap(list,i,min);
    }
  }
  return list;
}
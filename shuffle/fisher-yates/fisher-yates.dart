import 'dart:math';

void main(){
	List list = [1,23,4,03,2];
	List fisher_yates = shuffle(list);
	print(fisher_yates);
}

swap(List arr,a,b){
  var tem = arr[a];
  arr[a]=arr[b];
  arr[b]=tem;
}

List shuffle(List arr){
   int _currentIndex = arr.length -1;
   while(_currentIndex != 0){
     int _randomNumber= Random().nextInt(_currentIndex);
     swap(arr,_currentIndex,_randomNumber);
     _currentIndex--;
   }
   return arr;
}
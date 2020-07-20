void main(){

	var capacity = 50;
  	var weights = [10, 20, 30];
  	var values = [60, 100, 120];
  	var n = values.length;
  	print(knapSack(capacity,weights,values,n));
  	//220
}
 // A naive recursive implementation 
 // of 0-1 Knapsack Problem 
  
 // Returns the maximum value that  
 // can be put in a knapsack of  
 // capacity W 
int knapSack(capacity, weights, values, n) {
  if (n == 0 || capacity == 0) 
    return 0; 
  if (weights[n - 1] > capacity) 
    return knapSack(capacity, weights, values, n - 1);
  var a = values[n - 1] + knapSack(capacity - weights[n - 1], weights,values, n - 1);
  var b = knapSack(capacity, weights, values, n - 1);
  return a > b ? a : b;
}
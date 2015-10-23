var math = function(evenArray, oddArray) {
 var evenSum = 0;
 var oddSum = 0;
 var even_size = evenArray.length;
 var odd_size = oddArray.length;
  
  for (var count = 0; count <= even_size; count++)
    evenSum = evenArray[count] + evenSum;
    return evenSum;
  
  for (var count = 0; count <= odd_size; count++)
    oddSum = oddArray[count] + oddSum;
    return oddSum;
  
  var evenMean = evenSum / even_size;
    return evenMean;
  
  var oddMean = oddSum / odd_size;
    return oddMean
  
  var evenSort = evenArray.sort();
  var x = even_size / 2;
  var  evenMedian = (evenSort[x] + evenSort[x-1]) / 2;
    return evenMedian
  
  var oddSort = oddArray.sort();
  var y = (odd_size / 2).floor;
  var oddMedian = oddSort[y];  
  
}
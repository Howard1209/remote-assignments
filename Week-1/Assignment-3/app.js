function countAandB(input) {
    let count = 0;
    for (let i =0; i<input.length; i++){
      if (input[i] == 'a' || input[i] == 'b') count++;
    }
  	return count;
}


function toNumber(input){
    for (let i =0; i<input.length; i++){
      input.splice(i,1,input[i].charCodeAt(0)-96);
    }
    return input;
}


let input1 =['a', 'b', 'c', 'a', 'c', 'a', 'c'];
console.log(countAandB(input1));
console.log(toNumber(input1));


let input2 = ['e', 'd', 'c', 'd', 'e'];
console.log(countAandB(input2));
console.log(toNumber(input2));
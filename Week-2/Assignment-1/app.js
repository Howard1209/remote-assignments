function max(numbers) {
    let maxN = 0;
    for (let i = 0; i < numbers.length; i++) {
        if (numbers[i] > maxN) maxN = numbers[i];
    }
    return maxN
}
function findPosition(numbers, target) {
    let position = -1;
    for (let i = 0; i < numbers.length; i++) {
        if (numbers[i] === target) {
            position = i;
            break;
        }
    }
    return position
}
console.log(max([1, 2, 4, 5]));
console.log(max([5, 2, 7, 1,6]));

console.log(findPosition([5, 2, 7, 1, 6], 5));
console.log(findPosition([5, 2, 7, 1, 6], 7));
console.log(findPosition([5, 2, 7, 7, 7, 1, 6], 7));
console.log(findPosition([5, 2, 7, 1, 6], 8));
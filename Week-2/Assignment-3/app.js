function count(input) {
    let ans = {};
    input.forEach(char => {
        if (ans[char]) {
            ans[char] += 1;
        } else {
            ans[char] = 1;
        }
    });
    return ans;
}
let input1 = ["a", "b", "c", "a", "c", "a", "x"];
console.log(count(input1));
// should print {a:3, b:1, c:2, x:1}

function groupByKey(input) {
    return input.reduce((ans, curr)=> {
        if (ans[curr.key]) {
            ans[curr.key] += curr.value;
        } else{
            ans[curr.key] = curr.value;
        }
        return ans;
    }, {})    
}
let input2 = [
{ key: "a", value: 3 },
{ key: "b", value: 1 },
{ key: "c", value: 2 },
{ key: "a", value: 3 },
{ key: "c", value: 5 },
];
console.log(groupByKey(input2)); 
// should print {a:6, b:1, c:7}
function twoSum(nums, target) { // your code here
    ans = [];
    for (let i = 0; i < nums.length; i++) {
        let newTarget = target - nums[i];
        if (nums.indexOf(newTarget, i) !== -1) {
            ans.push(i, nums.indexOf(newTarget, i));
            return ans
        }
    }
    return null;
    
    // const map = new Map();
  
    // for (let i = 0; i < nums.length; i++) {
    //     const complement = target - nums[i];
    //     if (map.has(complement)) return [map.get(complement), i];
    //     map.set(nums[i], i);
    //     console.log(map.size);
    // }
    // return null;
}
console.log(twoSum([2, 7, 11, 15], 17));
/*
For example:
twoSum([2, 7, 11, 15], 9); Should returns:
[0, 1]
Because:
nums[0]+nums[1] is 9
*/
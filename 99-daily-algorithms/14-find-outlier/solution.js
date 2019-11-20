// Christian's 

function findOutlier(arr){
    let even = arr.filter(num => num%2===0)
    let odd = arr.filter(num => num%2===1)

    if(even.length === 1){
        return even[0]
    }
    else return odd[0]
}

console.log(findOutlier([1,3,5,6]))
console.log(findOutlier([2,4,6,9]))
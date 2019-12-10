// Rachid

function minMax(arr){
    let i = arr.indexOf(Math.max(...arr))
    const sum = arr.reduce(reducer)
    const min = sum-arr[i]
    i = arr.indexOf(Math.min(...arr))
    const max = sum-arr[i]

    return `${min} ${max}`
}

const reducer = (accum, currentVal) => accum+currentVal


console.log(minMax([1,2,3,4,5]))
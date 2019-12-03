// alisa's solution

function birthday(arr, d, m) {
    let counter = 0
    // let c2 = 0
    let n = arr.length
    for(let i=0; i<n-m+1;i++){
        let sum = 0
        // console.log(`it ran thru the top loop ${++c2} times`)
        for(let j=i; j<m; j++){
            sum += arr[j]
            console.log("the sum, inside of the iteration: ",sum)
        }
        if(sum === d){
            counter++
        }
    }
    return counter
}

console.log(birthday([1,2,4,1,2], 3, 2))

console.log("done")
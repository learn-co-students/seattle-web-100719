// andy

function mostSeen(arr){
    // first approach was an iterative solution:
    // set counters for each bird
    // iterate thru array and increase each counter as it comes across each bird
    // second idea was a hash
    let counter =  {[arr[0]]: 1}
    let max = [arr[0], 1]

    for(let i=1; i< arr.length; i++){
        if(counter[arr[i]]){
            counter[arr[i]] += 1
            if(max[1] < counter[arr[i]]){
                max = [arr[i], counter[arr[i]]]
            }
        }
        else {
            counter[arr[i]] = 1
        }
    }
    return max[0]
}


console.log(mostSeen([1,1,2,2,3]))
console.log(mostSeen([1,1,2,2,2,3]))
console.log(mostSeen([1,1,2,2,3,3,4,4,5,5,5,5,5,5,5]))
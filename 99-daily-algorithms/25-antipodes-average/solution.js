// Matt

function antipodes(arr){
    let mid = arr.length%2
    if(mid === 0){
        mid=arr.length/2
        
    }
}

// rachid's addition 

function antipodesAverage(arr) {
    const halfArrLength = Math.floor(arr.length/2)
    const arr1 = arr.slice(0, halfArrLength)
    const arr2 = arr.reverse().slice(0, halfArrLength)
return arr1.map((n,i) => (n+arr2[i])/2)	
}
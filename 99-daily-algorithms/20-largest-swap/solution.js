// soumya


function checkNum(num){
    // get number
    // convert to string
    // split num + reverse
    // rejoin number and check greater than/less than
    let number = parseInt(num.toString().split("").reverse().join(""))

    if(num>=number){
        return true
    }
    else return false
}

console.log(checkNum(99))
console.log(checkNum(27))

// rachid'

function rachidsCheckNum(num){
    if(num/10>=num%10){
        return true
    }
    else return false
}

console.log(rachidsCheckNum(99))
console.log(rachidsCheckNum(27))

// alisa

function alisasCheckNum(num){
    
}
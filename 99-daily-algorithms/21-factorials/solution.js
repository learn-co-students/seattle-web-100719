// An Iterative Approach (from Cha and Soumya)

function whileLoopFactorial(num){
    let factoria = 1
    let counter = 0
    while (counter<num){
        factoria = factoria*(counter+1)
        counter++
    }
    return factoria
}

// Lucy's Recusive Interview Appeasement Approach

function factorialRecursive(num){
    if(num===0){
        return 1
    }
    return num*factorialRecursive(num-1)
}

// Fonzie's Turnary One Liner

function oneLiner(num){
    return num===0? 1 : num*oneLiner(num-1)
}



console.log(whileLoopFactorial(4))
console.log(factorialRecursive(4))
console.log(oneLiner(4))
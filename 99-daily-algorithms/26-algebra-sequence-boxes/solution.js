// andy

function looper(num){
    let total = 0

    for(let i=1; i<=num; i++){
        if (i%2 === 0){
            total -= 1
        }
        else if(i%2 != 0){
            total += 3
        }
    }
    return total
}
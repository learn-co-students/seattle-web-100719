// fonzie

function stickCount(num){
    // the result should be the input, multiplied by six, and then subtract the input minus one. 
    // 1x6 = 6-0 => 6
    if (num===0){
        return 0
    }
    let sticks = num*6
    return sticks-(num-1)
}
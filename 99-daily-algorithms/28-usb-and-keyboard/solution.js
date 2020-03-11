// rachid
// naive approach
function getMoney(keyboards, usbs, cash){
    let arr = []
    keyboards.forEach(keyb=>{
        usbs.forEach(usb=>{
            if(usb+keyb <= cash){
                arr.push(usb+keyb)
            }
        })
    })
    return arr.sort()[arr.length]
}

console.log(getMoney([1,2,5],[1,2,3], 10))
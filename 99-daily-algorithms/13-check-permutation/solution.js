// Jen Jen

function checkP1(str, str1){
    var ob1 = {}
    var ob2 = {}
    for(let i=0; i<str.length;i++){
        if(ob1[i]){

        }
    }
}

//Katrina's idea

function checkP(s1, s2){
    s1 = s1.split("").sort()
    s2 = s2.split("").sort()
    return s1.length==s2.length ? cb(s2, s1) : false
}

const cb = (longer,shorter) => {
    for(let i=0; i<longer.length; i++){
        return longer[i] != shorter[i] ? false : true
    }
}

console.log(checkP("dry", "lwal"))
console.log("two")
console.log(checkP("dry", "dyr"))
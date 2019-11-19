// Jen Jen

function checkPermutation(str1, str2) {
    obj1 = {};
    obj2 = {};
    for (let i = 0; i < str1.length; i++) {
       if (obj1[str1[i]]) {
          obj1[str1[i]]++;
       } else {
          obj1[str1[i]] = 1;
       }
    }
 
    for (let j = 0; j < str2.length; j++) {
       if (obj2[str2[j]]) {
          obj2[str1[j]]++;
       } else {
          obj2[str2[j]] = 1;
       }
    }
 
    let obj1keys = Object.keys(obj1);
    for (let i = 0; i < obj1keys.length; i++) {
       if (obj1[obj1keys[i]] !== obj2[obj1keys[i]]) {
          return false;
       }
    }
    return true;
 }

//Katrina's idea

function checkP(s1, s2){
    s1 = s1.split("").sort()
    s2 = s2.split("").sort()
    return s1.length==s2.length ? cb(s2, s1) : false
}

const cb = (longer,shorter) => {
    for(let i=0; i<longer.length; i++){
        if(longer[i] != shorter[i]){
            return false
        }
    }
    return true
}

console.log(checkP("bat", "bay"))
console.log(checkP("aaaaa", "aaaaa"))
console.log(checkPermutation("bat", "bay"))
console.log(checkPermutation("aaaaa", "aaaaa"))
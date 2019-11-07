function greater(arr) {

    let i = 0
    let j = 0
    let pointer = arr[i]
    let current = arr[i+1]
    while(i !== arr.length){
  
      if (pointer < current){
        console.log( `${pointer} --> ${current}`)
        i++
        j = i+1
        pointer = arr[i]
        current = arr[j]
      
    } else if(j == arr.length){
       console.log( `${pointer} --> -1`)
        current = pointer
        i++
        j = i+1
        pointer = arr[i]
        current = arr[j]
  
      }
      else {
        j++
        current = arr[j]
      }
    }
  }
  
  greater([13,5,4,9,23,51])
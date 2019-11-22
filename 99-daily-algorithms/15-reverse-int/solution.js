// Andy

// Shawn

// Lucy

function ri(int){
    let lastDigit;
    let reversed = 0;
    while(int>0){
        lastDigit = int%10
        reversed = (reversed*10+lastDigit)
        int = (int/10).floor()
    }
}


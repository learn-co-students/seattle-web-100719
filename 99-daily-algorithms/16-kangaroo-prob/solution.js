// shawn and rachid's mathy nonsense

arr1 = [0, 2, 5, 3]
function kangaroo(x1, v1, x2, v2)
{
  let firstStart = x1;
  let firstSlope = v1;
  let secondStart = x2;
  let secondSlope = v2;
  if(firstSlope === secondSlope)
  {
    if(firstStart === secondStart)
    {
      console.log("They start at the same point");
      return "YES";
    }
    else
    {
      console.log("They will never meet (same slopes)")
      return "NO";
    }
  }
  else
  {
    let overlap = (firstStart - secondStart)/(secondSlope - firstSlope);
    if (overlap % 1 > 0)
    {
      console.log('They do not overlap at a whole jump. Value given: '+ overlap)
      return "NO";
    }
    else
    {
      if (overlap >= 0)
      {
        console.log('They do overlap at a whole jump. Value given: '+ overlap)
        return "YES";
      }
      else
      {
        console.log('They do NOT overlap at a whole jump. Value given: '+ overlap)
        return "NO";
      }
    }
  }
}
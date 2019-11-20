document.addEventListener("DOMContentLoaded", function() {
  const foodList = document.querySelectorAll("li");

  let myNumbers = [1, 2, 3, 4];
  myNumbers.push(5);
  myNumbers = "HACKKEEEDDD";

  console.log(myNumbers);

  console.log(foodList);

  function addID(node) {
    // node.style.color = "green"
    const foodName = node.textContent.split(" ")[1];
    console.log(foodName);
    node.id = foodName.toLowerCase();
  }

  foodList.forEach(addID);
});

sayhi = () => {
  console.log("hi")
}
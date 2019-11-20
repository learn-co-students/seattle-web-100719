document.addEventListener("DOMContentLoaded", function() {
  const myHeadline = document.querySelector(".welcome");
  // console.log(myHeadline)
  myHeadline.addEventListener("click", function(event) {
    console.dir(event.target);
  });

  function reportEvent() {
    return function(e) {console.log(e)}
  }

  myHeadline.addEventListener("mouseleave", reportEvent())

  document.getElementById("food-form").addEventListener("submit", function(e) {
    e.preventDefault();
    console.dir(e.target);
    addNewFood(e.target.newfood.value);
  });

  document.querySelectorAll("li").forEach(function(item) {
    item.addEventListener("click", function() {
      alert("LIST ITEM!!!");
    });
  });
});

function addNewFood(newFoodName) {
  const newFoodNode = document.createElement("li");
  newFoodNode.textContent = newFoodName;
  console.dir(newFoodNode);
  document.querySelector("ul").appendChild(newFoodNode);
  newFoodNode.addEventListener("click", function() {
    alert("LIST ITEM!!!");
  });
}

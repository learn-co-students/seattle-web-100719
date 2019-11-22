function addBook(book) {
  const book_list = document.querySelector("#book-list");
  const div = makeBookCard(book);
  book_list.appendChild(div);
}

function makeBookCard(book) {
  const div = document.createElement("div");
  div.className = "card";

  const img = document.createElement("img");
  img.src = book.img;

  const h3 = document.createElement("h3");
  h3.textContent = book.title;

  const p = document.createElement("p");
  p.textContent = book.author;

  const update = document.createElement("button");
  update.textContent = "Update";
  update.addEventListener("click", function() {
    updateBook(book);
  });
  const removeBookButton = document.createElement("button");
  removeBookButton.textContent = "delete";
  removeBookButton.addEventListener("click", function() {
    deleteBook(book);
  });


  //add all elements to div
  div.appendChild(img);
  div.appendChild(h3);
  div.appendChild(p);
  div.appendChild(update);
  div.appendChild(removeBookButton)

  return div;
}

function showBooks(bookArray) {
  bookArray.map(book => {
    addBook(book);
  });
}

function fetchBooks() {
  fetch("http://localhost:3000/books")
    .then(function(res) {
      return res.json();
    })
    .then(function(data) {
      showBooks(data);
    });
}
fetchBooks();

document.addEventListener("DOMContentLoaded", function() {
  document.querySelector("form").addEventListener("submit", handleSubmitBook);
});

//collect input data from the user, and construct a book object
function handleSubmitBook(event) {
  event.preventDefault();
  let newBook = {
    title: event.target.title.value,
    author: event.target.author.value,
    img: event.target.cover.value
  };
  createBook(newBook);
  // addBook(newBook)
}

//This method saves a book to the API
function createBook(book) {
  fetch("http://localhost:3000/books", {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
      Accept: "application/json"
    },
    body: JSON.stringify(book)
  }).then(function(resp) {
    if (resp.status === 201) {
      resp.json().then(function(data) {
        addBook(data);
      });
    } else {
      console.log("ERROR", resp)
    }
  });
}

function updateBook(book) {
  fetch(`http://localhost:3000/books/${book.id}`, {
    method: "PATCH",
    headers: {
      "Content-Type": "application/json"
    },
    body: JSON.stringify({
      title: "Updated"
    })
  });
}
function deleteBook(book) {
  fetch(`http://localhost:3000/books/${book.id}`, {
    method: "DELETE",
  });
}

// what happens when books isn't defined?
// showBooks(books);

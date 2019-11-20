fetch('https://randomuser.me/api/?results=100')
// .then( response => response.json())
.then(function(response){
    return response.json()
})
.then( json => {
    json.results.forEach( user => {
        const userData = extractFromJson(user)
        buildUser(userData)
    });
})

function extractFromJson(user) {
    let hashy = {}
    hashy["firstName"] = user.name.first
    hashy["lastName"] = user.name.last 
    hashy["image"] = user.picture.large
    hashy["cell"] = user.cell
    return hashy
}

function buildUser(user) {
    let body = document.querySelector("body")
    const name = document.createElement("h1")
    name.innerHTML = user.firstName + " " + user.lastName
    body.appendChild(name)
    const img = document.createElement("img")
    img.src = user.image
    body.appendChild(img)
    const cell = document.createElement("h2")
    cell.innerHTML = user.cell
    body.appendChild(cell)
    let form = document.createElement("form")
    let submit = document.createElement("button")
    submit.type = "submit"
    let input = document.createElement("input")
    input.type = "text"
    body.appendChild(form)
    form.appendChild(input)
    form.appendChild(submit)
    img.addEventListener("click", function(e){
        name.innerHTML = "LUCY WAS HEREEEEE"
    })
    form.addEventListener("submit", function(e){
        e.preventDefault()
        name.textContent = e.target[0].value
    })
}
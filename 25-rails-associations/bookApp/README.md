## Review Rails Generators
- [ ] Model
- [ ] Controller
- [ ] Migration
- [ ] Resource
- [ ] ***DO NOT SCAFFOLD!!!! EVER, WE WILL FIND YOU.***

## SWBATs
- Review REST
- Review MVC
- Finish Deliverables
- 4 questions to ask when building out your Deliverables
  - Model
  - Routes
  - Controller
  - Views


### Deliverables
 - [ ] **As a site visitor, I should be able to see all of the books in my library**
  - Models
    - class -> book.rb
    - Migrations -> `create_books` rails db:migrate
    - seeds -> adapters/google_books
  - Routes
    - (index) - type of request and the path
  - Controller Action
    - `index`
  - Views
    - index.erb
 - [ ] **As a site visitor, I should be able to view a specific book**
  - Models
  - Routes
    - get `/books/:id`
  - Controller Action/method
    - show
  - Views
    - show.html.erb
 - [ ] **As a site visitor, I should be able to create a new book**
  - Models
    - no new models
  - Routes
    - `get /new`
    - `post /books`
  - Controller Action
    - new
    - create
  - Views
    - `new.erb`
 - [ ] **As a site visitor, update a specific book**
  - Models
    - no new model
  - Routes
    - `get /books/:id/edit`
    - `patch /books/:id`
  - Controller Action
    - `edit`
    - `update`
  - Views
    - `edit.erb`
    - redirect
 - [ ] **As a site visitor, delete an existing book**
  - Models
  - Routes
  - Controller Action
  - Views


##### Adding authors to the website
- [ ] **As a site visitor, I should be able to view a single author.  I should be able to see the author's name and count of books. (For the purpose of this project, an author has many books and a book belongs to one author.)**
   - [ ] models
    - author
    - add_author_id to books
    - author_id to an integer
    - delete author
    - authors table
   - [ ] routes
    - we need a show page to view a single author
    - `get authors/:id`
   - [ ] controller action
    - show
   - [ ] view
    - show.erb
- [ ] **As a site visitor, I should be able to see a list of authors**
   - [ ] models
   - [ ] routes
   - [ ] controller action
   - [ ] view
- [ ] **As a site visitor, I should be able to create a new book and associate it with an existing author.**
   - models
    - books
   - routes
    - new
   - controller action
    - new && create
   - view
    - forms
      - params for a book author_name and puts the ID

### Routes Summary
| CRUD | HTTP Verb  | Route  | Action  |  View | Used For |
|---|---|---|---|---|---|
| Create | GET &darr; | `/books/new`  | `new` |`new.erb`  |  |
| Create | POST | `/books`  |  `create` |redirect to show page| |
| Read |GET | `/books`  | `index`  | `index.html.erb`| |
| Read |GET | `/books/:id`| `show`| `show.html.erb` | |
| Update | GET &darr; | `/books/:id/edit`  | `edit`| `edit.html.erb` | |
| Update  | PATCH | `/books/:id`  | `update` | redirect back to show| |
| Delete  | "Button/Link" |  - |  - | |  |
| Delete | Delete |  `/books/:id` |  `destroy`| redirect_to index||

## SWBATs
  - [ ] Complete the deliverables that we need to work on.
## Questions :
  - CRUD -> Sinatra
  - Create :
    - ```GET -> '/books/new'```
    - ```POST -> '/books/:id -> '/books'```
  - Read
    - ```GET -> index - '/books'```
    - ```GET -> show - '/books/:id'```
  - Update
    - ```GET -> edit -> '/books/:id/edit'```
    - ```PATCH( or PUT) -> '/books/:id'```
  - Delete
    - ```GET -> delete -> (button) -> show -> '/books/:id'```
    - ```DELETE -> '/books'```

### High-level development practices
 - [ ] Work within a nested file structure for multiple models
    - Conventional view names (index/show/new/edit)
    - Multiple controllers
 - [ ] Know which questions to ask when given a new user story
    1. What new model(s) do I need?
       - New class?
       - New migration? (i.e. does the schema need to change?)
       - Associations?
       - Seeds?
    2. What route(s) do I need?
    3. What controller action(s) do I need?
       - In Sinatra, this means the code directly below the route, but in Rails it will be a separate file
    4. What view(s) do I need?

### ActiveRecord associations
 - [ ] Add a new ActiveRecord model and associate it with an existing model
 - [ ] Display information about an associated model.
 - [ ] Allow the user to make a new instance of an ActiveRecord model that belongs to another model

## Deliverables for today's lecture
- [ ] **As a site visitor, I should be able to see a list of authors(For the purpose of this project, an author has many books and a book belongs to one author.)**
  1. What new model(s) do I need?
  New class?
    - author
  -  New migration? (i.e. does the schema need to c hange?)
    1. Create an author table
    2. Update the books table
      1. Change author to a foreign key
      2. rename author to author_id
      3. change author_id to integer
  -  Associations?
    1. book `belongs_to` author
    2. author `has_many` books
  -  Seeds?
    - we already made out changes to the seed file.
  2. What route(s) do I need?
    - get `authors`
  4. What view(s) do I need?
    - index

- [ ] **As a site visitor, I should be able to view a single author.  I should be able to see the author's name and count of books.**
  1. Models?
    - author is already there.
  2. request/routes?
    - get '/authors/:id'
  4. Views?
    - show.erb

- [ ] **As a site visitor, I should be able to create a new book and associate it with an existing author.**
   1. Models?
    - book and author is already there
   2. requests/Routes?
    - `/books/new`
    - get
    - post
   4. Views?

### Routes Summary
| CRUD | HTTP Verb  | Route  | Action  |  View | UsedFor |
|---|---|---|---|---|---|
| Create |GET&darr; | '/books/new'  | books#new  |'new.erb'  |  form page to create a new book |
| Create | POST | '/books'  |  books#create | Reroutes toindex| Creates a new book in the controller   |
| Read | GET  | '/books'  | books#index  |  index.erb|  displaying information about books  |
| Read |GET  | '/books/:id'  | books#show  |  show |display information about a specific book  |
|  Update | GET&darr; | 'books/:id/edit'  | books#edit| edit.erb  | Renders a form for user to edit  |
|  Update  | PATCH | 'books/:id'  | books#update  | redirects to show | updates the attributes in aspecific book |
| Delete  | "button" |  - |  - |  form with button in the show page | create a form so we can delete records and map it to an action  |
  |  Delete | Delete |  'books/:id' | books#delete |  | deletes/destroys a specific book in the DB|

## Resources
1. Writing a migration to rename column and changecolumn type: http://codkal.com/how-rename-databasecolumn-rails-5-migrastion/
2. HTML form elements: https://www.w3schools.comhtml/html_form_elements.asp
3. Another reference for select in HTML : https:/www.learnhowtoprogram.com/ruby/ruby-databasebasics/select-form-fields-in-sinatra

4. Select in Sinatra forms
```html
<select id="<Foreign Key Name>" name="<variable Id Name>" type="text">
  <% <Collection>.each do |item| %>
    <option value="<%=Displayed name id%>"><%= Display Name%></option>
  <% end %>
</select>
```

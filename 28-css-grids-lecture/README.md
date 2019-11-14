# CSS Styling

## CSS Grids

- Why are CSS Grids useful? 
  1. Dynamic styling with webpage (`auto` functionality gives major freedom). 
  2. Instead of defining rows & columns in HTML, they are defined in CSS (majorly simplifies HTML files).
  3. Controlled overlapping of divs. 


### Lecture Talking Points

- [] Inline / internal styling within existing trivia app HTML tags
    - style="property:value;"
    - `margin` is the area around an element, outside the border
    - `padding` is the area between the content of an element & its border, inside the border
- [] Navigate Chrome DevTools HTML inpsector. 
    - Functionality is useful for trials on CSS changes. 
    - Shortcut is `CMD+OPTION+J`. 
- [] External styling via a CSS file. 
    - Needs to be imported into `application.html.erb` file. 
    - `class` can reference multiple elements - use a `.` to call classes
    - `id` has to be unique and can only be used to select one element - use a `#` to call id's. 
- [] Introduce Grids and how to design the layout of a page prior to choosing number of rows & columns. 
    - Must contain a parent `div` to hold all the children `div`s. 
         - Container holds the grid size information (`display: grid`, `grid-template-columns`, `grid-template-rows`, `grid-auto-rows`, `grid-gap`, `grid-template-areas`). 
    - Individual children divs hold `grid-column`, `grid-row`, `grid-area` information.
        -  Within each `div` can be any typical HTML elements. 
        - Nested grids can be used for `div`s that hold more than one HTML element. 
    - Can use auto, percentages (%), fractions (fr), & pixels(px) to define div size.
        - Use `repeat` function to simplify code when declaring div size & number. 
    - Lines divide the grids and determine selection of rows & columns. 
    - It's best to complete a rough wireframe or page layout to determine approximate number of rows and columns that are necessary. 
    - As columns are "consumed", remaining divs are displaced to new rows - if a size is not set for these rows, they will default to the size of the largest div within that row. 
    

### Resources

- [CSS Grid Basics](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Grid_Layout/Basic_Concepts_of_Grid_Layout)
- [Grid Guide](https://css-tricks.com/snippets/css/complete-guide-grid/)
- [CSS Animations](https://www.w3schools.com/css/css3_animations.asp)
- [CSS Grid Generator @LucySuddenly ftw](https://cssgrid-generator.netlify.com/)
- [CSS Grid Syntax](http://grid.malven.co/)
- [Diff Between Justify Self / Content](https://stackoverflow.com/questions/48535585/the-difference-between-justify-self-justify-items-and-justify-content-in-css-gr)
https://cssgridgarden.com/ as;ldfhgl;kshdfgkhjlsdfkhjlgfadsS:DLFGHJSLKFJGHLKSJDFGLKJSDFG:LADFzz
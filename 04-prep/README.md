## Review :
## Questions??????
- How do you access a class within another class.
- How can User class and Tweet class talk to each other.

# One to Many Relationships

## SWBATs
* [x] Implement one object to many objects relationship
  * [x] One object `has many` objects
  * [x] One object `belongs to` another object
* [x] Practice passing custom objects as arguments to methods
* [x] Demonstrate single source of truth
* [x] Infer type of method (class or instance) through naming conventions
* [x] Model/Domain
* [x] Practice keeping groups of data related to classes on the class as a class variable
* [x] Demonstrate _Single Source of Truth_ by **not** storing collections of objects on other objects
* [ ] Demonstrate _Single Source of Truth_ by **not** storing one object in multiple collections

## Deliverables
* Create a User class. The class should have these methods:
  * [x] `initialize` which takes a username and have
  * [x]  a reader method for the username
  * [x] `tweets` that returns an array of Tweet instances
  * [x] `post_tweet` that take a message, creates a new tweet, and adds it to the user's tweet collection
  * [x] `tweets` -> tweets array.
* Create a Tweet class. The class should have these methods:
  * [x] Have a mini breakout and see which methods would be instance vs class.
  * [x] Tweet has a method `#message` that returns a string
    - This is an instance method because each tweet will only have one message that's part of it.
    - reader/getter for this variable.
  * [x] Tweet has a method `#user` that returns an instance of the user
    - because tweet belongs to a user, it will always one user.
    - this will also be a getter.
    - User Object.
  * [x] Tweet has a method `.all` that returns all the Tweets created
    - class method
    - an array
  * [x] Tweet has a method `#username` that returns the username of the tweet's user
    - instance methods -> `@user` is going to contain that information.

## Outline

* Relationships (one to many => `has_many`, `belongs_to`)
  * Go through other example domains
* Expand on relationships to express many to many
  * We'll build out a **new** relationship from scratch to teach this concept

## Define
* _Model_ - A class whose primary responsibility is to store data
* _Domain_ - The subject matter of the problem, (e.g., Learn's domain is online education)
* _Domain modeling_ - Creating models for your domain to represent real or abstract ideas (e.g., Learn's domain model includes modules, cohorts, assignments as well as their relationships)
* _Relationships_ - How one model or thing is connected to another model or thing
  * _One to many relationship_ - A relationship describing a single model that contains or keeps track of other models (a tree has many leaves, an organism has many cells, the universe has many galaxies)
* _Schema_ - A visual representation of your data (models, relationships, etc.)
* [_Single Source of Truth_](https://en.wikipedia.org/wiki/Single_source_of_truth) - The practice of structuring _models_ and _relationships_ such that every data element is stored exactly once; any possible linkages to this data element are by reference only
  * **Why?** - Ask yourself, in the _one to many relationship_ of country to citizen, is it easier for the country to know about all of its citizens or is it easier for a citizen to know the which country they belong to? So how does a country find out its citizens? It conducts a census (a method) that asks all the people in the country if they are a citizen!


## Example Practices
Teachers >-< Students

Teacher >- Cohort -< Students
- name        -cohortName       - name
- location    @teacher          -location
- Mod         @student          
100719
Cohort `belongs to` a teacher
Cohort `belongs to` a students
Teacher `has many students` through cohort
Students `has many teachers` through cohort

Movies >-< Actors

Movies >- Characters -< Actors

Buyers >-< Sellers

Buyers >- Products/Market/Ebay/Transaction -< Sellers

SocialMedias >-< Users

SocialMedia(Reddit/Facebook) >- Browser/Account-< Users

books >- authors_books-<author


## Deliverables
- User class
  - [ ] `#like_tweet` that accepts as a tweet instance as a parameter
  - [ ] `.all` that returns all the instances of a user.
  - [ ] `#liked_tweets` that returns a collection of all the tweets this userhas liked
  - [ ] `#unlike_tweet`
- Tweet class
  - [ ] `#likers` that returns a collection of all the Users who have liked this tweet

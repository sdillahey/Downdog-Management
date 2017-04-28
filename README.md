# Downdog Management
## A Ruby on Rails Full-Stack CRUD App
![Downdog Management](https://i.imgur.com/AgM6431.png)

## Project Background
Tasked with creating a Full-Stack Ruby on Rails application that implements RESTful CRUD functionality, I decided to create an app that a business owner could use - despite not having working programming knowledge. I often attend group fitness classes and admire how they create functional yet attractive webpages, so I graciously borrowed the name of my favorite studio in DC to serve as my mock business. Much of the functionality of Downdog Management happens behind the scenes in the Administrator role, but it also serves as the basic site for the studio.

> ##### [Check out Downdog Yoga and sign up for you first class today!](https://downdogyoga.herokuapp.com/)

### Downdog Management as the Administrator
![Administrator Homepage](https://i.imgur.com/VxvKMvz.png "Administrator's Home View")

The Administrator user is authorized to access the main page that offers additional functionality beyond that of a normal client.

![Class Schedule with CRUD](https://i.imgur.com/ovh5Q77.png "Class Schedule with CRUD")

Compare the above with the same Class Schedule view below, but with a typical signed-in user.

![Class Schedule as Normal User](https://i.imgur.com/JrY9Nwf.png "Class Schedule as Normal User")

## The Development Process

![User Stories and Wireframes](https://i.imgur.com/uszORFE.png)
> [Visit Trello for User Stories, Wireframes and the ERD](https://trello.com/b/hy31gb4q/down-dog-management)

### MVC
#### The Models
1. Client - The Client model serves as the user model within the app. Log In functionality determines authentication and authorization. Client's have many workouts.
2. Workout - The Workout model is used to create the schedule of classes. Workouts belong to instructors and have many clients.
3. Instructor - The Instructor model contains additional information on the class instructors.
4. Signup - The Signup model is used as a link between the many-to-many relationship between clients and workouts.

#### The Views
Depending on the user, the views will change. The Administrator user is authorized additional indexing, creating, editing, and deleting capabilities outside of those authorized by the typical client.

#### The Controller
As is typical of MVC, the controllers contain the code that acts as the intermediary between the router, models and views.

### Technologies Used:
- Ruby on Rails 5.0
- HTML5
- CSS3
- Ruby
- Bootstrap
- JQuery
- Postgresql
- ActiveRecord

### Upcoming Features:
- Add a max-capacity attribute to the workout class model that will serve as a limit for the number of clients who can sign-up
- Add functionality for the Admin to add recurring classes to the schedule
- Provide an option for a client to access their account should they forget their password

Administrator: admin@downdogyoga.com pw: ddyoga123
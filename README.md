# [Hitch-a-Ride](https://hitch-a-ride22-project-1.herokuapp.com/)

Hitch-a-Ride is a platform to offer or find rides, connecting drivers and passengers heading to the same destination. It makes carpooling easy and affordable within Australia, as well as reducing our carbon footprint!
https://hitch-a-ride22-project-1.herokuapp.com/ 
## For Passengers:

* Choose a driver based on their profile and trips driven.
* Book and go

## For Drivers:

* Fill empty seats to cover your driving costs



## Logins

Admin:
<pre>
Email: kris@ga.co 
Password: 1234
</pre>

Normal users:
<pre>
Email: janedoe@ga.co 
Password: seed1

Email: johnsmith@ga.co 
Password: seed2
</pre>


## Features

1. Sign in/Sign out
2. Create users profile
    * Add a profile picture or a default icon will be provided
    
    <br/>
    Drivers:
    <br/>

    * Trips and passengers you have driven
    * Upcoming trips and bookings
    * Completed trips and bookings

    <br/>

3. Search Bar on Home page and Search page
    * Search by origin, destination or user name
    * Search results are clickable links to the trip page
    * Search results are displayed in order (will not show expired trips)
    * Price is also displayed in search results

    <br/>

4. Post & Edit trips
    * Add in origin and destinations (will provide map on ) 
    * Date parameters will return invalid if you choose past date
    * Cannot enter negative numbers for price or number of seats available
    * If an image of a car is not provided, a default will be provided. 

    <br/>

5. Trips Index Page
    * Displays all trips in date and time order
    * Clickable link to the trip page for more details
    * Trip information includes:
        * Driver Image
        * Origin to Destination
        * Date and time
        * Booked passenger icons and remaining seat icons (will not show more than 4 icons - it will show only remaining and " ...". The trip page will display full number of seats booked and remaining)
        * Price
        * Remaining seat number - text is red when one seat remains, or green when fully booked
        * Image of Car or default

    <br/>

6. Trip Show Page 
    * Shows trip in more detail with trip description, trips driven and passengers driven by driver user
    * Comments to communicate between driver and user (edit and delete comments)
    * Book Trip button (will not show booking button if trip is full)
    * Edit and Delete Buttons visible only for the trip driver 
    * Google Map API used to show origin and destination points
    * Trip will show "Expired" in title if the trip has expired

    <br/>

7. Passenger Bookings Page
    * Displays all upcoming passenger trips you have booked
    * Displays past passenger trips
    * This page looks much like the trip index page with minor differences
    * Clickable to trip pages

    <br/>

8. Delete Users
    * This is only visible to the administrator (log in details provided above)
    * Delete any user. This includes their trips, comments and bookings. 

    <br/>

9. Flash messages 
    * Three types of flash: success, error and update
    * For user actions:
        * Sign up
        * Profile updates
        * Destroy user
    * For trip actions:
        * Creating a trip and its errors
        * Update 
        * Delete 
    * For comment actions:
        * Create comment
        * Update
        * Delete
    * For booking actions:
        * Create booking
        * Delete booking

        <br/>


## Tools, Gems and APIs used

Ruby on rails was the main tool used to create this web application.
* Ruby on Rails 5.2.7
* SCSS & CSS 
* HTML & ERB
* Heroku
* Cloudinary

Gems:
* Ransack
* Geocoder

APIs:
* Google Maps API
## Bugs

*Bugs could not be solved due to time restraints*
* Incorrect timezone 
* Comment title for time and date won't display in full
* Geocoder needs validator or the page will not show. An error will occur if user mistypes location or enters in scribble


## To Do List

* Instant Messaging
* Search for users - admin purposes
* User ratings
* Notifications for users when trips have been edited or deleted. 
* Notifications for drivers when trips have been booked
* Make headings on profile page collapsible
* Allow users to delete themselves
* Optimization for mobiles and other devices

## Screenshots

![screenshot](/app/assets/images/hitch-a-ride-1.png)
![screenshot2](/app/assets/images/hitch-a-ride-2.png)
![screenshot3a](/app/assets/images/hitch-a-ride-3.png)
![screenshot4](/app/assets/images/hitch-a-ride-4.png)
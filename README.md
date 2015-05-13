# Event Calendar

This project is for my Senior Seminar class.
The project will allow user registration, allow the user to note
what times they are available, and create an event.  The app will
then attempt to match those who are available for an event and
notify them.

The project follows the standard MVC configuration with Rails.
To view the models, views, and controllers, look within the app directory.
The application utilizes two models, Users and Events.  These are then handled
by the Users Controller and Events Controller, respectively.  The Views
interact with the Controllers to generate the user side interface, and also
interact with the Users Helper and Events Helper to handle code execution
without directly facing the user.
# Graham Vickers Web Development Portfolio

This is my portfolio website, this is in conjunction with my program Interactive Media Design at Fanshawe College. 

[VIEW LIVE SITE](https://graham-vickers-web-development.herokuapp.com/)
This site is host on Heroku (subject to change)



## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

You must have the following programs installed: 

* Node.js
* MAMP/ WAMP

### Installing

You will need to install the following in order to run the website:

To see content you need to install the .sql file from the 'data' folder, this can be done in the Terminal or through phpMyAdmin.

You also will need Node.js installed for the content to be displayed, follow the install steps below:

Node.js Website
```
https://nodejs.org/en/download/current/
```

Install through the command line:
```
$ npm install 
```
Node.js Packages (required):
```
$ npm i -s express
$ npm i -s mysql
```
## Deployment

Once everything is installed, now in terminal within the project type:

```
npm start
```

Now in the browser of your choice go to: localhost:3000

## Built With

* HTML5 - Layout
* CSS3 - Styling
* JaveScript - Functions
* [Node.js](https://nodejs.org/en/) - Framework
* [Sass](https://sass-lang.com/) - CSS compiler
* [Gulp](https://gulpjs.com/) - JS enhancement
* [MySQL](https://www.mysql.com/) - Database
* [Express](https://expressjs.com/) - Handlebars 

## Browser Capability 

* Chrome - 100%
* Firefox - 100%
* Safari - 95%

### Issues

* Safari - Google fonts not loading
* Contact form - Contactact form in hbs is not set up to recieve mail, may add nodemailer to complete it.
* Data: portfolio area is loading from the db, project 'read more' still not working.

## Authors

* **Graham Vickers** - *Design & Build* - [Fanshawe College](https://github.com/grahamvickers)

## Acknowledgments

* Big thanks to [Trevor](https://github.com/Trevor-FanshaweC) for teaching me the necessary programs and functions to complete this project.

* Also shoutout to [Pan](https://github.com/spiderPan) for teaching me PHP and helping me understand API's and how to manipulate the data.

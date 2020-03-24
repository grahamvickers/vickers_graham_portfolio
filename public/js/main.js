const hamburger = document.querySelector(".hamburger");
const navLinks = document.querySelector(".nav-links");
const links = document.querySelectorAll(".nav-links li");
const seeMoreButtons = document.querySelectorAll('.see-more');
const  popOver = document.querySelector('#popover');

hamburger.addEventListener("click", () => {

  navLinks.classList.toggle("open");

  links.forEach(link => {
    link.classList.toggle("fade");
  })
  links.classList.add('hide-nav')

})

function closeNav(){
  link.classList.remove('hide-nav');
}


const waypoint = new Waypoint({
  // what element the wayo=point is looking for 
  // the handler will fire when it scrolls into view
  element: document.getElementById('home'),

  handler: function(direction) {
    console.log('Welcome to Graham Vickers Web Development Porfolio')
  },
  offset: -300
})

const waypoint2 = new Waypoint({
  element: document.getElementById('about'),
  handler: function(direction) {
    console.log('scrolled to: About');
  },
  offset: 100
})



const waypoint3 = new Waypoint({
  element: document.getElementById('portfolioArea'),
  handler: function(direction) {
    console.log('scrolled to: Portfolio');
  },
  offset: 100
})



const waypoint4 = new Waypoint({
  element: document.getElementById('aboutArea'),
  handler: function(direction) {
    console.log('scrolled to: My Background');
  },
  offset: 100
})


const waypoint5 = new Waypoint({
  element: document.getElementById('contactArea'),
  handler: function(direction) {
    console.log('scrolled to: Contact');
  },
  offset: 500
})


function buildPopover(projectdata) {
  //debugger;

  popOver.querySelector(".project-title").textContent = projectdata.title;
  popOver.querySelector(".project-img").src = `images/${projectdata.img}`;
  //popOver.querySelector(".project-vid").src = projectdata.vid;
  popOver.querySelector(".project-bio").textContent = projectdata.bio;
  popOver.querySelector(".project-tools").textContent = projectdata.tools;

  let popOverVid = popOver.querySelector("video");
  if (projectdata.vid) {
    popOverVid.src = `video/${projectdata.vid}`;
    popOverVid.style.visibility = "visible";
  } else {
    popOverVid.style.visibility = "hidden";
  }

  popOver.classList.add('show-popover')
}



function closePopover(){
  popOver.classList.remove('show-popover');
}




function fetchData() {
  event.preventDefault()

  let targetEl = this, 
    url = `/project/${this.dataset.target}`;
    
    fetch(url)
    .then(res => res.json())
    .then(data => {
        console.log(data[0]);

        // populate the popover
        buildPopover(data[0]);
    })
    .catch((err) => {
      console.log(err)
    });
}


seeMoreButtons.forEach(button => button.addEventListener("click", fetchData));

document.querySelector('#popover .close').addEventListener("click",closePopover);

document.querySelector('#navLink').addEventListener("click",closeNav);

console.log('linked up');

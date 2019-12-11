const hamburger = document.querySelector(".hamburger");
const navLinks = document.querySelector(".nav-links");
const links = document.querySelectorAll(".nav-links li");
const seeMoreButtons = document.querySelectorAll('.see-more'),
      popOver = document.querySelector('#popover');

hamburger.addEventListener("click", () => {
  navLinks.classList.toggle("open");
  links.forEach(link => {
    link.classList.toggle("fade");
  });
});

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

function buildPopover(portfoliodata, el) {
  popOver.querySelector(".portfolio-title").textContent = portfoliodata.title;
  popOver.querySelector(".portfolio-img").textContent = portfoliodata.img;
  popOver.querySelector(".portfolio-bio").textContent = portfoliodata.bio;


  popOver.classList.add('show-popover');
  //el.appendChild(popOver);
}

function closePopover(){
  popOver.classList.remove('show-popover');
}

// run the fetch API and the DB data
function fetchData() {
  let targetEl = this, 
    url = `/svgdata/${this.dataset.target}`;
    
    fetch(url)
    .then(res => res.json())
    .then(data => {
        console.log(data);

        // populate the popover
        buildPopover(data, targetEl);
    })
    .catch((err) => console.log(err));
}

// const svgGraphic = document.querySelector('.svg-wrapper')

// svgGraphic.addEventListener("click", () => {
//     console.log(this);
// })

seeMoreButtons.forEach(button => button.addEventListener("click", fetchData));

document.querySelector('#popover .close').addEventListener("click",closePopover);

console.log('linked up')

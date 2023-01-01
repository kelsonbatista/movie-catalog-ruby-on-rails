$('.owl-carousel').owlCarousel({
  stagePadding: 50,
  loop: true,
  margin: 10,
  nav: false,
  responsive:{ //para telas diferentes
      0:{
          items: 2
      },
      450:{
          items: 3
      },
      700:{
          items: 4
      },
      1000:{
          items: 6
      },
      1200:{
          items: 8
      }
  }
})
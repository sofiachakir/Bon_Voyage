$(window).scroll(function(){
  var scroll = $(window).scrollTop();
    if(scroll < 600){
      $('.navbar').addClass('navbar-blur')
      $('.navbar').removeClass('navbar-black')
      $('.navbar a').removeClass('navbartext')
    }
    else{
      $('.navbar').removeClass('navbar-blur')
      $('.navbar').addClass('navbar-black')
      $('.navbar a').addClass('navbartext')
    }
});




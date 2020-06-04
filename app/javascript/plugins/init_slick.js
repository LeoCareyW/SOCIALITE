const initSlick = () => {
  $('.multiple-items').slick({
    infinite: true,
    slidesToShow: 3,
    slidesToScroll: 3,
    dots: true
  });
  $('.plan-carousel').slick({
    arrows: true,
    dots: false,
    infinite: true,
    speed: 500,
    fade: true,
    cssEase: 'linear',
  });
  $('#slick1').slick({
      rows: 3,
      dots: true,
      arrows: true,
      infinite: true,
      speed: 100,
      slidesToShow: 3,
      slidesToScroll: 3
  });
};

export {initSlick}

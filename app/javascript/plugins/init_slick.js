const initSlick = () => {
  $('.multiple-items').slick({
    infinite: true,
    slidesToShow: 3,
    slidesToScroll: 3,
    dots: true
  });
  // $('.plan-carousel').slick({
  //   dots: true,
  //   infinite: true,
  //   speed: 500,
  //   fade: true,
  //   cssEase: ‘linear’
  // });
  $('#slick1').slick({
      rows: 3,
      dots: true,
      arrows: true,
      infinite: true,
      speed: 300,
      slidesToShow: 3,
      slidesToScroll: 3
  });
};

export {initSlick}

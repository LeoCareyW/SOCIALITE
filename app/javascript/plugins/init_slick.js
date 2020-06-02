const initSlick = () => {
  $('.multiple-items').slick({
    infinite: true,
    slidesToShow: 3,
    slidesToScroll: 3,
    dots: true
  });
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

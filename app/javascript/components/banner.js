import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Успей заказать", "Оригинальная фигурка"],
    typeSpeed: 100,
    loop: true
  });
}

export { loadDynamicBannerText };

import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Forget about frontend", "have a drink!"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };

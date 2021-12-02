import Typed from 'typed.js';
const startTyped = () => {
  const subtitle = document.querySelector(".subtitle-banner")
  if (subtitle) {
    const typed = new Typed('.subtitle-banner', {
      strings: [
        'Want to show your music somewhere?',
        'Life is short!',
        'Gig more!',
      ],
      smartBackspace: true,
      typeSpeed: 50,
      backSpeed: 25,
      loop: true,
      loopCount: Infinity,
      stringsElement: null,
      });
  };
}

export { startTyped }
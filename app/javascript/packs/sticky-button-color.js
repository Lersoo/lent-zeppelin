const initUpdateButtonOnScroll = () => {
  // console.log("salut");
  // window.addEventListener('scroll', () => {
  //   console.log(window.scrollY);
  // });
  const buttons = document.querySelectorAll('.action-button');
  if (buttons) {
    window.addEventListener('scroll', () => {
      buttons.forEach((button) => {
        if (window.scrollY >= 152) {
          button.classList.add('button-colored');
        } else {
          button.classList.remove('button-colored');
        }
      });
    })
  }
}

export { initUpdateButtonOnScroll }

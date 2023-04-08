const h1message = document.querySelector('h1');
const btn = document.querySelector('.button');
const extendBox = document.querySelector('.extend-box');

h1message.addEventListener('click', () => {
    h1message.textContent =  "Have a Good Time!";
});

extendBox.style.display = 'none';
btn.addEventListener('click', () => {
    if (extendBox.style.display === 'none') {
        btn.textContent = 'Show Less';
        extendBox.removeAttribute('style');
    } else {
        btn.textContent = 'Read More';
        extendBox.style.display = 'none';
    }
});

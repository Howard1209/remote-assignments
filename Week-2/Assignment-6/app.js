$('.banner h1').click((event) => {
    $(event.target).text("Have a Good Time!");
  });

$('.extend-box').hide();
$('.button').click((event) => {
    if ($('.extend-box').is(':hidden')) {
        $(event.target).text("Show Less");
        $('.extend-box').show();
    } else {
        $(event.target).text("Read More");
        $('.extend-box').hide();
    }
});


// const h1message = document.querySelector('h1');
// const btn = document.querySelector('.button');
// const extendBox = document.querySelector('.extend-box');

// h1message.addEventListener('click', () => {
//     h1message.textContent =  "Have a Good Time!";
// });

// extendBox.style.display = 'none';
// btn.addEventListener('click', () => {
//     if (extendBox.style.display === 'none') {
//         btn.textContent = 'Show Less';
//         extendBox.removeAttribute('style');
//     } else {
//         btn.textContent = 'Read More';
//         extendBox.style.display = 'none';
//     }
// });

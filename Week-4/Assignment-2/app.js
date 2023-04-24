function ajax(src, callback) { 
    // your code here
    const xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
        if (xhr.readyState === 4 && xhr.status === 200) {
            const response = JSON.parse(xhr.responseText);
            callback(response);
        }
    };
    xhr.open('GET', src)
    xhr.send();
}
function render(data) {
    // your code here
    // document.createElement() and appendChild() methods are preferred.
    const shoplist = document.createElement('div'); 
    shoplist.classList.add('products');
    data.forEach(product => {
        const productElem = document.createElement('div')
        const productName = document.createElement('h2')
        productName.textContent = product.name;
        const productDescription = document.createElement('p');
        productDescription.textContent = product.description;
        const productPrice = document.createElement('p');
        productPrice.textContent = '$' + product.price;
        productElem.appendChild(productName);
        productElem.appendChild(productDescription);
        productElem.appendChild(productPrice);
        shoplist.appendChild(productElem)
    });
    document.body.appendChild(shoplist);
}
ajax('https://remote-assignment.s3.ap-northeast-1.amazonaws.com/products',
    function (response) { 
        render(response); 
    }
); // you should get product information in JSON format and render data in the page
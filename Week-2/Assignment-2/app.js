function avg(data) {
    let total = data.products
    .map(product => product.price)
    .reduce((sum, value) => sum + value,0);
    return total / data.size;
}

console.log(
    avg({
        size: 3,
        products: [
            {
                name: 'Product 1',
                price: 100,
            },
            {
                name: 'Product 2',
                price: 700,
            },
            {
                name: 'Product 3',
                price: 250,
            },
        ],
    })
);
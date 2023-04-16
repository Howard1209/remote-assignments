const form = document.querySelector("form");

form.addEventListener("submit", function(event) {
    event.preventDefault();  // 爬文加了這個才沒出錯 可能因為submit的關係
    let number = document.querySelector("#number").value;
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
        if (xhr.readyState === 4 && xhr.status === 200 ) {
            document.getElementById('ajax').innerHTML = xhr.responseText;
        }
    };
    xhr.open('GET', `/data?number=${number}`);
    xhr.send();
});
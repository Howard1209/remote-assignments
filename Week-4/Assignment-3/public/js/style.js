const forms = document.querySelector(".forms");
const pwShowHide = document.querySelectorAll(".eye-icon");
const links = document.querySelectorAll(".link");


// console.log(forms, pwShowHide, links);

pwShowHide.forEach(icon => {
    icon.addEventListener("click", () => {
        let pwFields = icon.parentElement.parentElement.querySelectorAll(".password");
        pwFields.forEach(password => {
            if(password.type === "password") {
                password.type = "text";
                icon.classList.replace("bx-hide", "bx-show");
                return;
            } 
            // restart
            password.type = "password";
            icon.classList.replace("bx-show", "bx-hide");
        })
    })
})

links.forEach(link => {
    link.addEventListener("click", e => {
        e.preventDefault(); // preventing form submit
        forms.classList.toggle("show-signup");
        const alerts = document.querySelectorAll(".alert");
        alerts.forEach(alert => {
            alert.innerHTML = null;
        })
    })
})
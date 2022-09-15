function validate_uname() {
    var uname = document.getElementById("uname").value;
    var uname_regex = /(?=[A-Za-z0-9@#$%^&+!=]+$)^(?=.*[A-Z])(?=.*[0-9]).*$/;
    if(uname.match(uname_regex)){
        document.getElementById("invaliderrdiv").style.display = "none";
        // alert(uname);
    }
    else {
        document.getElementById("invaliderrdiv").style.display = "inline";
    }
}

function toggle_dark_mode() {
    var element = document.body;
    element.classList.toggle("dark-mode");
}

function handle_keypress(key){
    // console.log(key.key);
    // console.log((key.key).charCodeAt(0));
    if((key.key).charCodeAt(0) == 47){
        toggle_dark_mode();
    }
}

document.addEventListener('keypress', handle_keypress);


function check_valid_form(){
    var passwd = document.getElementById("passw").value;
    var cpasswd = document.getElementById("rpassw").value;
    if(passwd!=cpasswd){
        return false;
    }
    else if(!document.getElementById("gemail").checkValidity()){
        return false;
    }
    else if(document.getElementById("invaliderrdiv").style.display=="inline"){
        return false;
    }
    return true;
}

function submit_click(){
    var mname = document.getElementById("mname").value;
    var gemail = document.getElementById("gemail").value;
    var uname = document.getElementById("uname").value;
    var tlead = document.getElementById("tlead").value;

    if(check_valid_form()){
        alert(
            `
            Name: ${mname}
            Email: ${gemail}
            Username: ${uname}
            Team Lead: ${tlead}
            Team Members: <members>
            `
        )
    }

}
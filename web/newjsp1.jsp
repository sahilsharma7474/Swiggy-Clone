<%-- 
    Document   : newjsp2
    Created on : Oct 25, 2018, 2:40:27 PM
    Author     : sahil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body background="data:image/jpeg;base64,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">
        

<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}

/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

button:hover {
    opacity: 0.8;
}


.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}


.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
    position: relative;
}

img.avatar {
    width: 40%;
    border-radius: 50%;
}


.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    padding-top: 60px;
}


.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto;
    border: 2px solid #888;
    width: 40%;
}


.close {
    position: absolute;
    right: 25px;
    top: 0;
    color: #000;
    font-size: 35px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: red;
    cursor: pointer;
}

.animate {
    -webkit-animation: animatezoom 0.6s;
    animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
    from {-webkit-transform: scale(0)} 
    to {-webkit-transform: scale(1)}
}
    
@keyframes animatezoom {
    from {transform: scale(0)} 
    to {transform: scale(1)}
}


@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}
</style>
</
<h2><center><font size="20"> <font color="red">WELCOME TO SWIGGY CLONE </font></font></center></h2>
<h2><center><font size="20">User Login Form</font></center></h2>
    <center>
<button onclick="document.getElementById('id02').style.display='block'" style="width:auto;">Login</button>
<button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Sign up</button>
<div id="id01" class="modal">
  
  <form class="modal-content animate" action="signupServlet1">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="data:image/png;base64,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" alt="Avatar" class="avatar">
    </div>

    <div class="container">
        <label for="usrname"><b>Username</b></label>
      <input type="text" placeholder="Enter Firstname" name="usrname" required>`
      
      <label for="fname"><b>Firstname</b></label>
      <input type="text" placeholder="Enter Firstname" name="fname" required>`
      
      <label for="lname"><b>Lastname</b></label>
      <input type="text" placeholder="Enter Lastname" name="lname" required>`

      <label for="pswd"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="pswd" required>
      
        <label for="mno"><b>Mob_no</b></label>
      <input type="text" placeholder="Enter Lastname" name="mno" required>
      
      <label for="add"><b>Address</b></label>
      <input type="text" placeholder="Enter Address" name="add" required>`
      
      <button type="submit">Signup</button>
      
      <label>
        <input type="checkbox" checked="checked" name="remember"> Remember me
      </label>
    </div>
      
    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
      <span class="psw">Forgot <a href="#">password?</a></span>
    </div>
  </form>
</div>
<!-- Login Up-->
<div id="id02" class="modal">
  
  <form class="modal-content animate" action="NewServlet">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="data:image/png;base64,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" alt="Avatar" class="avatar">
    </div>

    <div class="container">
      <label for="uname"><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="uname" required>

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="psw" required>
        
      <button formaction="inde.html" type="submit">Login</button>
      <button type="submit">Login With Facebook</button>
      <button type="submit">Login With Google</button>
      
      <label>
        <input type="checkbox" checked="checked" name="remember"> Remember me
      </label>
    </div>

    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Cancel</button>
      <span class="psw">Forgot <a href="#">password?</a></span>
    </div>
  </form>
</div>
    </center>


<script>
// Get the modal
var modal = document.getElementById('id02');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}

var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}

</script>
    </body>
</html>

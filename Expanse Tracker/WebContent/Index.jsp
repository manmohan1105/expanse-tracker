<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
 <head>
    <meta charset="ISO-8859-1">
    <title>Expense Tracker</title>
 	 <style>
  

* {
  box-sizing: border-box;
}

.body1 {
  background: #f6f5f7;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
  font-family: 'Montserrat', sans-serif;
  height: 100vh;
  margin: -20px 0 50px;
}

h1 {
  font-weight: bold;
  margin: 0;
  font-family: 'Work Sans', sans-serif;
  margin-top: 0; }


h2 {
  text-align: center;
  color: white;
  font-family: 'Work Sans', sans-serif;
  margin-top: 0; }
}

p {
  font-size: 14px;
  font-weight: 100;
  line-height: 20px;
  letter-spacing: 0.5px;
  margin: 20px 0 30px;
}

span {
  font-size: 12px;
}

a {
  color: #333;
  font-size: 14px;
  text-decoration: none;
  margin: 15px 0;
}

button {
  border-radius: 20px;
  border: 1px solid #FF4B2B;
  background-color: #FF4B2B;
  color: #FFFFFF;
  font-size: 12px;
  font-weight: bold;
  padding: 12px 45px;
  letter-spacing: 1px;
  text-transform: uppercase;
  transition: transform 80ms ease-in;
}

button:active {
  transform: scale(0.95);
}

button:focus {
  outline: none;
}

button.ghost {
  background-color: transparent;
  border-color: #FFFFFF;
}

form {
  background-color: #FFFFFF;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
  padding: 0 50px;
  height: 100%;
  text-align: center;
}

input {
  background-color: #eee;
  border: none;
  padding: 12px 15px;
  margin: 8px 0;
  width: 100%;
}

.container {
  background-color: #fff;
  border-radius: 10px;
    box-shadow: 0 14px 28px rgba(0,0,0,0.25), 
      0 10px 10px rgba(0,0,0,0.22);
  position: relative;
  overflow: hidden;
  width: 768px;
  max-width: 100%;
  min-height: 480px;
}

.form-container {
  position: absolute;
  top: 0;
  height: 100%;
  transition: all 0.6s ease-in-out;
}

.sign-in-container {
  left: 0;
  width: 50%;
  z-index: 2;
}

.container.right-panel-active .sign-in-container {
  transform: translateX(100%);
}

.sign-up-container {
  left: 0;
  width: 50%;
  opacity: 0;
  z-index: 1;
}

.container.right-panel-active .sign-up-container {
  transform: translateX(100%);
  opacity: 1;
  z-index: 5;
  animation: show 0.6s;
}

@keyframes show {
  0%, 49.99% {
    opacity: 0;
    z-index: 1;
  }
  
  50%, 100% {
    opacity: 1;
    z-index: 5;
  }
}

.overlay-container {
  position: absolute;
  top: 0;
  left: 50%;
  width: 50%;
  height: 100%;
  overflow: hidden;
  transition: transform 0.6s ease-in-out;
  z-index: 100;
}

.container.right-panel-active .overlay-container{
  transform: translateX(-100%);
}

.overlay {
  background: #FF416C;
  background: -webkit-linear-gradient(to right,#333399, #ff00cc);
  background: linear-gradient(to right,  #333399, #ff00cc);
  background-repeat: no-repeat;
  background-size: cover;
  background-position: 0 0;
  color: #FFFFFF;
  position: relative;
  left: -100%;
  height: 100%;
  width: 200%;
    transform: translateX(0);
  transition: transform 0.6s ease-in-out;
}

.container.right-panel-active .overlay {
    transform: translateX(50%);
}

.overlay-panel {
  position: absolute;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
  padding: 0 40px;
  text-align: center;
  top: 0;
  height: 100%;
  width: 50%;
  transform: translateX(0);
  transition: transform 0.6s ease-in-out;
}

.overlay-left {
  transform: translateX(-20%);
}

.container.right-panel-active .overlay-left {
  transform: translateX(0);
}

.overlay-right {
  right: 0;
  transform: translateX(0);
}

.container.right-panel-active .overlay-right {
  transform: translateX(20%);
}

.social-container {
  margin: 20px 0;
}

.social-container a {
  border: 1px solid #DDDDDD;
  border-radius: 50%;
  display: inline-flex;
  justify-content: center;
  align-items: center;
  margin: 0 5px;
  height: 40px;
  width: 40px;
}
.jumbotron:before {
    position: absolute;
    display: block;
    content: "";
    opacity: 0.8;
    top: 0;
    bottom: 0;
    left: 0;
    right: 0;
    background: #ff00cc;
    /* fallback for old browsers */
    background: -webkit-linear-gradient(to right, #333399, #ff00cc);
    /* Chrome 10-25, Safari 5.1-6 */
    background: linear-gradient(to right, #333399, #ff00cc);
    /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */*/ }


    /*=====  End of BUTTON  ======*/
/*==========================================
=            FORM RECTANGLE ETC            =
==========================================*/
.rectangle-1 {
  width: 2000px;
  height: 400px;
  background: #8E2DE2;
  background: -webkit-linear-gradient(to right, #4A00E0, #8E2DE2);
  background: linear-gradient(to right, #4A00E0, #8E2DE2);
  transform-origin: 50% 150% 0;
  position: absolute;
  left: 0;
  z-index: 0;
  transform: scale(1) rotate(-10deg); }

.rectangle-2 {
  width: 2000px;
  height: 400px;
  background: #8E2DE2;
  background: -webkit-linear-gradient(to right, #4A00E0, #8E2DE2);
  background: linear-gradient(to right, #4A00E0, #8E2DE2);
  transform-origin: 65% 100% 0;
  position: absolute;
  right: 0;
  z-index: 0;
  transform: scale(1) rotate(50deg); }

@keyframes fade-in-right {
  from {
    opacity: 0;
    transform: translateX(-100vw) rotate(-15deg); }
  to {
    opacity: 1;
    transform: translateX(0) rotate(-15deg); } }

@keyframes grow1 {
  from {
    opacity: 0;
    transform: scale(2) rotate(-10deg); }
  to {
    opacity: 1;
    transform: scale(1) rotate(-10deg); } }

@keyframes grow2 {
  from {
    opacity: 0;
    transform: scale(2) rotate(50deg); }
  to {
    opacity: 1;
    transform: scale(1) rotate(50deg); } }

@keyframes fadeInFromTop {
  from {
    opacity: 0;
    transform: translateY(-20px); }
  to {
    opacity: 1;
    transform: translateY(0); } }

.rectangle-1 {
  opacity: 0;
  animation: grow1 ease 1s forwards;
  box-shadow: 0px 20px 30px 0px rgba(9, 21, 54, 0.25) !important; }

.rectangle-2 {
  opacity: 0;
  animation: grow2 ease 1s forwards;
  box-shadow: 0px 20px 30px 0px rgba(9, 21, 54, 0.25) !important; }

.rectangle-transparent-1 {
  width: 500px;
  height: 500px;
  border: 15px solid rgba(255, 255, 255, 0.08);
  position: absolute;
  left: -5%;
  bottom: -10%;
  display: block;
  animation: floating-slow ease-in-out 12s infinite; }

.rectangle-transparent-2 {
  width: 600px;
  height: 600px;
  border: 15px solid rgba(255, 255, 255, 0.08);
  position: absolute;
  right: -10%;
  top: 5%;
  display: block;
  animation: floating-slow ease-in-out 12s infinite; }

.circle-1 {
  width: 50px;
  height: 50px;
  border: 2px solid #fff;
  position: absolute;
  display: block;
  border-radius: 50%;
  transform-origin: 50% 50%;
  left: 5%;
  top: 50%;
  animation: fadeInFromTop .5s linear forwards, floating ease 4s infinite; }

.circle-2 {
  width: 70px;
  height: 70px;
  top: 20%;
  left: 83%;
  border: 2px solid #fff;
  position: absolute;
  display: block;
  border-radius: 50%;
  transform-origin: 50% 50%;
  animation: fadeInFromTop .5s linear forwards, floating ease-in-out 4s infinite; }

.circle-3 {
  top: 80%;
  right: 25%;
  width: 40px;
  height: 40px;
  border: 2px solid #fff;
  position: absolute;
  display: block;
  border-radius: 50%;
  animation: fadeInFromTop .5s linear forwards, floating ease-in-out 4s infinite; }

@keyframes floating {
  0% {
    transform: translate(0%, 0%) rotate(25deg); }
  25% {
    transform: translate(5%, 15%) rotate(25deg); }
  50% {
    transform: translate(10%, 5%) rotate(25deg); }
  75% {
    transform: translate(0%, 15%) rotate(25deg); }
  100% {
    transform: translate(0%, 0%) rotate(25deg); } }

@keyframes floating-slow {
  0% {
    transform: translate(0%, 0%) rotate(25deg); }
  25% {
    transform: translate(1%, 3%) rotate(25deg); }
  50% {
    transform: translate(2%, 1%) rotate(25deg); }
  75% {
    transform: translate(0%, 3%) rotate(25deg); }
  100% {
    transform: translate(0%, 0%) rotate(25deg); } }

.triangle {
  position: absolute; }

.triangle-1 {
  right: 0;
  animation: fadeInFromTop .5s linear forwards, floating ease-in-out 6s infinite; }
  .triangle-1 img {
    height: 50px;
    width: 50px;
    transform: rotate(30deg); }

.triangle-2 {
  top: 30%;
  left: 20%;
  animation: fadeInFromTop .5s linear forwards, floating ease-in-out 8s infinite; }
  .triangle-2 img {
    width: 75px;
    height: 75px;
    transform: rotate(15deg); }

.triangle-3 {
  top: 80%;
  left: 15%;
  animation: fadeInFromTop .5s linear forwards, floating ease-in-out 10s infinite; }
  .triangle-3 img {
    width: 45px;
    height: 45px;
    transform: rotate(40deg); }

.triangle-4 {
  top: 60%;
  right: 15%;
  animation: fadeInFromTop .5s linear forwards, floating ease-in-out 5s infinite; }
  .triangle-4 img {
    width: 45px;
    height: 45px;
    transform: rotate(-40deg); }

/*=====  End of FORM RECTANGLE ETC  ======*/
</style>
 	 </head>
 <body>
 	<h2>Expense Tracker: Sign in/up Form</h2>
 	
 	<div class="jumbotron d-flex align-items-center">
        <div class="rectangle-1"></div>
  <div class="rectangle-2"></div>
  <div class="rectangle-transparent-1">
     </div>
  <div class="rectangle-transparent-2"></div>
  <div class="circle-1"></div>
  <div class="circle-2"></div>
  <div class="circle-3"></div>
  <div class="triangle triangle-1">
    <img src="img/obj_triangle.png" alt="">
  </div>
  <div class="triangle triangle-2">
    <img src="img/obj_triangle.png" alt="">
  </div>
  <div class="triangle triangle-3">
    <img src="img/obj_triangle.png" alt="">
  </div>
  <div class="triangle triangle-4">
    <img src="img/obj_triangle.png" alt=""></div></div>
  </div>
  <div class="body1">
<div class="container" id="container">
	<div class="form-container sign-up-container">
		<form action="CreateAccount" method="post">
			<h1>Create Account</h1>
			<!-- <div class="social-container">
				<a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
				<a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
				<a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
			</div> -->
			<span>or use your email for registration</span>
			<input type="text" placeholder="Name" name="uname" required/>
			<input type="email" placeholder="Email" name="uemail" required/>
			<input type="text" placeholder="Contact No." name="ucontactno" required/>
			<input type="password" placeholder="Password" name="upassword" required/>
			<input type="password" placeholder="Confirm Password" name="ucpassword" required/>
			<button>Sign Up</button>
		</form>
	</div>
	<div class="form-container sign-in-container">
		<form action="LoginAccount" method="post">
			<h1>Sign in</h1>
			<!-- <div class="social-container">
				<a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
				<a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
				<a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
			</div> -->
			<span>or use your account</span>
			<input type="email" placeholder="Email" name="uemail" required/>
			<input type="password" placeholder="Password" name="upassword" required/>
			<a href="#">Forgot your password?</a>
			<!--<input type="submit" value="Login">-->
			 <button>Sign In</button>  
		</form>
	</div>
	<div class="overlay-container">
		<div class="overlay">
			<div class="overlay-panel overlay-left">
				<h1>Welcome Back!</h1>
				<p>To keep connected with us please login with your personal info</p>
				<button class="ghost" id="signIn">Sign In</button>
			</div>
			<div class="overlay-panel overlay-right">
				<h1>Hello, Friend!</h1>
				<p>Enter your personal details and start journey with us</p>
				<button class="ghost" id="signUp">Sign Up</button>
			</div>
		</div>
	</div></div>
</div>
 
<script type="text/javascript">
	const signUpButton = document.getElementById('signUp');
const signInButton = document.getElementById('signIn');
const container = document.getElementById('container');

signUpButton.addEventListener('click', () => {
	container.classList.add("right-panel-active");
});

signInButton.addEventListener('click', () => {
	container.classList.remove("right-panel-active");
});
</script>
 </body>
</html>
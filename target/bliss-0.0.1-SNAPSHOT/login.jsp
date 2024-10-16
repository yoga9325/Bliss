<!DOCTYPE html>
<html lang="en">
<head>


<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">
<title>Bliss </title>
<!-- Main css -->
<link rel="stylesheet" href="css/style.css">

  
</head>
<body>

	<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
	
	<div class="main">

		<!-- Sing in  Form -->
		<section class="sign-in">
			<div class="container">
				<div class="signin-content">
					<div class="signin-image">
						<figure>
							<img src="img/login/signin-image.jpg" alt="sing up image">
						</figure>
						<a href="Registration.jsp" class="signup-image-link">Create an
							account </a>
						
					</div>
					
					

					<div class="signin-form">
						<h2 class="form-title">Sign in</h2>
						<form method="POST" action="login" class="register-form"
							id="login-form">
							<div class="form-group">
								<label for="username"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="email" name="email" id="username"
									placeholder="User Name"/>
							</div>
							<div class="form-group">
							
								<label for="password"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="pass" id="password"
									placeholder="Password"/>
							</div>
							<div class="form-group">
								<input type="checkbox" name="remember-me" id="remember-me"
									class="agree-term" /> <label for="remember-me"
									class="label-agree-term"><span><span></span></span>Remember
									me</label>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signin" id="signin"
									class="form-submit" value="Log in" />
							</div>
						</form>
						<div class="social-login">
							<span class="social-label">Or login with</span>
							<ul class="socials">
								<li><a href="#"><i
										class="display-flex-center zmdi zmdi-facebook"></i></a></li>
								<li><a href="#"><i
										class="display-flex-center zmdi zmdi-twitter"></i></a></li>
								<li><a href="#"><i
										class="display-flex-center zmdi zmdi-google"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</section>

	</div>

	<!-- JS -->
	
	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
	
	
	<script type="text/javascript">
	var status =document.getElementById("status").value;
	
	 
	 if(status=="failed")
		 {
		 swal("Oops...","Worng user Id and password","error");
		 }
	</script>
	
</body>

</html>
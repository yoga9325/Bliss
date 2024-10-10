<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bliss </title>
    <script src="https://kit.fontawesome.com/20551e3bc2.js" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="style.css">
	<style>
	#let{
	color:red;
	}
	</style>
</head>



<body>
<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">

<section id="header">
    <a href="#"><img src="img/logo.png"class=logo alt=""></a>
    <div>
        <ul id="navbar">
        <li><a  href="index.html">Home</a></li>
        <li><a href="login.jsp">Sign In</a></li>
        <li><a href="blog.html">Blog</a></li>
        <li><a href="about.html">About</a></li>
        <li><a class="active" href="contact.jsp">Contact</a></li>
       
        </ul>
    </div> 
    <div id="mobile">
        <i id="bar" class="fas fa-outdent"></i>
        <a href="cart.html"><i class="fa-solid fa-cart-shopping"></i></a>

    </div>
</section>

<section id="page-header" class="about-header">
    
    <h2 >let's Talk</h2>
    
    <P>LEAVE A MESSAGE , WE LOVE TO HEAR FROM YOU! </P>
  
</section>
<section id="contact-details">
    <div class="details">
       &nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<i class="fa-solid fa-user-doctor fa-3x"></i>
   <p>Dr. Sagar Mundada(Psychiatrist)</p><br>
 &nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<i class="fa-solid fa-house fa-3x"></i>
  <p>Plot no-77,79 Jyoti Nagar,New Usmanpura,<br> Chattrapati Shambhaji Nagar 431001</p><br>
 &nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<i class="fa-solid fa-user fa-3x"></i>
<p>Mobile no: 9004670789</p>
        
        
        
        
    </div>
    <div class="map">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3751.5374750274887!2d75.30746107468528!3d19.9017432255324!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bdb98271b7b972d%3A0xfe6416748fc3182c!2sDepartment%20Of%20Management%20Science%20(UDMS)%2C%20Dr.%20Babasaheb%20Ambedkar%20Marathwada%20University!5e0!3m2!1sen!2sin!4v1687515910175!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    </div>
</section>
<section id="form-details">
    
        <span>LEAVE A MESSAGE</span>
        <h2>We Love to Hear from you</h2>
        <form action="con" method="POST">
<input type="text" name="name" placeholder="Your Name">
<input type="email" name="email" placeholder="E-mail">
<input type="text" name="sub" placeholder="Subject">
<textarea name="msg" id="" cols="30" rows="10" name="email" placeholder="Your Message"></textarea>
<button class="normal">Submit</button>   
</form>
</section> 


<section id="newsletter" class="section-p1 section-m1">
    <div class="newstext">
        <h4> Search your account</h4>
        <p> Get E-mail update for fast <span>reflief. </span></p>
    </div>
    <div class="form">
        <input type="text" placeholder="Your email address ">
        <button class="normal">Sign up</button>
    </div>
 </section>
<footer class="section-p1 ">


    <script src="script.js"></script>
    <div class="col">
        <img class="logo" src="img/logo.png" alt="">
		<br><br>
        <h4>CONTACT</h4>
        <p><strong>Address:</strong> Dr. Babasaheb Ambedkar Marathwada <br>University,Chhatrapati Sambhaji Nagar</p>
        <p><strong>Phone :</strong>845952148</p>
        
        <div class="follow">
            <h4>follow us</h4>
            <div class="icon">
               <i class="fab fa-facebook-f"></i>
                <i class="fab fa-twitter " onclick=img src="https://publish.twitter.com"  ></i>
                <i class="fab fa-instagram"></i>
            
				
            </div>
        </div>
    </div>
    <div class="col">
        <h4>About</h4>
        <a href="about.html">About us </a>
        
        <a href="#">privacy Policy </a>
        <a href="#">Term & Condition </a>
        <a href="contact.html">contact us  </a>
    </div>
    <div class="col">
        <h4>MY Account </h4>
        <a href="login.html">sign in </a>
        <a href="#">Help </a>
    </div>
   
    <div class="copyright">
        <p> @2023 The NSY Team</p>
    </div>
</footer>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
	
	
	<script type="text/javascript">
	var status =document.getElementById("status").value;
	 if(status=="success")
		 {
		 swal("Thanks!","The form was submitted successfully.","success");
		 }
	 if(status=="failed")
		 {
		 swal("Oops...","Can't send an empty form","error");
		 }
	</script>
</body>   
</html>   
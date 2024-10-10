<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>
            Bliss
        </title>
        <link rel="stylesheet" href="new quiz/style.css"/>
       
    </head>

    <body>
    <input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
        <main class="main">
            <header class="header">
              
              <img src="new quiz/images/logo.png" class="logo">
              <nav class="navbar">
                <a href="index.html">Home</a>
        		<a href="blog.html">Blog</a>
       			<a href="about.html">About</a>
        		<a href="contact.jsp">Contact</a>
        		<a href="logout.jsp">Log Out</a>
        		<a href="#"><span><img class="profileImg" src="new quiz/images/user.png" width="20" height="18"></a></span>&nbsp;<span><%= session.getAttribute("uname") %></span>
              </nav>
            </header>


            <div class="container">
                <section class="quiz-section">
                    <div class="quiz-box">
                        <h1>Stress Test</h1>
                        <div class="quiz-header">
                            <span>Bliss Website Tutorials</span>
                            <span class="header-score">Remining: 1/10</span>
                        </div>
                        <h2 class="question-text">What does Html stand for?</h2>
                        <div class="option-list">
                            <!-- <div class="option">
                                <span>a.hyper type mu </span>
                            </div>
                            <div class="option">
                                <span>b. afjd</span>
                            </div>
                            <div class="option">
                                <span>c. afdsa</span>
                            </div>
                            <div class="option">
                                <span>d. aosdifaj</span>
                            </div> -->
                        </div>
                        <div class="quiz-footer">
                            <span class="question-total">1 of 8 question</span>
                            <button class="next-btn">Next</button>
                        </div>
                    </div> 
                    <div class="result-box">
                        <h2>Stress Level !</h2>
                        <div class="percentage-container">
                            <div class="cricular-progress">
                                <span class="progress-value">0%</span>
                            </div>

                            <span class="score-text">Your stress 0 out of 10</span>
                        </div>

                       <div class="buttons">
                            <button class="tryAgain-btn">Try Again</button>
                            <button class="goHome-btn">Recommendation</button>
                       </div>
                    </div>      
                </section>
                <section class="home">
                    <div class="home-content">
                        <h1>Bliss Website</h1>
                        <p>Play quiz</p>
                        <button class="start-btn">Count stress</button>
                    </div>
                </section>
            </div>


           
        </main>

        <div class="popup-info">
            <h2>Test Guide</h2>
            <span class="info">1. All questions are compulsory </span>
            <span class="info">2. Choose answer according to your mood </span>
            <span class="info">3. According to your score you will get further recommendation </span>
            

            <div class="btn-group">
                <button class="info-btn exit-btn">Exit Test</button>
                <a href="#" class="info-btn continue-btn">Continue</a>
            </div>
        </div>
        <script src="new quiz/question.js"></script>
        <script src="new quiz/script.js"></script>
        
        
	<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
	
	
	<script type="text/javascript">
	var status =document.getElementById("status").value;
	
	 
	 if(status=="success")
		 {
		 swal("Congrats","Login successfull","success");
		 }
	</script>
	
    </body>
</html>
<!DOCTYPE html>

<html>
<head>
	<style>
	body {
background-color: #b8c6db;
background-image: linear-gradient(315deg, #b8c6db 0%, #f5f7fa 100%);
font-family: "Poppins", sans-serif;
display: flex;
align-items: center;
justify-content: center;
height: 100vh;
overflow: hidden;
margin: 0;
}
		button {
background-color: #8e44ad;
color: #fff;
border: none;
display: block;
width: 20%;
height:40px;
cursor: pointer;
font-size: 1.1rem;
font-family: inherit;
padding: 1rem;
border-radius: 8px;
}
button:hover{
    background-color: #04adc4;
}
.reg {
background-color: #f8f9ca;

border-radius: 10px;
box-shadow: 0 0 10px 2px rgba(100, 100, 100, 0.1);
width: 600px;
max-width: 95vw;
overflow: hidden;
}
button:focus{
    outline: none;
    background-color: #44b927;
}
 #bt1{
  position: relative;
    top: 30px;
    left: -150px;
    
    bottom: 0;
 }
 #bt2{
  position: relative;
    top: -10px;
    left: 0px;
    right: 0;
    
 }
 
	</style>

</head>
<body>
<%@page import="registration.RegisterDao"%>
<jsp:useBean id="obj" class="registration.User"/>
<jsp:setProperty property="*" name="obj"/>
<center>
<div class="reg">
<h1 style=color:red>
<%
RequestDispatcher rd=null;

int status=RegisterDao.register(obj);

rd=request.getRequestDispatcher("Registration.jsp");

if(status>0){
	request.setAttribute("status", "success");
}
else{
	request.setAttribute("status", "failed");
}
rd.forward(request, response);
%>
<jsp:include page="Registration.jsp"></jsp:include>
</h1>

</div>
</center>
</body>
</html>

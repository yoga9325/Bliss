<%@page import="login.LoginDao"%>
<jsp:useBean id="obj" class="login.LoginBean"/>

<jsp:setProperty property="*" name="obj"/>

<%


RequestDispatcher rd=null;

String uname=LoginDao.validate(obj);


if(obj.isStatus()){
	
	session.setAttribute("uname" , uname);
	request.setAttribute("status", "success");
	rd=request.getRequestDispatcher("loginpage.jsp");

}
else
{
	request.setAttribute("status", "failed");
	rd=request.getRequestDispatcher("login.jsp");
}	
rd.forward(request, response);
%>
<jsp:include page="login.jsp"></jsp:include>

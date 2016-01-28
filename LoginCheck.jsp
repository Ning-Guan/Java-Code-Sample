<%@page import="dataConnect.UsersConnection"%>
<%@page import="entity.Users"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
request.setCharacterEncoding("utf-8");
Users user = new Users();
UsersConnection uCon = new UsersConnection();

String username = request.getParameter("username");
String pwd = request.getParameter("pwd");
user = uCon.login(username, pwd);

if(user != null){
//out.print("Login Succeed");
response.sendRedirect("AllUsers.jsp"); //you'll be able to see all users' info
}
else{
//out.print("Login Failed");
response.sendRedirect("LoginPage.jsp"); //go back to the login page and try again
}


%>


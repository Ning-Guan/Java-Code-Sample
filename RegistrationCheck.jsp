<%@page import="dataConnect.UsersConnection"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="entity.Users" %>
<%

request.setCharacterEncoding("utf-8");
String username = request.getParameter("username");
String pwd = request.getParameter("pwd");
int age = Integer.parseInt(request.getParameter("age"));
String gender = request.getParameter("gender");
String tel = request.getParameter("tel");

UsersConnection uCon = new UsersConnection();
Users users1 = new Users(username,pwd,age,gender,tel); 
int i = uCon.insert(users1); //set i with the return value of insert()

	if(i==1){
	//out.print("Add Successfully");
	response.sendRedirect("LoginPage.jsp"); //go to the login page
	}
	else{
	//out.print("Add new user failed"); 
	response.sendRedirect("Registration.jsp"); //go back to the registration page 
	}

%>

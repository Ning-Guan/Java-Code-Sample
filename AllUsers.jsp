<%@page import="entity.Users"%>
<%@page import="dataConnect.UsersConnection"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'AllUsers.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   <h1>User Management</h1>
   <%
   UsersConnection uCon = new UsersConnection();
   List<Users> usersList = uCon.findAll();
   
   for (Users eachUser: usersList){
	int id = eachUser.getId();
	String username = eachUser.getUsername();
	String pwd = eachUser.getPwd();
	int age = eachUser.getAge();
	String gender = eachUser.getGender();
	String tel = eachUser.getTel();
   	
   	out.print("<p>"+id+" "+username+" "+pwd+" "+age+" "+gender+" "+tel+"</p>");
   
   }  
   
    %>
  </body>
</html>

<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Registration.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <script type="text/javascript">
  $(function (){
	 function checkUsername(){
			var status=true;
			$("input[name='username']").each(function() {
				if($(this).val()==""){
					alert("Username can't be empty.");
					status=false;
				}
	            
	        });
			return status;
		};
  
 	 function checkPwd(){
			var status=true;
			$("input[name='pwd']").each(function() {
				if($(this).val()==""){
					alert("Password can't be empty.");
					status=false;
				}
	        });
			return status;
		};
  
  
 	 function checkAge(){
			var status=true;
			$("input[name='age']").each(function() {
				if($(this).val()==""){
					alert("Age can't be empty.");
					status=false;
				}
				else if(!Number($(this).val())){
					alert("Age must be a number.");
					status=false;
				} 
	        });
			return status;
		};
		
	 function checkgender(){
	 	var status = true;
	 	$("input[name='gender']").each(function(){
	 	if($(this).val()==""){
	 		alert("Gender can't be empty.");
	 		status = false;
	 	}
	 	});	
	 };
		
 	 function checkTel(){
			var status=true;
			$("input[name='tel']").each(function() {
				if($(this).val()==""){
					alert("Tel# can't be empty.");
					status=false;
				}
	           
	        });
			return status;
		};


  	$("input[name='submit']").click(function(){
  		if(checkUsername()&&checkPwd()&&checkAge()&&chekTel()){
  			return true;
  		}
  		else{
  			return false;
  		}
    	
  	});
  	
  	
  });
  
  
  
  </script>
  
  <body>
   <form action="RegistrationCheck.jsp" method="post">
   
   <h1>New User Registration</h1>
   <p>Username:<input name="username"></p>
   <p>Password:<input name="pwd"></p>
   <p>Age:<input name="age"></p>
   <p>Gender:<input name="gender" type="radio" value="male" checked="checked">Male
   <input name="gender" type="radio" value="female">Female</p>
   <p>Tel:<input name="tel"></p>
   <p><input type="submit" value="Register" name="submit"></p>
   
   </form>
  </body>
</html>

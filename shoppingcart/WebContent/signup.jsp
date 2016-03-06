<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.marlabs.cart.signupregister"%>
<jsp:useBean id="obj" class="com.marlabs.cart.signup"/>
<jsp:setProperty property="*" name="obj"/>

<%  
 signupregister.register(obj);
%>
<body style="background-color:black;background-repeat:no-repeat;background-size:1000px 300px"> 
<h3 style="margin-left:610px;color:white;font-size:23px">Welcome,&nbsp<%out.print(request.getParameter("firstname")); %></h3>
<div class="si">
<p style="text-align:center;color:white;font-size:25px"><%out.print(request.getParameter("firstname")+","); %> Please Click The Link To Visit Our Home Page And Start Shopping</p>
<a href="index.html" style="text-decoration:none;color:white"><span style="margin-left:650px;border-bottom:2px dashed white;font-size:20px">Home</span></a>
</div>
</body>
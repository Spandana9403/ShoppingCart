<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<body style="background-color:black;">
<%String name=(String)session.getAttribute("username"); %>
<p style="text-align:center;font-size:25px;color:white;margin-top:300px;">Thank You, <span style="border-bottom:2px solid white;"><%=name %></span> For Shopping With Us. Please Visit us Again Soon.
<p style="margin-left:610px;font-size:20px;font:verdana;"><a href="index.html" style="text-decoration:none;"><span style="border-bottom:2px dotted #C0C0C0;color:white;">HomePage</span></a></p>
<%session.invalidate(); %>

</body>

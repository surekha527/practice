<html>

<%   
  
String name=request.getParameter("uname");  
out.print("Welcome "+name);  
  
pageContext.setAttribute("user",name,PageContext.SESSION_SCOPE);  
%>
<body>

	<a href="Pagecount3.jsp">second jsp page</a>

</body>
</html>

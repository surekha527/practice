<html>
	<%
		String mobile=request.getParameter("mobile");
		session.setAttribute("mobile", mobile);
		//response.sendRedirect("http://www.google.com");
		//String driver=config.getInitParameter("mobile");  
		//out.print("driver name is="+mobile);
	%>
	<body>
		<form action="ReviewInfo.jsp">
			Area: <input type='text' name='area'><BR>
			<input type='submit' value='Next'>	
		</form>
	</body>
</html>
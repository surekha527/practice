<html>
	<%
		String name=request.getParameter("fullname");
		session.setAttribute("name", name);
		
		pageContext.setAttribute("name_ps", name, PageContext.PAGE_SCOPE);
		pageContext.setAttribute("name_ps", name, PageContext.REQUEST_SCOPE);
		pageContext.setAttribute("name_ps", name, PageContext.SESSION_SCOPE);
		pageContext.setAttribute("name_ps", name, PageContext.APPLICATION_SCOPE);
	%>
	<body>
		<form action="AddressInfo.jsp">
			Mobile: <input type='text' name='mobile'><BR>
			<input type='submit' value='Next'>	
		</form>
		
		Session Scope <%=session.getAttribute("name")%>
		<BR>
		<BR>		
		Page Scope: <%=pageContext.getAttribute("name_ps", PageContext.PAGE_SCOPE)%>
		<BR>
		Request Scope: <%=pageContext.getAttribute("name_ps", PageContext.REQUEST_SCOPE)%>
		<BR>
		Session Scope: <%=pageContext.getAttribute("name_ps", PageContext.SESSION_SCOPE)%>
		<BR>
		Application Scope: <%=pageContext.getAttribute("name_ps", PageContext.APPLICATION_SCOPE)%>
		
		<jsp:include page="Include.jsp"></jsp:include>
	</body>
</html>
<html>
	<%
		String area=request.getParameter("area");
		session.setAttribute("area", area);
	%>
	<body>
		<form action="ReviewInfo.jsp">
			Name: <%=session.getAttribute("name") %><BR>
			Mobile: <%=session.getAttribute("mobile") %><BR>
			Area: <%=session.getAttribute("area") %><BR>
		</form>
	</body>
	
	<%! int index=0;  %>
	
	<%for(index=1; index<11; index++) {%>
	
		<%=index  %><BR>
		
	<%} %>
	
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
</html>
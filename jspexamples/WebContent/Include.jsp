I am from Include.jsp............
Session Scope: <%=session.getAttribute("name")%>
<BR>
<BR>
Page Scope:<%=pageContext.getAttribute("name_ps", PageContext.PAGE_SCOPE)%>
<BR>
Request Scope:<%=pageContext.getAttribute("name_ps", PageContext.REQUEST_SCOPE)%>
<BR>
Session Scope:<%=pageContext.getAttribute("name_ps", PageContext.SESSION_SCOPE)%>
<BR>
Application Scope:<%=pageContext.getAttribute("name_ps", PageContext.APPLICATION_SCOPE)%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<html>
   <head>
      <title> <JstlOut>Param Example</title>
   </head>

   <body>
<c:url value = "/Fnindexof.jsp" var = "myURL">
   <c:param name = "trackingId" value = "1234"/>
   <c:param name = "reportType" value = "summary"/>
</c:url>
<a href = "${myURL}">Next</a>
</body>
</html>
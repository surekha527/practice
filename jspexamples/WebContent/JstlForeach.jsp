<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<html>
   <head>
      <title><JstlForEach> Tag Example</title>
   </head>

   <body>
      <c:forEach var = "i" begin = "1" end = "5">
         <c:out value = "${i}"/><p>
      </c:forEach>
   </body>
</html>
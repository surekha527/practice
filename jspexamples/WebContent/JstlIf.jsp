<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<html>
   <head>
      <title><JstlIf> Tag Example</title>
   </head>

   <body>
      <c:set var = "salary" scope = "session" value = "${10000*2}"/>
      <c:if test = "${salary > 2000}">
         <p>My salary is:  <c:out value = "${salary}"/><p>
      </c:if>
   </body>
</html>
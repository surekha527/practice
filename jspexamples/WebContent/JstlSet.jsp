<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<html>
   <head>
      <title><JstlSet>Set Tag Example</title>
   </head>

   <body>
      <c:set var = "salary" scope = "session" value = "${10000-200}"/>
      <c:out value = "${salary}"/>
   </body>
</html>
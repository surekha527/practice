<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<html>
   <head>
      <title><JstlCatch> Tag Example</title>
   </head>

   <body>
      <c:catch var ="catchException">
         <% int x = 20/2;%>
      </c:catch>

      <c:if test = "${catchException != null}">
         <p>The exception is : ${catchException} <br />
         There is an exception: ${catchException.message}</p>
      </c:if>
   </body>
</html>
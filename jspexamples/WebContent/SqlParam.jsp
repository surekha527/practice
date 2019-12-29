<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

<html>
   <head>
      <title>JSTL sql:param Tag</title>
   </head>

   <body>
      <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost:3306/jdbc"
         user = "root"  password = "root"/>

      <c:set var = "id" value = "104"/>

      <sql:update dataSource = "${snapshot}" var = "count">
         DELETE FROM user WHERE Id = ?
         <sql:param value = "${id}" />
      </sql:update>

      <sql:query dataSource = "${snapshot}" var = "result">
         SELECT * from user;
      </sql:query>
 
      <table border = "1" width = "50%">
         <tr>
            <th>Emp ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Age</th>
         </tr>
         <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td> <c:out value = "${row.id}"/></td>
               <td> <c:out value = "${row.firstname}"/></td>
               <td> <c:out value = "${row.lastname}"/></td>
               <td> <c:out value = "${row.age}"/></td>
            </tr>
         </c:forEach>
      </table>

   </body>
</html>
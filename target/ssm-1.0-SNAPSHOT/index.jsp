<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>ssm项目</title>
    <link rel="shortcut icon" href="#"/>
</head>
<body>
     <div align="center">
         <h3>ssm项目</h3>
         <img src="images/ssm.jpg">
         <table>
             <tr>
                 <td><a href="addStudent.jsp">注册新学生</a></td>
             </tr>
             <tr>
                 <td><a href="${pageContext.request.contextPath}/student/queryStudent">查询学生信息</a> </td>
             </tr>
         </table>
     </div>
</body>
</html>
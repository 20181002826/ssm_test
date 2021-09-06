<%--
  Created by IntelliJ IDEA.
  User: fzj
  Date: 2019/11/5
  Time: 10:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>
<table border="1" align="center" cellspacing="0">
    <tr align="center">
        <td><h3>编号</h3></td>
        <td><h3>姓名</h3></td>
        <td><h3>年龄</h3></td>
        <td colspan="2"><h3>操作</h3></td>
    </tr>
    <c:forEach items="${studentList}" var="stu">
        <tr align="center">
            <td>${stu.id }</td>
            <td>${stu.name }</td>
            <td>${stu.age }</td>
            <td><a href="${pageContext.request.contextPath }/student/deleteStudent?id=${stu.id}">删除</a></td>
            <td><a href="${pageContext.request.contextPath }/student/update?id=${stu.id}">修改</a></td>
        </tr>
    </c:forEach>
    <a href="${pageContext.request.contextPath}/addStudent.jsp" >继续添加学生</a>

</table>
</body>
</html>

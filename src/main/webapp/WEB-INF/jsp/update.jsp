<%--
  Created by IntelliJ IDEA.
  User: fzj
  Date: 2019/11/5
  Time: 10:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>修改数据</title>
</head>
<body>

<form action="${pageContext.request.contextPath }/student/update2" >
    <table align="center">
        <tr>
            <td>编号:</td>
            <td><input type="text" name="id" value="${stu.id}" readonly="readonly"></td>
        </tr>
        <tr>
            <td>姓名:</td>
            <td><input type="text" name="name" value="${stu.name}"></td>
        </tr>
        <tr>
            <td>年龄:</td>
            <td><input type="text" name="age" value="${stu.age}"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><input type="submit" value="提交" ></td>
        </tr>
    </table>

</form>

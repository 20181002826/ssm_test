
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>结果页面</title>
</head>
<body>
     <div align="center">
         <h3>注册结果:${tip}</h3>
         <a href="${pageContext.request.contextPath}/addStudent.jsp"><h4>继续添加</h4></a> <br/>
         <a href="${pageContext.request.contextPath}/student/queryStudent"><h4>查询信息</h4></a> <br/>
         <a href="${pageContext.request.contextPath}/index.jsp"><h4>回到首页</h4></a>

     </div>
</body>
</html>

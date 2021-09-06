<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加学生</title>
    <link rel="shortcut icon" href="#"/>
</head>
<body>
    <div align="center">
        <p>输入姓名和年龄</p>
        <form action="student/addStudent">
            <table>
                <tr>
                    <td>姓名:</td>
                    <td><input type="text" name="name"/></td>
                </tr>
                <tr>
                    <td>年龄:</td>
                    <td><input type="text" name="age"/></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td><input type="submit" value="注册"></td>

                </tr>
            </table>
        </form>
    </div>
</body>
</html>

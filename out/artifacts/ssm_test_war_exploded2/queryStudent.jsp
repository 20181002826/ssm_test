<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查询学生</title>
    <link rel="shortcut icon" href="#"/>
    <script type="text/javascript" src="js/jquery-3.4.1.js"></script>
    <script type="text/javascript">
        $(function (){
            $("#into").html("");
            load();
        })

        function load(){
            $.ajax({
                url:"student/queryStudent.do",
                type:"post",
                dataType:"json",
                success:function (resp) {
                    $("#into").html("");
                    $.each(resp,function (i,n){
                        $("#into")
                            .append("<tr>")
                            .append("<td>"+n.id+"</td>")
                            .append("<td>"+n.name+"</td>")
                            .append("<td>"+n.age+"</td>")
                            .append("</tr>")
                    })
                }
            })
        }


    </script>
</head>
<body>
     <div align="center">
         <table border="1" cellspacing="0">
             <thead>
                <tr>
                    <td>编号&nbsp;&nbsp;&nbsp;</td>
                    <td>姓名&nbsp;&nbsp;&nbsp;</td>
                    <td>年龄</td>
                </tr>
             </thead>
             <tbody id="into">

             </tbody>
         </table>
     </div>
</body>
</html>

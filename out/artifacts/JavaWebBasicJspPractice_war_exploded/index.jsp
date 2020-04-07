<%--
  Created by IntelliJ IDEA.
  User: 11954
  Date: 2020/4/5
  Time: 23:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%! int day = 3; %>
<html>
<head>
    <title>第一个 JSP 程序</title>
</head>
<body>
<%
    out.println("Hello World！");
%>
<br>
<%
    out.println("Your IP address is " + request.getRemoteAddr());
%>
<br>
<p>
    今天的日期是: <%= (new java.util.Date()).toLocaleString()%>
</p>
<br>
<h3>IF...ELSE 实例</h3>
<% if (day == 1 | day == 7) { %>
<p>今天是周末</p>
<% } else { %>
<p>今天不是周末</p>
<% } %>
<br>
<h3>SWITCH...CASE 实例</h3>
<%
    switch (day) {
        case 0:
            out.println("星期天");
            break;
        case 1:
            out.println("星期一");
            break;
        case 2:
            out.println("星期二");
            break;
        case 3:
            out.println("星期三");
            break;
        case 4:
            out.println("星期四");
            break;
        case 5:
            out.println("星期五");
            break;
        default:
            out.println("星期六");
    }
%>

<h3>For 循环实例</h3>
<%! int fontSize; %>
<%for (fontSize = 1; fontSize <= 3; fontSize++) { %>
<font color="green" size="<%= fontSize %>">
    菜鸟教程
</font><br/>

<h3>While 循环实例</h3>
<%while (fontSize <= 3) { %>
<font color="green" size="<%= fontSize %>">
    菜鸟教程
</font><br/>
<%fontSize++;%>
<%}}%>
</body>
</html>

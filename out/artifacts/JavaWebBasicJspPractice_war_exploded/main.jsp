<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: 11954
  Date: 2020/4/6
  Time: 12:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>菜鸟教程(runoob.com)</title>
</head>
<body>

<h2>Jsp 使用 JavaBean 实例</h2>
<jsp:useBean id="test" class="com.lq.jsptest.TestBean" />

<jsp:setProperty name="test"
                 property="message"
                 value="菜鸟教程..." />

<p>输出信息....</p>

<jsp:getProperty name="test" property="message" />

<h2>HTTP 头部请求实例</h2>
<table width="100%" border="1" align="center">
    <tr bgcolor="#949494">
        <th>Header Name</th><th>Header Value(s)</th>
    </tr>
    <%
        Enumeration headerNames = request.getHeaderNames();
        while(headerNames.hasMoreElements()) {
            String paramName = (String)headerNames.nextElement();
            out.print("<tr><td>" + paramName + "</td>\n");
            String paramValue = request.getHeader(paramName);
            out.println("<td> " + paramValue + "</td></tr>\n");
        }
    %>
</table>

</body>
</html>
<%--
  Created by IntelliJ IDEA.
  User: 文博
  Date: 2020/10/13
  Time: 16:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <%@include file="common/common.jsp"%>
</head>
<body>
<center>
<table border="1">
    <tr>
        <th>序号</th>
        <th>名称</th>
        <th>时长</th>
        <th>评分</th>
        <th>简介</th>
        <th>类型</th>
        <th>上映时间</th>
        <th>操作</th>
    </tr>
    <c:forEach items="${mlist}" var="m">
        <tr>
            <td>${m.movieid}</td>
            <td>${m.moviename}</td>
            <td>${m.movielang}</td>
            <td>${m.moviescore}</td>
            <td>${m.moviedesc}</td>
            <td>${m.type.typename}</td>
            <td>${m.dmdate}</td>
            <td>
                <button>
                    <a href="ftype?movieid=${m.movieid}">编辑</a>
                </button>
            </td>
        </tr>
    </c:forEach>
</table>
</center>
</body>
</html>

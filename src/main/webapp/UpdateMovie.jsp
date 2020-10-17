<%--
  Created by IntelliJ IDEA.
  User: 文博
  Date: 2020/10/14
  Time: 14:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<center>
<form action="upmovie" method="post">
    <input type="hidden" name="movieid" value="${movieByid.movieid}">
<table border="1">
    <tr>
        <td>电影名称</td>
        <td><input type="text" name="Moviename" value="${movieByid.moviename}"></td>
    </tr>
    <tr>
        <td>片长</td>
        <td><input type="text" name="Movielang" value="${movieByid.movielang}"></td>
    </tr>
    <tr>
        <td>评分</td>
        <td><input type="text" name="Moviescore" value="${movieByid.moviescore}"></td>
    </tr>
    <tr>
        <td>上映时间</td>
        <td><input type="date" name="Dmdate" value="${movieByid.dmdate}"></td>
    </tr>
    <tr>
        <td>简介</td>
        <td><input type="text" name="Moviedesc" value="${movieByid.moviedesc}"></td>
    </tr>
    <tr>
        <td>电影类型</td>
        <td>
            <select name="Typeid">
             <c:forEach items="${typeList}" var="t">
                 <c:if test="${typeid==t.id}">
                     <option selected value="${t.id}">${t.Typename}</option>
                 </c:if>
                 <c:if test="${typeid!=t.id}">
                     <option selected value="${t.id}">${t.Typename}</option>
                 </c:if>
             </c:forEach>
            </select>
        </td>
    </tr>
    <tr>
        <td><input type="submit" value="提交"></td>
    </tr>
</table>
</form>
</center>
</body>
</html>

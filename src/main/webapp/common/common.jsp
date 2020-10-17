<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/7/30
  Time: 8:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
   String path = request.getContextPath();
   String basePath = request.getScheme()+"://"+request.getServerName()+":"+
   request.getServerPort()+"/"+path+"/";
%>
<base href="<%=basePath%>"/>

<!--引入vue js文件-->
<script src="scripts/vue.js"></script>
<!--引入element ui  js 文件-->
<script src="scripts/index.js"></script>
<!--引入element ui css文件-->
<link rel="stylesheet" href="scripts/index.css">
<!--引入axios js文件-->
<script src="scripts/axios.js"></script>
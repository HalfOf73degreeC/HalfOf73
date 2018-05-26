<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<link rel='stylesheet' href='${pageContext.request.contextPath}/css/styles.css'  type="text/css" />
<title>MVC架構</title>
</head>
<body BGCOLOR="white">
<%-- <jsp:include page="/commons/header.jsp" /> --%>

<h2 align="center">Ch04 MVC架構與存取資料庫</h2>
<div align="center">

<table border="1">
  <tr height="80" bgcolor="lightblue" align="center">
    <td  width="350"><p align="left">
      <a href="register.jsp">新增會員資料(HO73)</a>
    <td  width="350"><p align="left">
      <a href="queryAllMembers_HO73.do">查詢會員資料(HO73)</a>
  </tr>   
</table>
</div>
<hr>
<%-- <jsp:include page="/commons/footer.jsp" /> --%>
</body>
</html>

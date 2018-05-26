<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<link rel='stylesheet' href='${pageContext.request.contextPath}/css/styles.css'  type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MVC</title>
</head>
<body>
<CENTER>
<H1>加入會員(將會員資料寫入HO73資料庫)</H1>
 (1) Controller呼叫 error.jsp 與 success.jsp 兩個 View 元件<BR>
 (2) 呼叫Model元件來進行會員資料的新增<BR><P/>
 <a href="createMember_HO73.do">按這裡來新建Member_HO73表格</a><BR>
<HR>
<Form Action="register0403_HO73.do" method="POST">
    <Table>
         <TR>
             <TD align="RIGHT">會員帳號：</TD>
             <TD align="LEFT">
             <input	type="text" name="memAccount" value="${param.memAccount}" size="20">
             <div style="color:#FF0000; font-size:60%; display:inline">${ErrorMsg.memAccount}</div>
             </TD>
         </TR>
         <TR>
             <TD align="RIGHT">會員名稱：</TD>
             <TD align="LEFT" >
             <input	type="text" name="memName" value="${param.memName}" size="20">
             <div style="color:#FF0000; font-size:60%; display:inline">${ErrorMsg.memName}</div>
             </TD>
         </TR>             
         <TR>
             <TD align="RIGHT">EMail：</TD>
             <TD align="LEFT" ><input type="text" name="memEmail" value="${param.memEmail}" size="40">
             <div style="color:#FF0000; font-size:60%; display:inline">${ErrorMsg.memEmail}</div>
             </TD>
         </TR>             
         <TR>
             <TD align="RIGHT">PicURL：</TD>
             <TD align="LEFT" > <input type="text" name="memPicUrl" value="${param.memPicUrl}">
             <div style="color:#FF0000; font-size:60%; display:inline">${ErrorMsg.memPicUrl}</div>
             </TD>
         </TR>               
        <TR>
            <TD colspan="2" align="center">      <input type="submit" value="提交"> </TD>
            </TR>
         </Table>
<div style="color:#FF0000; display:inline">${ErrorMsg.exception}</div>
</Form>
</CENTER>
</body>
<small>&lt;&lt;<a href="default">回第四章首頁</a>&gt;&gt;</small>
</html>

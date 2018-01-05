<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" errorPage="error.jsp" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<!-- 	下面是jsp声明部分 -->
	<%!
	//声明一个整型变量
	public int count;
	//声明一个方法
	public String info(){
		return "hello";
	}
	%>

<body>
	这是主页

<%out.println(new java.util.Date());%>

<%  for(int j=0;j<3;j++){%>
  <font size='+j+'>我是一条小青龙</font>
  <br/>
  <%}%>

<%
//将count的值输出后再加1
out.println(count++);
%>
<br/>
<%
//输出info()方法的返回值
out.println(info());
%>
<br/>

<!-- 使用表达式输出变量值 -->
<%=count++%>
<br/>
<!-- 使用表达式输出方法返回值 -->
<%=info()%>
<br/>

<table bgcolor="#9999dd" border="1" width="300px">
<!-- java脚本，这些脚本会对HTML的标签产生作用 -->
<%
for(int i=0;i<10;i++)
{
%>
	<!-- 上面的循环将控制<tr>标签循环 -->
	<tr>
		<td>循环值：</td>
		<td><%=i%></td>
	</tr>
<%
}
%>
<table>

<%@ include file="error.jsp" %>

</body>
</html>


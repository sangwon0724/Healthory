<%@page import="com.control.dao.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>���̵��ߺ�üũ | Healthoryq</title>
</head>
<body>
<form name = "form1">

<% 
	String id = request.getParameter("id");
	UserDAO dao = new UserDAO();
	String result = dao.checkid(id);
	
	if(result == "yes") {
%>
	<center>
	<br/><br/>
	<h4><%= id %>�� �̹� ������� ���̵� �Դϴ�.</h4>
	<input type="button" value="�ݱ�" name="close" onclick="CLform()"/>
	</center>
	<%} else if(result == "no") { %>
	<center>
	<br/><br/>
	<h4><%= id %>�� ��� ������ ���̵��Դϴ�.</h4>
	<input type="button" value="����ϱ�" name="close2" onclick="CLform2()"/>
	</center>
	<%} %>
	
	</form>
	<script type="text/javascript">
	function CLform(){
		opener.document.join__form.id.value="";
		window.close();
	}
	
	function CLform2(){
		opener.document.join__form.idDuplication.value="idCheck";
		window.close();
	}
	</script>
</body>
</html>
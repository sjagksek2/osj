<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

	<!-- Bootstrap -->
    <link href="/css/egovframework/bootstrap.min.css" rel="stylesheet">
    <link href="/css/egovframework/kfonts2.css" rel="stylesheet">
    
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
   	<script src="/css/egovframework/bootstrap.min.js"></script>

<script type="text/javascript">
	function fn_validate(){
		var frmLogin = document.frmLogin;
		var id = frmLogin.id.value;
		var pw = frmLogin.pw.value;
		
	
		if(id == ""){
			alert("아이디를 입력하세요.");
			frmLogin.id.focus();
			return false;
		}
		if(pw == ""){
			alert("비밀번호를 입력하세요.");
			frmLogin.pw.focus();
		return false;
		}
		
		frmLogin.action = "/loginProcess.do";
		frmLogin.submit();
}
</script>
<title>로그인 창</title>
</head>
<body>
	<form name="frmLogin" action="loginProcess.do">
      <table align="center">
       	 <tr>
            <th><h1>로그인</h1></th>
         </tr>
         <tr>
            <td width="200">아이디:</td>
            <td width="400"><input type="text" name="id"/></td>
         </tr>
		 <tr>
            <td width="200">비밀번호:</td>
            <td width="400"><input type="password" name="pw"/></td>
         </tr>
         <tr>
         	 <td width="200"><p>&nbsp;</p></td>
          	 <td width="400">
         		<input type="button" class="btn btn-sm btn-default" value="로그인" onClick="fn_validate()"/>
				<input type="reset" class="btn btn-sm btn-default" value="초기화"/><br>
         	</td>
         </tr>
         <tr>
         	 <td width="200"><p>&nbsp;</p></td>
          	 <td width="400">
         		<a href="<c:url value='/memberForm.do'/>"  class="btn btn-default">회원가입</a>
         	</td>
         </tr>
      </table>
	</form>
</body>
</html>
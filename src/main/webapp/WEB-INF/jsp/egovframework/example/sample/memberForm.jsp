<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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

<script>
	/* 글 등록 function */
	function fn_register(){
		var insertFrm = document.insertFrm;
		insertFrm.action = "/addmemberSample.do";
		insertFrm.submit();
	}
</script>
<body>
<form id="insertFrm" name="insertFrm" method="post">
<h1  style="text-align:center">회원 가입창</h1>
	<table  align="center">
      <tr>
         <td width="200"><p align="right">아이디</td>
         <td width="400"><input type="text" name="id"></td>
      </tr>
      <tr>
          <td width="200"><p align="right">비밀번호</td>
          <td width="400"><input type="password"  name="pw"></td>
      </tr>
      <tr>
          <td width="200"><p align="right">이름</td>
          <td width="400"><p><input type="text"  name="name"></td>
      </tr>
      <tr>
          <td width="200"><p align="right">이메일</td>
          <td width="400"><p><input type="text"  name="email"></td>
      </tr>
      <tr>
          <td width="200"><p>&nbsp;</p></td>
          <td width="400">
			<input type="button" class="btn btn-sm btn-default" value="가입하기" onClick="fn_register()">
			<input type="reset" class="btn btn-sm btn-default" value="다시입력">
		  </td>
      </tr>
	</table>
</form>
</body>
</html>
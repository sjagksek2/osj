<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"         uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"      uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="spring"    uri="http://www.springframework.org/tags"%>
<%
  /**
  * @Class Name : egovSampleRegister.jsp
  * @Description : Sample Register 화면
  * @Modification Information
  *
  *   수정일         수정자                   수정내용
  *  -------    --------    ---------------------------
  *  2009.02.01            최초 생성
  *
  * author 실행환경 개발팀
  * since 2009.02.01
  *
  * Copyright (C) 2009 by MOPAS  All right reserved.
  */
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <c:set var="registerFlag" value="${empty alioCYVO.cy_id ? 'create' : 'modify'}"/>
    <title>Sample <c:if test="${registerFlag == 'create'}"><spring:message code="button.create" /></c:if>
                  <c:if test="${registerFlag == 'modify'}"><spring:message code="button.modify" /></c:if>
    </title>
    
    <!-- Bootstrap -->
    <link href="../css/egovframework/bootstrap.min.css" rel="stylesheet">
    <link href="../css/egovframework/kfonts2.css" rel="stylesheet">
    
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src='../css/egovframework/bootstrap.min.js'></script>
    <link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/sample.css'/>"/>
    
    <!--For Commons Validator Client Side-->
    <script type="text/javascript" src="<c:url value='/cmmn/validator.do'/>"></script>
    <validator:javascript formName="alioCYVO" staticJavascript="false" xhtml="true" cdata="false"/>
    
    <script type="text/javaScript" language="javascript" defer="defer">
    
        /* 글 목록 화면 function */
        function fn_egov_selectList() {
              document.detailForm.action = "<c:url value='/alioChaeYong.do'/>";
              document.detailForm.submit();
        }
        
        /* 글 삭제 function */
        function fn_egov_delete() {
           
           if(confirm("정말 삭제하시겠습니까?") == true){              
                 document.detailForm.action = "<c:url value='/deleteAlioCYSample.do'/>";
                 document.detailForm.submit();
           } else {
              return false;
           }
           
        }
        
        /* 글 등록 function */
         function fn_egov_save() {
           frm = document.detailForm;
        //   if(!validateSampleVO(frm)){
        //        return;
        //    }else{
               frm.action = "<c:url value="${registerFlag == 'create' ? '/addAlioSample.do' : '/updateAlioSample.do'}"/>";
                frm.submit();
         //   }
        } 
        
    </script>
    
    <style>
      body {  font-family: "Malgun gothic",  sans-serif;}
		.table > tbody > tr > .no-line {border-top: none;}
        /*.table > thead > tr > .no-line {border-bottom: none;}*/
        .table > tbody > tr > .thick-line {border-top: 2px solid;}
        .gr { background-color:#F2F2F0}

    </style>
    
</head>

<body>
<form:form commandName="alioCYVO" id="detailForm" name="detailForm">
	<div class="container">
        	  <div class="panel panel-success">
	    
	          <div class="panel-heading">
	            <h3 class="panel-title">채용</h3>
	          </div>
	          
	          <div class="panel-body">
	            <div class="table-responsive">
	              <table class="table table-bordered">
	               	<input type="hidden" name="cy_id" value="${alioCYVO.cy_id}"/> 
	                <tbody>
	                  <tr>
	                  	<td class="test-center gr"><strong>기관명</strong></td>
        				<td class="listtd"><c:out value="${alioCYVO.cy_ne}"/></td>
	                    <%-- <c:out value="${alioBogoseoVO.bogoseo_id}"/> --%>
	                  </tr>
	                  <tr>
	                  	<td class="test-center gr"><strong>내용</strong></td>
        				<td class="listtd"><c:out value="${alioCYVO.cy_ny}"/></td> 
	                  </tr>
	                  <tr>
	                   <td class="test-center gr"><strong>채용날짜 시작일</strong></td>
        				<td class="listtd"><c:out value="${alioCYVO.cy_nj}"/>&nbsp;</td>
	                  </tr>
	                  <tr>
	                    <td class="test-center gr"><strong>채용날짜 마감일</strong></td>
        				<td class="listtd"><c:out value="${alioCYVO.cy_njm}"/>&nbsp;</td>
	                  </tr>   
	                </tbody>
	              </table>
	              
	            </div>
	          </div>
	
	</div>
  <!-- 버튼 -->
    	<div id="sysbtn">
    		<ul>
    			<li>
                    <span>
                    	<button class="btn btn-sm btn-default" name="btnList" id="btnList">
                        	<a href="javascript:fn_egov_selectList();">
                        	<spring:message code="button.list" />
                        	</a>
                    	</button>   
                    </span>
                </li>
    			 <%-- <li>
                    <span>
                   		<button class="btn btn-sm btn-default">
                       		<a href="javascript:fn_egov_save();">
                            <c:if test="${registerFlag == 'create'}"><spring:message code="button.create" /></c:if>
                            <c:if test="${registerFlag == 'modify'}"><spring:message code="button.modify" /></c:if>
                        	</a>
                    	</button>   
                    </span>
                </li>  --%>
    			<c:if test="${registerFlag == 'modify'}">
                    <li>
                        <span>
                        <%-- <input type="hidden" name="" value="<c:out value='${alioCYVO.cy_id}'/>"/> --%>
                        <button class="btn btn-sm btn-default" name="btndelete" id="btndelete">
                            <a href="javascript:fn_egov_delete();">
                            <spring:message code="button.delete" />
                            </a>
                        </button>    
                        </span>
                    </li>
    			</c:if>
    			<li>
                    <span>
                    	<button class="btn btn-sm btn-default">
                        	<a href="javascript:document.detailForm.reset();">
                        	<spring:message code="button.reset" />
                        	</a>
                        </button>
                    </span>
                </li>
            </ul>
    	</div>
    </div>
    <!-- 검색조건 유지 -->
    <input type="hidden" name="searchCondition" value="<c:out value='${searchVO.searchCondition}'/>"/>
    <input type="hidden" name="searchKeyword" value="<c:out value='${searchVO.searchKeyword}'/>"/>
    <input type="hidden" name="pageIndex" value="<c:out value='${searchVO.pageIndex}'/>"/>
</form:form>
</body>
</html>
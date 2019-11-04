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
    <c:set var="registerFlag" value="${empty alioBogoseoVO.bogoseo_id ? 'create' : 'modify'}"/>
    <title>Sample <c:if test="${registerFlag == 'create'}"><spring:message code="button.create" /></c:if>
                  <c:if test="${registerFlag == 'modify'}"><spring:message code="button.modify" /></c:if>
    </title>
    <link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/sample.css'/>"/>
    
    <!--For Commons Validator Client Side-->
    <script type="text/javascript" src="<c:url value='/cmmn/validator.do'/>"></script>
    <validator:javascript formName="alioBogoseoVO" staticJavascript="false" xhtml="true" cdata="false"/>
    
    <!-- Bootstrap -->
    <link href="../css/egovframework/bootstrap.min.css" rel="stylesheet">
    <link href="../css/egovframework/kfonts2.css" rel="stylesheet">
   
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src='../css/egovframework/bootstrap.min.js'></script>
        
    <script type="text/javaScript" language="javascript" defer="defer">
   
    
    	/* 글 목록 화면 function */
        function fn_egov_selectList() {
    		
           	document.detailForm.action = "<c:url value='/alioBogoseo.do'/>";
           	document.detailForm.submit();
        }

        /* 글 등록 function */
        function fn_egov_save() {
        	frm = document.detailForm;
        	
        //	if(!validateSampleVO(frm)){
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

<form:form commandName="alioBogoseoVO" name="detailForm" method="post" enctype="multipart/form-data">

    	<!--  타이틀 -->
<div class="container">
	
	    <div class="panel panel-success">
	    
	          <div class="panel-heading">
	            <h3 class="panel-title">등록</h3>
	          </div>
	          
	          <div class="panel-body">
	            <div class="table-responsive">
	              <table class="table table-bordered">
	                <tbody>
	                  
	                  
	                  <tr>
	                    <td class="text-center gr"><strong>제목</strong></td>
	                    <td><form:input path="title" maxlength="30" cssClass="txt" size ="30"/>
	    				&nbsp;<form:errors path="title" /></td> 
	                  </tr>
	                  <tr>
	                    <td class="text-center gr"><strong>기관명 </strong></td>
	                     <td><form:input path="company_name" maxlength="30" cssClass="txt" size ="20"/>
	    				&nbsp;<form:errors path="company_name" /></td>
	                  </tr>
	                  <tr>
	                    <td class="text-center gr"><strong>발간일  </strong></td>
	                     <td><form:input path="publish_date" maxlength="30" cssClass="txt" size ="20" placeholder="ex) 2019.08.14"/>
	    				&nbsp;<form:errors path="publish_date" /></td>
	                  </tr>
	                  <tr>
	                    <td class="text-center gr"><strong>설명  </strong></td>
	                     <td><form:input path="description"  maxlength="30" cssClass="txt" size ="50"/>
	    				&nbsp;<form:errors path="description" /></td>                     
	                  </tr>
	                  
	                  
	                  <tr>
	                    <td class="text-center gr"><strong>첨부파일  </strong></td>
	                     <td>
	                     
	                     <input name="file_1" id="egovComFileUploader" type="file" />
		                 <div id="egovComFileList"></div>
	                     		                
	                     <%-- <form:input path="attached_file"  maxlength="30" cssClass="txt" size ="20"/>
	    				&nbsp;<form:errors path="attached_file" /> --%>
	    				
	    				</td>                     
	                  </tr>   
	                  
	                  
	                  <tr>
	                    <td class="text-center gr"><strong>원문URL  </strong></td>
	                     <td><form:input path="original_url"  maxlength="30" cssClass="txt" size ="20"/>
	    				&nbsp;<form:errors path="original_url" /></td>                     
	                  </tr>                     
	                </tbody>
	              </table>
	              
	            </div>
	          </div>
	
	</div>
   	
    	
      <!-- 목록 등록 버튼 -->
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
    			
    		
    			<li>
                    <span>                                         
        	           <button class="btn btn-sm btn-default">
        	           		<a href="javascript:fn_egov_save();">
        	            		<c:if test="${registerFlag == 'create'}"><spring:message code="button.create" /></c:if>
                        		<c:if test="${registerFlag == 'modify'}"><spring:message code="button.modify" /></c:if>                   		        	           
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
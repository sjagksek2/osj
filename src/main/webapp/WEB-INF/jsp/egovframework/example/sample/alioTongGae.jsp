<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
  /**
  * @Class Name : egovSampleList.jsp
  * @Description : Sample List 화면
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

<!DOCTYPE html>
<html>
    <head>
	  <!-- Bootstrap -->
    <link href="../css/egovframework/bootstrap.min.css" rel="stylesheet">
    <link href="../css/egovframework/kfonts2.css" rel="stylesheet">
    <link href="../css/egovframework/custom2.css" rel="stylesheet">

        <title> 알리오 | 중견기업 경영정보 공개시스템 </title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <meta name="viewport" content="width=device-width,initial-scale=1.0,
                                    minimun-scale=0.2,maximun-scale=4.0">
        <meta name="robots" content="all">
        <meta name="keywords" content="알리오, 중견기업 경영정보 공개시스템">
        <meta name="description" content="알리오">
        <meta name="author" content="알리오">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    	
    	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    	<!-- Include all compiled plugins (below), or include individual files as needed -->
   		<script src="/css/egovframework/bootstrap.min.js"></script>
		
	<script type="text/javaScript" language="javascript" defer="defer">
    
    /* pagination 페이지 링크 function */
    function fn_egov_link_page(pageNo){
    	document.listForm.pageIndex.value = pageNo;
    	document.listForm.action = "<c:url value='/alioBogoseo.do'/>";
       	document.listForm.submit();
    }
    </script>

   <style>
            footer {
                background-color:#3c3935;
            }
            .foot_div {
               text-align:center; 
            }
            .foot_div {
                margin-top:5px;
                color:white;
            }
    
    
			    table.type10 {
			    border-collapse: collapse;
			    text-align: left;
			    line-height: 1.5;
			    border-top: 1px solid #ccc;
			    border-bottom: 1px solid #ccc;
			    
			}
			table.type10 thead td {
			    width: 150px;
			    padding: 10px;
			    font-weight: bold;
			    vertical-align: top;
			    color: #fff;
			    background: #e7708d;
			    margin: 20px 10px;
			}
			table.type10 tbody th {
			    width: 150px;
			    padding: 10px;
			}
			table.type10 td {
			    width: 350px;
			    padding: 10px;
			    vertical-align: top;
			}
			table.type10 .even {
			    background: #fdf3f5;
			}

        #navbar-scroll{background-color:white;}
        
            footer {
                background-color:#3c3935;
            }
            .foot_div {
               text-align:center; 
            }
            .foot_div {
                margin-top:5px;
                color:white;
            }
    
            
            
        </style>
        
    </head>
    <body id="home" data-spy="scroll" data-target="#navbar-scroll" data-offset="50" data-gr-c-s-loaded="true" style>
        <div class="wrap">
            <!-- tom menu -->
            
            
    	<nav class="navbar navbar-default" role="navigation" id="navbar-scroll" data-offset="50" data-gr-c-s-loaded="true" style>
        	<div class="container">
        		<div class="navbar-header">
        			
              				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-1-collapse">
              					<span class="sr-only">Toggle navigation</span>
              					<span class="icon-bar"></span>
              					<span class="icon-bar"></span>
              					<span class="icon-bar"></span>
              				</button>
              			
        		
        			<a class = "navbar-logo" href="<c:url value='/alioHome.do'/>">
        				<img src="images\alio\example\alio.jpg"  alt="ALIO | 중견기업 경영정보 공개시스템">
        			</a>
        		
        		</div>
        		
        		<div class="navbar-collapse navbar-right navbar-1-collapse collapse" style="height: 11px;">
        			<ul class ="nav navbar-nav list-inline">
        				
        				<li>
        					<a href="alioGongSi.do" onclick="$('allioGongSi.do').animatescroll();">기관별 경영공시</a>    					
        				</li>
        				
        				<li>
        					<a href="alioTongGae.do" onclick="$('alioTongGae.do').animatescroll();">주요통계</a>
        				</li>
        				
        				<li>
        					<li class="dropdown" id="menu">
              					<a data-toggle="dropdown" data-target="#" href="dropdown.html">
              					중견기업이란?
              					</a>
              					
              					<ul class="dropdown-menu" role="menu">              						
                	
                					<li><a role="menuitem" href="<c:url value='/alioJiJung.do'/>">중견기업 지정근거</a></li>
                					<li><a role="menuitem" href="<c:url value='/alioJiJung.do'/>">중견기업 지정현황</a></li>
              					</ul>
              					
              				</li>
        				</li>
        				
        				<li>
        					<li class="dropdown" id="menu">
        						<a data-toggle="dropdown" data-target="#" href="dropdown.html">
              					정보센터
              					</a>
              		
              					<ul class="dropdown-menu" role="menu">              						
                	
                					<li><a role="menuitem" href="<c:url value='/alioBogoseo.do'/>">보고서</a></li>
                					<li><a role="menuitem" href="<c:url value='/alioChaeYong.do'/>">채용정보</a></li>
              					</ul>
        					</li>
        				</li>
        			</ul>
        		</div>      	
       		
       		</div>       		
    	</nav>
   	
            
            <div id="sub-cont">
            <div class="title">
                    <h2 align="center">주요통계</h2>
            </div>
                    <div class="public">
                        <dl class="public_list">

          <form:form commandName="searchVO" id="listForm" name="listForm" method="post">
        	<div id="content_pop">
			<div id="content_pop">
					    <table class="type10" width="100%">
					    <thead>
					    <tr>
					        <td align="center">No</th>
	        				<td align="center">기업명</th>
	        				<td align="center">임직원현황</th>
	        				<td align="center">임원평균연봉</th>
	        				<td align="center">직원평균연봉</th>
	        				<td align="center">재무정보</th>	
					    </tr>
					    </thead>
					    <tbody>
					    
					        <c:forEach var="result" items="${resultList}" varStatus="status">
            				<tr>
            				<td align="center" class="listtd"><c:out value="${paginationInfo.totalRecordCount+1 - ((searchVO.pageIndex-1) * searchVO.pageSize + status.count)}"/></td>
            				<td align="center" class="listtd"><c:out value="${result.statisticsCode}"/>&nbsp;</td>
            				<td align="center" class="listtd"><c:out value="${result.memberPresentCondition}"/>&nbsp;</td>
            				<td align="center" class="listtd"><c:out value="${result.executiveAnnualIncome}"/>&nbsp;</td>
            				<td align="center" class="listtd"><c:out value="${result.employeePay}"/>&nbsp;</td>
            				<td align="center" class="listtd"><c:out value="${result.financeInformation}"/>&nbsp;</td>
            				</tr>
        					</c:forEach>
					   	
					    </tbody>
					</table>
        		
                        </dl>
                    </div>
            </div>
             	<!-- /List -->
        	<div id="paging">
        		<%-- <ui:pagination paginationInfo = "${paginationInfo}" type="image" jsFunction="fn_egov_link_page" />
        		<form:hidden path="pageIndex" /> --%>
        		<ul class="pager">
							    <li><a href="#">«</a></li>
							    <li><a href="#">1</a></li>
							    <li><a href="#">2</a></li>
							    <li><a href="#">3</a></li>
							    <li><a href="#">4</a></li>
							    <li><a href="#">5</a></li>
							    <li><a href="#">»</a></li>
							</ul>
        		<form:hidden path="pageIndex" />
        	
        	</div>
            </form:form>
            <footer>
                <div class="foot_div">
                    
                    <p> Copyright @ 2019</p>
                    <p> (우) 000-000 대전광역시</p>
                </div>
            </footer>

        </div>
    </body>

</html>
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

<!dOCTYPE html>
<head>
	<!-- Bootstrap -->
    <link href="../css/egovframework/bootstrap.min.css" rel="stylesheet">
    <link href="../css/egovframework/kfonts2.css" rel="stylesheet">
    
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="/css/egovframework/bootstrap.min.js"></script>
    
    
    <title>알리오|중견기업 경영정보 시스템</title>
    <meta name="viewport" content="width=device-width",initial-scale=1.0,minimun-scale=0.2,maximun-scale=4.0">
    <meta name="robots" content="all">
    <meta name="keywords" content="알리오, 중견기업 경영정보 공개시스템">
    <meta name="description" content="알리오">
    <meta name="author" content="알리오">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    
    <c:url var="alioChaeYongURL" value="alioChaeYong.do"></c:url>
    <script type="text/javaScript" language="javascript" defer="defer">
    
    /* pagination 페이지 링크 function */
    function fn_egov_link_page(pageNo){
    	document.listForm.pageIndex.value = pageNo;
    	document.listForm.action = "<c:url value='/alioChaeYong.do'/>";
       	document.listForm.submit();
    }
    
    /* 글 수정 화면 function */
    function fn_egov_select(cy_id) {
    	document.listForm.cy_id.value = cy_id;
    	//alert("cy_id =="+ cy_id)
       	document.listForm.action = "<c:url value='/alioChaeYong2.do'/>";
       	document.listForm.submit();
    }
    
    /* 글 등록 화면 function */
    function fn_egov_addView() {
       	document.listForm.action = "<c:url value='/addAlioCYSampleView.do'/>";
       	document.listForm.submit();
    }
    
    /* 글 목록 화면 function */
    function fn_egov_selectList() {
    	document.listForm.action = "<c:url value='/alioChaeYong.do'/>";
       	document.listForm.submit();
    }
    
    </script>
    
    
    <style>
    
    #navbar-scroll{background-color:white;}
	#sysbtn{
	 float:right;
	 margin-top:10px;
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
			    padding: 5px;
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
<form:form commandName="searchVO" id="listForm" name="listForm" method="post">
    <div class="wrap">
           
           
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
   	
        
    <h4 align="center">정보센터</h4>
       <div class="btn-group  btn-group-justified">
       		<a href="<c:url value='/alioChaeYong.do'/>" class="btn btn-default">채용정보</a>
     		<a href="<c:url value='/alioBogoseo.do'/>" class="btn btn-default">보고서</a>   
       </div>
       
    <form name="listForm" action="/action_page.php">
        <input type="hidden" name="cy_id"/>
       
        </form>

<!-- // 타이틀 -->

        	<div id="search">
        		<ul class ="nav navbar-nav list-inline">
        			    <label for="searchCondition" style="visibility:hidden;"><spring:message code="search.choose" /></label>
        				<form:select path="searchCondition" cssClass="use">
        					<form:option value="1" label="기관명" />
        					<form:option value="0" label="채용정보" />
        					<form:option value="2" label="채용날짜" />
        				</form:select>
        			
        			<label for="searchKeyword" style="visibility:hidden;display:none;"><spring:message code="search.keyword" /></label>
                        <form:input path="searchKeyword" cssClass="txt"/>
                    
        			
        	            <span class="btn_blue_l">
        	                <button class="btn btn-sm btn-default" name="btnSearch" id="btnSearch"><a href="javascript:fn_egov_selectList();">검색</a></button>
        	            </span>
        	        
                </ul>
        	</div>
        
            <div class = "info_result">
                <p class = "info_result_num"><br></br>
                   총  
                    <span><c:out value="${paginationInfo.totalRecordCount}"/>건</span>
                    이 검색되었습니다.
                </p>

                <table class="info_tb" summary="채용정보 검색결과">
                   <!-- <caption>보고서 검색결과</caption> -->
                    <colgroup>
                    <col width="10%">
                    <col width="50%">
                    <col width="20%">
                    <col width="20%">
                    </colgroup>
                </table>
               
                </div>
			
        			
        			 <table class="type10" width="100%">
        			 	<colgroup>
        				<col width="5%"/>
        				<col width="16%"/>
        				<col />
        				<col width="16%"/>
        				<col width="16%"/>
        				</colgroup>
					    <thead>
					    <tr>
					    <td align="center">No</td>
        				<td align="center">기관명</td>
        				<td align="center">채용정보</td>
        				<td align="center">채용날짜 시작일</td>
        				<td align="center">채용날짜 마감일</td>
					    </tr>
					    </thead>
					    <tbody>
					    
					        <c:forEach var="result" items="${resultList}" varStatus="status">
            				<tr>
            				<td align="center" class="listtd"><c:out value="${paginationInfo.totalRecordCount+1 - ((searchVO.pageIndex-1) * searchVO.pageSize + status.count)}"/></td>
            				<td align="center" class="listtd"><c:out value="${result.cyNe}"/>&nbsp;</td>
            				<td align="center" class="listtd"><a href="javascript:fn_egov_select('<c:out value="${result.cyId}"/>')"><c:out value="${result.cyNy}"/></a></td>
            				<td align="center" class="listtd"><c:out value="${result.cyNj}"/>&nbsp;</td>
            				<td align="center" class="listtd"><c:out value="${result.cyNjm}"/>&nbsp;</td>
            				</tr>
        					</c:forEach>
					   	
					    </tbody>
					</table>
        			</div>
        			
        	<div class="container">
        	<div id="sysbtn">
        	  <ul>     	      
        	      <span class="btn_blue_l">
        	           <button class="btn btn-sm btn-default" name="btnSearch" id="btnSearch"><a href="javascript:fn_egov_addView();"><spring:message code="button.create" /></a></button>
        	      </span>  
              </ul>
        	</div>
        </div>
        			
        			<!-- /List -->
        				<div id="paging">
        				   <%--  <ui:pagination paginationInfo = "${paginationInfo}" type="image" jsFunction="fn_egov_link_page" />  --%>
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
        			</div>
        			</form:form>
        <footer>
            <div class="foot_div">
                
                <p> Copyright @ 2019</p>
                <p> (우) 000-000 대전광역시</p>
            </div>
        </footer>
   </body>
</html>
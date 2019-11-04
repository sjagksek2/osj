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
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><spring:message code="title.sample" /></title>
    <link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/sample.css'/>"/>
    
    <style>
			/* @media only screen and(max-width: 600px) {
				      .table{table-layout:fixed;}
			}  
			
			.table_layout{width:80%; } 
			table {max-width: auto; 
				 margin-left: auto; 
				 margin-right: auto;}
			td {
				padding: 20px;
				border: 1px solid #444444;
			} */
			
			<style>
        	table.type10 {
			    border-collapse: collapse;
			    text-align: left;
			    line-height: 1.5;
			    border-top: 1px solid #ccc;
			    border-bottom: 1px solid #ccc;
			   margin: 20px 10px;
			   width:auto;
			}
			table.type10 thead th {
			    width:150px;
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

<body style="text-align:center; margin:0 auto; display:inline; padding-top:100px;">

 
        	<!-- List -->
        	<div id="table">
        		<%-- <table summary="카테고리ID, 케테고리명, 사용여부, Description, 등록자 표시하는 테이블">
        			<caption style="visibility:hidden">카테고리ID, 케테고리명, 사용여부, Description, 등록자 표시하는 테이블</caption>
        			<colgroup>
        				<col width="5%"/>
        				<col width="11%"/>
        				<col />
        				<col width="10%"/>
        				<col width="25%"/>
        				<col width="15%"/>
        			</colgroup>
        			<tr>
        				<th align="center">No</th>
        				<th align="center">기관명</th>
        				<th align="center">회사소개</th>
        				<th align="center">설립일</th>
        				<th align="center">연혁</th>
        				<th align="center">주력업종</th>
        			</tr>
        			
        			 <c:forEach var="result" items="${resultList}" varStatus="status">
            			<tr>
            				<td align="center" class="listtd"><c:out value="${paginationInfo.totalRecordCount+1 - ((searchVO.pageIndex-1) * searchVO.pageSize + status.count)}"/></td>
            				<td align="center" class="listtd"><c:out value="${result.managementCode}"/>&nbsp;</td>
            				<td align="center" class="listtd"><c:out value="${result.companyIntroduction}"/>&nbsp;</td>
            				<td align="center" class="listtd"><c:out value="${result.grundungsdatum}"/>&nbsp;</td>
            				<td align="center" class="listtd"><c:out value="${result.history}"/>&nbsp;</td>
            				<td align="center" class="listtd"><c:out value="${result.mainFunction}"/>&nbsp;</td>
            			</tr>
        			</c:forEach> 
        			
        		</table> --%>
        		
        		 <table class="type10" width="100%">
        			 	<colgroup>
        				<col width="5%"/>
        				<col width="11%"/>
        				<col />
        				<col width="10%"/>
        				<col width="25%"/>
        				<col width="15%"/>
        				</colgroup>
					    <thead>
					    <tr>
					    <th align="center">No</th>
        				<th align="center">기관명</th>
        				<th align="center">회사소개</th>
        				<th align="center">설립일</th>
        				<th align="center">연혁</th>
        				<th align="center">주력업종</th>
					    </tr>
					    </thead>
					    <tbody>
					    
					        <c:forEach var="result" items="${resultList}" varStatus="status">
            				<tr>
            				<td align="center" class="listtd"><c:out value="${paginationInfo.totalRecordCount+1 - ((searchVO.pageIndex-1) * searchVO.pageSize + status.count)}"/></td>
            				<td align="center" class="listtd"><c:out value="${result.managementCode}"/>&nbsp;</td>
            				<td align="center" class="listtd"><c:out value="${result.companyIntroduction}"/>&nbsp;</td>
            				<td align="center" class="listtd"><c:out value="${result.grundungsdatum}"/>&nbsp;</td>
            				<td align="center" class="listtd"><c:out value="${result.history}"/>&nbsp;</td>
            				<td align="center" class="listtd"><c:out value="${result.mainFunction}"/>&nbsp;</td>
            				</tr>
        					</c:forEach>
					   	
					    </tbody>
					</table>
        		
        	</div>
       
</body>
</html>
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
    <link href="/css/egovframework/bootstrap.min.css" rel="stylesheet">
    <link href="/css/egovframework/kfonts2.css" rel="stylesheet">
    
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

    <style>
    		
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
   	  

            <div class="title">
                    <h2 align="center">기관별경영공시</h2>
            </div>

    <div> 
    <div class="panel-group" id="accordion">
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title">
              <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
               		 일반현황
              </a>
            </h4>
          </div>
          <div id="collapseOne" class="panel-collapse collapse in">
            <div class="panel-body">
            <li role="presentation"><a role="menuitem" tabindex="-1" href="alioGongSiIB.do;">일반현황</a></li>
            </div>
          </div>
        </div>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title">
              <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
              		 기관운영
              </a>
            </h4>
          </div>
          <div id="collapseTwo" class="panel-collapse collapse ">
            <div class="panel-body">
						<li role="presentation"><a role="menuitem" tabindex="-1" href="#;">임직원수 현황</a></li>
    					<li role="presentation"><a role="menuitem" tabindex="-1" href="#;">임직원수</a></li>
    					<li role="presentation"><a role="menuitem" tabindex="-1" href="#;">임원 연봉 현황</a></li>
    					<li role="presentation"><a role="menuitem" tabindex="-1" href="#;">직원 평균보수</a></li>
    					<li role="presentation"><a role="menuitem" tabindex="-1" href="#;">복리후생비</a></li>
            </div>
          </div>
        </div>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title">
              <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
                		주요사업 및 경영성과
              </a>
            </h4>
          </div>
          <div id="collapseThree" class="panel-collapse collapse">
            <div class="panel-body">
						<li role="presentation"><a role="menuitem" tabindex="-1" href="#;">요약대차대조표</a></li>
    					<li role="presentation"><a role="menuitem" tabindex="-1" href="#;">요약손익계산서</a></li>
    					<li role="presentation"><a role="menuitem" tabindex="-1" href="#;">주요사업현황</a></li>
    					<li role="presentation"><a role="menuitem" tabindex="-1" href="#;">자보금 및 주주현황</a></li>
    					<li role="presentation"><a role="menuitem" tabindex="-1" href="#;">감사</a></li>
            </div>
          </div>
        </div>
        
         <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title">
              <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour">
                		중견기업 정상화 추진
              </a>
            </h4>
          </div>
          <div id="collapseFour" class="panel-collapse collapse">
            <div class="panel-body">
					<li role="presentation"><a role="menuitem" tabindex="-1" href="#;">주요 기관의 상세 부채정보</a></li>
    				<li role="presentation"><a role="menuitem" tabindex="-1" href="#;">복리후생 관련 8대 항목</a></li>
            </div>
          </div>
        </div>
        
      </div>
  </div>
    			


    <footer>
            <div class="foot_div">
                
                <p> Copyright @ 2019</p>
                <p> (우) 000-000 대전광역시</p>
            </div>
        </footer>
    
</body>
</html>
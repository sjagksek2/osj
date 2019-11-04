<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<!DOCTYPE html>
<html>
    <head>
        <title> 알리오 | 중견기업 경영정보 공개시스템 </title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <meta name="viewport" content="width=device-width,initial-scale=1.0,
                                    minimun-scale=0.2,maximun-scale=4.0">
        <meta name="robots" content="all">
        <meta name="keywords" content="알리오, 중견기업 경영정보 공개시스템">
        <meta name="description" content="알리오">
        <meta name="author" content="알리오">
        
         <!-- Bootstrap -->
    	<link href="../css/egovframework/bootstrap.min.css" rel="stylesheet">
    	<link href="../css/egovframework/custom2.css" rel="stylesheet">
    	
    	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    	<!-- Include all compiled plugins (below), or include individual files as needed -->
   		<script src="/css/egovframework/bootstrap.min.js"></script>
		
		<!-- 책 코딩 -->
   		<script src="/css/egovframework/jquery.js"></script>
		<script src="/css/egovframework/jquery.bxslider.min.js"></script>
		<link rel="stylesheet" href="./css/egovframework/jquery.bxslider.min.css">
		
		<script type="text/javascript">
		
		$(function() {
			$('.slide_gallery').bxSlider({
				auto:true,
				autoControls:true,
				stopAutoClick:true,
				autoHover:true,
				pager:true
				
			});
		});
		
		
    	</script>
    <style>    
    	
    	.newArticle{background-color:rgba(201, 201, 201,.5); padding: 10px; border-radius: 10px; }
    	
    	#mainmenu{background-color:white; margin-top:20px; border-radius: 10px; }
        
		#navbar-scroll{background-color:white;}
		
    	.bx-pager{position:absolute;left:35%; bottom:-30px;width:100%}
    	
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
        					<a href="login.do">로그인</a>
        				</li>
        				
        				<li>
        					<a href="alioGongSi.do">기관별 경영공시</a>    					
        				</li>
        				
        				<li>
        					<a href="alioTongGae.do">주요통계</a>
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
   
       	
        
        <div id="main_cont" class="col-sm-12" align="center" >  
       			<img src="images\alio\example/main.jpg" alt="중견기업 경영정보 공개시스템" class="img-thumbnail img-responsive"> 
      		</div> 
     
         		 
            <!--메인메뉴-->
        <div class="container">
            <nav id="mainmenu">
                <ul id="main_navi" class="col-sm-12">
                
                    <div class="navi01">
                        <a href= "<c:url value='/alioGongSi.do'/>">
                            <input type=button class="btn btn-warning btn-lg btn-block"         
                             	 value="기관별 경영공시">
                        </a>
                    </div> <br>
                    <div class="navi02" >
                            <a href="<c:url value='/alioTongGae.do'/>">
                                <input type=button class="btn btn-danger btn-lg btn-block"   
                                    value="주요통계">
                            </a>
                    </div> <br>
                    <div class="navi03">
                            <a href="<c:url value='/alioJiJung.do'/>" >
                                <input type=button class="btn btn-info btn-lg btn-block"       
                                     value="중견기업현황">
                            </a>
                    </div> <br>
                    <div class="navi04">
                            <a href= "<c:url value='/alioBogoseo.do'/>">
                                <input type=button class="btn btn-success btn-lg btn-block"       
                                     value="보고서">
                            </a>
                    </div> <br>
                    <div class="navi05">
                            <a href= "<c:url value='/alioChaeYong.do'/>">
                                <input type=button class="btn btn-primary btn-lg btn-block"        
                                    value="채용정보">
                            </a>
                    </div> <br>
                    
                    
                </ul>
            </nav>
		</div>
       
        
        <!-- 하단메뉴 -->
        <div class="newArticle"  align="center">
        
         <div id="gallery_wrap" >
         
            	<ul class="slide_gallery">
            		<li><a href="http://www.saramin.co.kr/zf_user/jobs/theme/samsung?t_ref=main&t_ref_content=platinum_fix_expand">
                    <img src="images\alio\example\삼성.jpg" alt="First slide"></a></li>
            		
            		<li><a href ="http://www.saramin.co.kr/zf_user/jobs/relay/pop-view?rec_idx=36575735&t_ref=main&t_ref_content=platinum_fix_expand">
                   <img src="images\alio\example\쿠팡.jpg" alt="Second slide"></a></li>
                   
                   <li><a href ="http://www.saramin.co.kr/zf_user/jobs/relay/pop-view?rec_idx=36706384&t_ref=main&t_ref_content=platinum_fix_expand">
                   <img src="images\alio\example\현대차.jpg" alt="Third slide"></a></li>
                   
                   <li><a href ="http://www.saramin.co.kr/zf_user/jobs/relay/pop-view?rec_idx=36681534&t_ref=main&t_ref_content=platinum_fix_expand">
                   <img src="images\alio\example\미니스톱.jpg" alt="안나오네?"></a></li>
                   
                   <li><a href ="http://http://www.saramin.co.kr/zf_user/jobs/relay/pop-view?rec_idx=36672232&t_ref=main&t_ref_content=platinum_fix_expand">
                   <img src="images\alio\example\위메프.jpg" alt="새로고침"></a></li>
            	</ul>
            </div>
           
        </div>
        
        
        <!--footer-->
        <footer>
            <div class="foot_div">
                
                <p> Copyright @ 2019</p>
                <p> (우) 000-000 대전광역시</p>
            </div>
            
        </footer>
        </div>
    </body>
</html>
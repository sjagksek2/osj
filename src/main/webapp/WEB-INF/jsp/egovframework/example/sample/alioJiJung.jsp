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
	<link rel="stylesheet" href="//code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css">
  	<script src="//code.jquery.com/jquery-1.10.2.js"></script>
  	<script src="//code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
  	<link rel="stylesheet" href="/resources/demos/style.css">
	<script>
 		 $(function() {
  	 	 $( "#tabs" ).tabs();
 		 });
  	</script>
	
	<!-- Bootstrap -->
	<link href="../css/egovframework/bootstrap.min.css" rel="stylesheet">
    <link href="../css/egovframework/custom2.css" rel="stylesheet">
	
    <title>알리오 | 중견기업 경영정보 시스템</title>
    <meta name="viewport" content="width=device-width",initial-scale=1.0,minimun-scale=0.2,maximun-scale=4.0">
    <meta name="robots" content="all">
    <meta name="keywords" content="알리오, 중견기업 경영정보 공개시스템">
    <meta name="description" content="알리오">
    <meta name="author" content="알리오">

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
    
            #menu{margin:0; padding:0;display:inline;}
            #menu li {display:inline;}
            #menu, #toggle {display:none;}
            #toggle:checked + #menu{display: inline;}
            label{display:block;}
            #menu{position: absolut; right:-20em; width:10em;}
            #menu ul > li{display:block;}
            input:checked ~ #menu{right:0;}
            input:checked ~ #content {margin-left: 10.5em; margin-right: -10.5em;}
            #menu, label{
                float: right;
            }
            #menu{
                font-size: 16px;
            }
            h1{
                font-size: 12px;
            }
            
        </style>
</head>
<body>
    <div class="wrap">
            <header class ="clearfix">
                    <h1>
                            <a href="<c:url value='/alioHome.do'/>">
                                <img src="images\alio\example\alio.jpg" alt="ALIO | 중견기업 경영정보 공개시스템"></a>
                            
                                               
                            <label for = "toggle"><img src = "images\alio\example\menu.jpg" alt=전체메뉴></label>   <!--메뉴아이콘-->
                            <input type = "checkbox" id = "toggle"> <!--체크박스-->
        
                            <ul id="menu"> <!--메뉴-->
                                <li><a href = "<c:url value='/alioGongSi.do'/>">기관별 경영공시<br></a></li>
                                <li><a href = "<c:url value='/alioTongGae.do'/>">주요통계<br></a></li>
                                <li>중견기업이란?<br></a></li>
                                <li><a href = "<c:url value='/alioJiJung.do'/>">중견기업 지정근거<br></a></li>
                                <li><a href = "<c:url value='/alioJiJung.do'/>">중견기업 지정현황<br></a></li>
                                <li>정보센터<br></a></li>
                                <li><a href = "<c:url value='/alioChaeYong.do'/>">채용정보<br></a></li>
                                <li><a href = "<c:url value='/alioBogoseo.do'/>">보고서<br></a></li>                            
                            </ul>
                        </h1>
            </header>
            
            <div id="sub-cont">
            <div class="title">
                    <h2 align="center">중견기업이란?</h2>
            </div>
        <div class="organ">
                <h3> 중견기업 개요</h3>
                <li>자산규모 5천억원 이상 5조원 미만인 대한민국 기업</li><p>
                <li>'중견'이란 말 자체가 '규모 등에서 크지는 않지만, <br> 중심적 역할을 하는 사람이나 단체'를 의미한다.</li>
        </div>
        <br>

     <div id="tabs">
  
  	<ul>
   	 <li><a href="#tabs-1">중견기업 지정근거</a></li>
   	 <li><a href="#tabs-2">중견기업 지정현황</a></li>
  	</ul>
 
  <div id="tabs-1">
    <p><dd id="pub01_layer">
                    <h4>중견기업</h4>
                    <p class="mgb20">
                         <li>공정거래법 상 상호출자제한 기업군에 속하는 기업이 아닐 것.</li>  <br>
         <li>통계청장이 고시하는 한국표준산업분류에 따른 다음 각 목의 어느 하나에 해당하는 업종을 영위하는 기업이 아닐것.</li><p>
             <blockquote>
             가. 금융업 <br>
             나. 보험 및 연금업 <br>
             다. 금융 및 보험 관련 서비스업 
            </blockquote>
            
         <li> 중소기업기본법 제2조제3항 본문에 따라 중소기업으로 보는 기업이 아닐 것. </li><br>
         <li> 비영리법인이 아닐 것 </li><br>
                    </p>
                    <h4>중견기업의 유형분류</h4>
                    <div>
                        <table 5px border summary="중견기업의 유형분류" class="organ_tb">
                            <caption>중견기업의 유형분류</caption>
                            <colgroup>
                                <col width="5%">
                                <col width="20%">
                                <col width="75%">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th scope="col" colspan="2">업종</th>
                                    <th scope="col">대표적 기업 </th>
                                </tr>
                            </thead>
                            
                            <tbody>
                                <tr>
                                    <th scope="col" colspan="2" >제조업</th>
                                    <td> 경동나비엔, 르노삼성자동차, 락앤락, 한샘</td>
                                </tr>
                                
                                <tr>
                                    <th scope="row" colspan="2" >식품업</th>
                                    <td>놀부, 농심, 남양, 동서식품, 동원, 빙그레, 아워홈</td>
                                </tr>
                              
                                <tr>
                                    <th scope="col" colspan="2" >교육업</th>
                                    <td> 메가스터디, 미래엔, 천재교육, 교원구몬 </td>
                                </tr>
                                 
                                <tr>
                                    <th scope="col" colspan="2" >운송업</th>
                                 <td>   예림당(티웨이), 이스타항공, 제주항공 </td>
                                </tr>
                                
                                <tr>
                                    <th scope="col" colspan="2" >신문업</th>
                                    <td> 한국일보, 한겨례신문, 중앙일보, 조선일보, 매일경제, 국민일보 </td>
                                </tr>
                                
                                <tr>
                                    <th scope="col" colspan="2" >오픈마켓업</th>
                                    <td> 인터파크, 옥션, 위메프, 쿠팡, 컴퓨존</td>
                                </tr>
                                 
                            </tbody>            
                        </table>
                    </div>
                </dd></p>
  </div>
  <div id="tabs-2">
  <p><dd id="pub02_layer" class="hidden">
                    <div>
                        <table 1px border summary="중견기업 지정현황" class="organ_tb">
                            <caption>중견기업</caption>
                            <colgroup>
                                <col width="20%">
                                <col width="20%">
                                <col width="20%">
                                <col width="20%">
                                <col width="20%">
                                <col width="20%">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th  scope="col" rowsapn="2"?>중견기업</th>
                                </tr>
                                <tr>
                                    <th scope="col" rowsapn="left_line"?>중견기업()</th>
                                    <th scope="col">준시장형()</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row">오뚜기(1)</th>
                                </tr>
                                <tr>
                                    <th scope="row">빙그레(2)</th>
                                </tr>
                                <tr>
                                    <th scope="row">모나미(3)</th>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div style="margin-top:10px;">
                        <tabl summary="기타 중견기업 지정현황" class="organ_tb">
                            <caption>기타중견기업</caption>
                            <colgroup>
                                <col width="20%">
                                <col width="80%">
                            </colgroup> 
                            <thead>
                                <th scope="col"> 주무부처</th>
                            </thead>   
                        </tabl>
                    </div>
                </dd></p>
  </div>
  </div>
</div>
     
            <footer>
                <div class="foot_div">
                    
                    <p> Copyright @ 2019</p>
                    <p> (우) 000-000 대전광역시</p>
                </div>
            </footer>

        </div>
    </body>

</html>
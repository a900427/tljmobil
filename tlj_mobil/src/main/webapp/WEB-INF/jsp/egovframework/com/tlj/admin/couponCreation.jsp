<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>TLJ 화곡2동</title>

    <!-- Bootstrap Core CSS - Uses Bootswatch Flatly Theme: http://bootswatch.com/flatly/ -->
    <link href="startbootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="startbootstrap/css/freelancer.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="startbootstrap/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body id="page-top" class="index">

    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#page-top">화곡2동점 모바일 영수증발급</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li class="page-scroll">
                        <a href="#contact">로그인</a>
                    </li>
                    <li class="page-scroll">
                        <a href="#contact">메인페이지</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <!-- Header -->
    <header>
  
    </header>

    <!-- Contact Section -->
    <form id="cForm" name="cForm" action="/tlj_mobil/index.do" method="post"> 
    <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                	<br>
                    <h2>모바일 영수증발급</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
                    <!-- The form should work on most web servers, but if the form is not working you may need to configure your web server differently. -->
                    <form name="sentMessage" id="contactForm" novalidate>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>주문자성명</label>
                                <input type="text" class="form-control" placeholder="주문자성명" id="PROD_ORDER_NAME">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
						<div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>핸드폰번호</label>
                                <input type="tel" id="phoneNumber1" style="width:50px;" maxlength="3" value="010">-
                                <input type="tel" id="phoneNumber2" style="width:60px;margin-left:5px;" maxlength="4">-
                                <input type="tel" id="phoneNumber3" style="width:60px;margin-left:5px;" maxlength="4">
                                <input type="hidden" id="PROD_PHONENUMBER" name="PROD_PHONENUMBER" />
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>품목</label>
                                <input type="text" class="form-control" placeholder="품목" id="PROD_PROPRIETARY_NAME">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>가격</label>
                                <input type="text" class="" placeholder="가격" id="PROD_PROPRIETARY_PRICE" onchange="set_comma(this);">&nbsp;원
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>주문시 요청사항</label>
                                <textarea rows="5" class="form-control" placeholder="주문시 요청사항" id="PROD_TEXT"></textarea>
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <br>
                        <div id="success"></div>
                        <div class="row" style="float:right;">
                            <div class="form-group col-xs-12">
                                <button type="submit" id="submitBtn" class="btn btn-success btn-lg">영수증발급</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    </form>
    <!-- Footer -->
    <footer class="text-center">
        <div class="footer-above">
            <div class="container">
                <div class="row">
                    <div class="footer-col col-md-4">
                        <h3>Location</h3>
                        <p>서울특별시 강서구 화곡4동 837-12호 1층 뚜레쥬르<br>서울특별시 강서구 곰달래로 49길 10 뚜레쥬르 (화곡동)</p>
                    </div>
                    <div class="footer-col col-md-4">
                        <h3>Around the Web</h3>
                        <ul class="list-inline">
                            <li>
                                <a href="javascript:sendLink('koreamanr')" class="btn-social btn-outline"><i class="fa fa-fw fa-facebook"></i></a>
                            </li>
                            <li>
                                <a href="tel:010-3049-0450" class="btn-social btn-outline"><i class="fa fa-fw fa-google-plus"></i></a>
                            </li>
                            <li>
                                <a href="sms:010-3049-0450" class="btn-social btn-outline"><i class="fa fa-fw fa-twitter"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-linkedin"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-dribbble"></i></a>
                            </li>
                        </ul>
                    </div>
                    <div class="footer-col col-md-4">
                        <h3>About Freelancer</h3>
                        <p>Freelance is a free to use, open source Bootstrap theme created by <a href="http://startbootstrap.com">Start Bootstrap</a>.</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-below">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        &copy; TLJ&nbsp;화곡2동&nbsp;
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
    <div class="scroll-top page-scroll visible-xs visble-sm">
        <a class="btn btn-primary" href="#page-top">
            <i class="fa fa-chevron-up"></i>
        </a>
    </div>

    <!-- jQuery -->
    <script src="startbootstrap/js/jquery.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="startbootstrap/js/bootstrap.min.js"></script>
    <!-- Plugin JavaScript -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="startbootstrap/js/classie.js"></script>
    <script src="startbootstrap/js/cbpAnimatedHeader.js"></script>
    <!-- Contact Form JavaScript -->
    <script src="startbootstrap/js/jqBootstrapValidation.js"></script>
    <%-- 가격 콤마표시 라이브러리 --%>
    <script src="startbootstrap/js/jquery.number.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="startbootstrap/js/freelancer.js"></script>
	<%-- 검색어 자동완성 --%>  
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js" type="text/javascript"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.3/themes/smoothness/jquery-ui.css">
     
	<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
   <!--  <a id="kakao-link-btn" href="javascript:sendLink()">
      <img src="http://dn.api1.kage.kakao.co.kr/14/dn/btqa9B90G1b/GESkkYjKCwJdYOkLvIBKZ0/o.jpg" />
   </a> -->
	
	<script>
	$(document).ready(function(){
		$("#submitBtn").click(function(){
			$("#cForm").submit();
		});
		var autocomplete_text = ["생크림케이크1호","생크림케이크2호","생크림케이크3호","생크림케이크4호","생크림케이크5호","러브블루베리케이크"];
        $("#PROD_PROPRIETARY_NAME").autocomplete({
           source: autocomplete_text
        });
       	$("#PROD_PROPRIETARY_PRICE").number( true );
	});
	// 사용할 앱의 Javascript 키를 설정해 주세요.
    Kakao.init('d65ad45d82df670220ebfa16fad367dd');
    function sendLink() {
        Kakao.Link.sendTalkLink({
          label: '[뚜레쥬르 화곡2동점]\n안녕하세요,강서구 화곡2동점\n출|퇴근 시스템입니다.',
          image: {
        	  src : 'http://img.seoul.co.kr/img/upload/2010/12/09/SSI_20101209185619_V.jpg',
        	  /* src : 'http://cfile25.uf.tistory.com/image/1932C31C4D014C891AFE06', 뚜레쥬르 BI*/
              /* src: 'http://dn.api1.kage.kakao.co.kr/14/dn/btqaWmFftyx/tBbQPH764Maw2R6IBhXd6K/o.jpg', 카카오톡 오리 이미지*/
              width: '300',
              height: '200'
          },
          webLink: {
        	  text: '모바일 페이지로 이동하기',
        	  url: 'http://192.168.219.6:8080/tlj_salary_calculator/indextest.do'
          }
        });
    };
    function set_comma(n) {
        var reg = /(^[+-]?\d+)(\d{3})/;
        n += '';
        while (reg.test(n))
         n = n.replace(reg, '$1' + ',' + '$2');
  
        return n;
    }
	</script>
</body>

</html>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html; charset=utf-8"%>
<%@ include file="../../../../common/tag/includeTag.jsp" %>
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
                <a class="navbar-brand" href="#page-top">화곡2동점 출/퇴근 시스템</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li class="page-scroll">
                        <a href="#">프로필</a>
                    </li>
                    <li class="page-scroll">
                        <a href="#portfolio">출근도장찍기</a>
                    </li>
                    <li class="page-scroll">
                        <a href="#about">설명</a>
                    </li>
                    <li class="page-scroll">
                        <a href="<c:url value='/couponCreation.do'/>">영수증발급</a>
                    </li>
                    
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <!-- Header -->
    <header>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <img class="img-responsive" src="startbootstrap/img/portfolio/touslesjours.jpg" alt="" id="profileImg" style="width:250px;height:250px;">
                    <div style="display:none;">
                    <input type="file" id="profileUpload" name="profileUpload" />
                    </div>
                    <div class="intro-text">
                        <span class="name">화곡2동 뚜레쥬르</span>
                        <hr class="star-light">
                        <span class="skills"></span>
                    </div>
                </div>
            </div>
        </div>
    </header>
    
    <!-- Portfolio Grid Section -->
    <section id="portfolio">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h3>출근체크</h3><br>
                    <h3 style="margin-top:-10px;">모바일 영수증확인</h3><br>
                    <h3 style="margin-top:-10px;">모바일 영수증발급</h3>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 portfolio-item">
                    <a href="#portfolioModal1" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                            <img src="startbootstrap/img/portfolio/stamp.png" class="img-responsive" alt="" style="margin:0 auto 0 auto">
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item">
                    <a href="#portfolioModal2" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="startbootstrap/img/portfolio/bar-code-scanner.png" class="img-responsive" alt="" style="margin:0 auto 0 auto">
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item">
                    <a href="#portfolioModal3" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="startbootstrap/img/portfolio/calculator.png" class="img-responsive" alt="" style="margin:0 auto 0 auto;width:360px;height:268px;">
                    </a>
                </div>
            </div>
        </div>
    </section>
    
    

    <!-- About Section -->
    <section class="success" id="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>모바일 홈페이지 소개</h2>
                    <hr class="star-light">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-lg-offset-2">
                    <p>안녕하세요. 화곡2동점 모바일 홈페이지입니다. 궁금하신 사항이 있으시면 070-8884-0450으로 연락주세요.</p>
                </div>
                <div class="col-lg-4">
                    <p>근태관리 , 모바일영수증확인 및 발급을 관리하기 위해서 만들어진 홈페이지 입니다. 홈페이지에 오류사항이 있다면 gkoreamar@gmail.com 으로 메일을 부탁드립니다. 신속하게 처리해드리겠습니다.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="text-center">
        <div class="footer-above">
            <div class="container">
                <div class="row">
                    <div class="footer-col col-md-4">
                        <h3>주소</h3>
                        <p>
                        	<span style="color: skyblue;">[지번주소]&nbsp;</span>${storeDataVO.STORE_JUSO_O }<br>
                           <span style="color: skyblue;">[도로명주소]&nbsp;</span>${storeDataVO.STORE_JUSO_N }
                        </p>
                    </div>
                  
                    <div class="footer-col col-md-4">
                        <h3>[모바일 홈페이지] 공유하기</h3>
                        <ul class="list-inline">
                            <li>
                                <img src="images/egovframework/com/kakaolink_btn_small.png" style="margin-top:20px;width:44;height:45px;"/>
                            </li>
                            <li>
                                <img src="images/egovframework/com/smsIcon.png" style="margin-top:22px;width:54;height:55px;"/>
                            </li>
                        </ul>
                    </div>
                    
                    <div class="footer-col col-md-4">
                        <h3>TOUS les JOURS 공식홈페이지 URL 링크공유</h3>
                        <p><a href="http://www.tlj.co.kr/membership/partner.asp">제휴혜택 안내</a></p>
                        <p><a href="http://www.tlj.co.kr/community/event/list.asp">진행중인 이벤트</a></p>
                        
                    </div>
                    
                </div>
            </div>
        </div>
        <div class="footer-below">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        &copy;TLJ&nbsp;${storeDataVO.STORE_NAME }&nbsp;
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

    <!-- Portfolio Modals -->
    <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2>모바일 영수증 발급하기</h2>
                            <hr class="star-primary">
			                    <input type="text" id="tt" value="주문자성명"/><br><br>
			                    [전화번호]<br>
								<input type="text" id="" style="width:62px;"/>-<input type="text" id="" style="width:62px;"/>-<input type="text" id="" style="width:62px;"/><br><br>
			                    <input type="text" id="" value="주문일자"/><br><br>
			                    <input type="text" id="" value="품목"/><br><br>
			                    <input type="text" id="" value="가격"/><br><br>
			                    <input type="text" id="" value="주문사항"/><br>
			                  <ul class="list-inline item-details">
                                <li>Client:
                                    <strong><a href="http://startbootstrap.com">Start Bootstrap</a>
                                    </strong>
                                </li>
                                <li>Date:
                                    <strong><a href="http://startbootstrap.com">April 2014</a>
                                    </strong>
                                </li>
                                <li>Service:
                                    <strong><a href="http://startbootstrap.com">Web Development</a>
                                    </strong>
                                </li>
                            </ul>
                            <btton type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2>모바일 영수증 조회</h2>
                            <hr class="star-primary">
			                  <input type="text" id="" value="바코드번호를 입력해주세요."style="width:200px;"/><input type=button value="조회"/>
			                  <ul class="list-inline item-details">
                                
                            </ul>
                            <btton type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2>모바일 영수증 발급하기</h2>
                            <hr class="star-primary">
			                          주문자&nbsp;:&nbsp;<input type="text" id="tt"/><br>
			                          전화번호&nbsp;:&nbsp;<input type="text" id="" style="width:64px;"/>-<input type="text" id="" style="width:64px;"/>-<input type="text" id="" style="width:64px;"/><br>
			                          주문일자&nbsp;:&nbsp;<input type="text" id=""/><br>
			                          품목&nbsp;:&nbsp;<input type="text" id=""/><br>
			                          가격&nbsp;:&nbsp;<input type="text" id=""/><br>
			                          주문시 요청사항&nbsp;:&nbsp;<input type="text" id=""/><br>
			                  <ul class="list-inline item-details">
                                <li>Client:
                                    <strong><a href="http://startbootstrap.com">Start Bootstrap</a>
                                    </strong>
                                </li>
                                <li>Date:
                                    <strong><a href="http://startbootstrap.com">April 2014</a>
                                    </strong>
                                </li>
                                <li>Service:
                                    <strong><a href="http://startbootstrap.com">Web Development</a>
                                    </strong>
                                </li>
                            </ul>
                            <btton type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

	<%------------ 부트스트랩에서 로드시키는 리소스 (시작) ------------%>
    <%-- jQuery --%>
    <script src="startbootstrap/js/jquery.js"></script>
    <%-- Bootstrap Core JavaScript --%>
    <script src="startbootstrap/js/bootstrap.min.js"></script>
    <%-- Plugin JavaScript --%>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="startbootstrap/js/classie.js"></script>
    <script src="startbootstrap/js/cbpAnimatedHeader.js"></script>
    <%-- Contact Form JavaScript --%>
    <script src="startbootstrap/js/jqBootstrapValidation.js"></script>
    <script src="startbootstrap/js/contact_me.js"></script>
    <%-- Custom Theme JavaScript --%>
    <script src="startbootstrap/js/freelancer.js"></script>
    <%-- 검색어 자동완성 --%>  
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js" type="text/javascript"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.3/themes/smoothness/jquery-ui.css">
	<%------------ 부트스트랩에서 로드시키는 리소스 (종료) ------------%>

	<%-- 카카오톡 js라이브러리 --%>
	<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>

	<script>
	$(document).ready(function(){
		 var autocomplete_text = ["생크림케이크1호","생크림케이크2호","생크림케이크3호","생크림케이크4호","생크림케이크5호","러브블루베리케이크"];
         $("#tt").autocomplete({
            source: autocomplete_text
         });
	});
	
	// 사용할 앱의 Javascript 키를 설정해 주세요.
    Kakao.init('d65ad45d82df670220ebfa16fad367dd');
    function sendLink() {
        Kakao.Link.sendTalkLink({
          label: '[뚜레쥬르 화곡2동점]\n안녕하세요,강서구 화곡2동점\n모바일 홈페이지입니다~.',
          image: {
        	  src : 'http://img.seoul.co.kr/img/upload/2010/12/09/SSI_20101209185619_V.jpg',
        	  /* src : 'http://cfile25.uf.tistory.com/image/1932C31C4D014C891AFE06', 뚜레쥬르 BI*/
              /* src: 'http://dn.api1.kage.kakao.co.kr/14/dn/btqaWmFftyx/tBbQPH764Maw2R6IBhXd6K/o.jpg', 카카오톡 오리 이미지*/
              width: '300',
              height: '200'
          },
          webLink: {
        	  text: '모바일 페이지로 이동하기',
        	  url: 'http://192.168.219.6:8080/tlj_mobil/indext.do'
          }
        });
    }
    
    function executeKakaoStoryLink() {
    	window.open("https://developers.kakao.com/docs/js#카카오-api");
    }
    
    function shareFacebook() {
   	
       	var fullUrl;
        var url = "http://192.168.219.6:8080/tlj_mobil/indext.do";
        var image = "http://img.seoul.co.kr/img/upload/2010/12/09/SSI_20101209185619_V.jpg";
        var title = "[화곡2동점 뚜레쥬르]";
        var summary = "화곡2동점 뚜레쥬르 홈페이지입니다.";
     
        var pWidth = 640;
        var pHeight = 380;
        var pLeft = (screen.width - pWidth) / 2;
        var pTop = (screen.height - pHeight) / 2;
     
        fullUrl = "http://www.facebook.com/share.php?s=100&p[url]="+ url+"&p[images][0]="+ image+"&p[title]="+ title+"&p[summary]="+ summary;
        fullUrl = fullUrl.split("#").join("%23");
        fullUrl = encodeURI(fullUrl);
        window.open(fullUrl,"","width="+ pWidth +",height="+ pHeight +",left="+ pLeft +",top="+ pTop +",location=no,menubar=no,status=no,scrollbars=no,resizable=no,titlebar=no,toolbar=no");
         
    }
	</script>
</body>

</html>
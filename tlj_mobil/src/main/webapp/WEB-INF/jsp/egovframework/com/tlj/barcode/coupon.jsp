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
    <%-- Bootstrap Core CSS - Uses Bootswatch Flatly Theme: http://bootswatch.com/flatly/ --%>
    <link href="startbootstrap/css/bootstrap.min.css" rel="stylesheet">
    <%-- Custom CSS --%>
    <link href="startbootstrap/css/freelancer.css" rel="stylesheet">
    <%-- Custom Fonts --%>
    <link href="startbootstrap/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">
    <%-- Naver map api style --%>
    <style>v\:* { behavior: url(#default#VML); }</style>
</head>

<body id="page-top" class="index">
	<%-- 네비게이션 --%>
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <a class="navbar-brand" href="#page-top">${storeDataVO.STORE_NAME }점 모바일영수증</a>
            </div>
        </div>
    </nav>
	<%-- 헤더 --%>
    <header>
  
    </header>
	<%-- FORM --%>
    <form id="" name="" action=""> 
    <%-- hidden value --%>
    <input type="hidden" id="hideBarcodeNumber" value="${productOderVO.PROD_BARCODE }"/>
    
    <section id="contact">
        <div class="container" id="selectSuccess" style="display:none;">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <br>
                    <h2>주문내역서</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
					<strong>주문자&nbsp;:&nbsp;${productOderVO.PROD_ORDER_NAME }</strong>|
					<strong>주문일자&nbsp;:&nbsp;${productOderVO.PROD_SAVE_DATETIME }</strong><br>
					<strong>품목&nbsp;:&nbsp;${productOderVO.PROD_PROPRIETARY_NAME }</strong>|
					<strong>가격&nbsp;:&nbsp;${productOderVO.PROD_PROPRIETARY_PRICE }원</strong><br><br>
					<div id="bcTarget" style="margin:0 auto;">
						<%-- 바코드 그리드 위치 --%>
		            </div>
					<div>
						<img alt="제품이미지" src="startbootstrap/img/product/2ho.JPG" style="width:230px;height:200px;">
					</div>

					<div class="row" style="margin-top:20px;">
		                <div class="col-lg-12 col-lg-offset-2 text-center" style="margin:0 auto;">
		                	<span>[본 이미지는 실 제품과 다를수 있습니다.]</span><br>
		                	<span>문의전화:${storeDataVO.STORE_PHONENUMBER }</span>
		                </div>
		            </div>
		            
		            <div>
						<img alt="행사안내이미지" src="startbootstrap/img/product/imgView.jpg" style="width:300px;height:450px;">
					</div>
		            
                </div>
            </div>
        </div>
        
        <div class="container" id="selectFail" style="display:none;">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <hr class="star-primary">
                    	<h2>사용이<br>완료되었거나<br>존재하지 않는 영수증입니다.</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                	<span>문의전화:${storeDataVO.STORE_PHONENUMBER }</span>
                </div>
            </div>
        </div>
    </section>
   
    <div class="row">
    	<div class="col-lg-8 col-lg-offset-2">
		    <div id = "testMap" style="border:1px solid #000; width:700px; height:400px; margin:20px; display:block;">
				<%-- 네이버지도 Map : [div] 그리드 위치 --%>
			</div>
		</div>
	</div>
    
    </form>
    
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
                        <h3>사용설명서</h3>
                        <p>주문하신 상품을 찾으실때<br>사용하실수 있는 영수증입니다.<br>본인수령이 아니신경우<br>
                        <span style="color: skyblue;">[카카오톡]</span>&nbsp;또는&nbsp;<span style="color: skyblue;">[문자메세지]</span>로<br>수령하실분에게 보내주세요.<br>
                        <strong style="color: red;">[결재확인용 영수증이므로<br>교환 및 환불은 불가합니다.]</strong>
                        </p>
                    </div>
                    
                    <div class="footer-col col-md-4">
                        <h3>다른사람에게 전달하기</h3>
                        <p>
                        	<a href="#" id="smsAtag"><strong>[문자메세지]</strong></a>로 보내기<br>
                        	<a href="javascript:sendLink();" id="kakaotalkTag"><strong>[카카오톡]</strong></a>으로 보내기
                    	</p>
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
	<%-- barcode --%>
	<script type="text/javascript" src="barcide/js/jquery-1.3.2.min.js"></script>    
	<script type="text/javascript" src="barcide/js/jquery-barcode.js"></script>  
	<%-- 카카오톡 js라이브러리 --%>
	<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
	<%-- 네이버지도 --%>
    <!-- prevent IE6 flickering -->
    <script type="text/javascript">
            try {document.execCommand('BackgroundImageCache', false, true);} catch(e) {}
    </script>
	<script type="text/javascript" src="http://openapi.map.naver.com/openapi/naverMap.naver?ver=2.0&key=1189e353e09be1af11dcd05036d31d7d"></script>
	<%-- 이벤트 스크립트 --%>
	<script>
	
	var barcode = $("#hideBarcodeNumber").val();
	if(barcode != "" || barcode == null){
		if(barcode == "use"){
			$("#selectFail").css("display","block");
		}else{
			$("#selectSuccess").css("display","block");
		}
	}else{
		$("#selectFail").css("display","block");		
	}
	
	$("#bcTarget").barcode(barcode, "ean13",{barWidth:3, barHeight:60});
	
	$(document).ready(function(){

		<%-- 네이버 지도 가로 길이 조절 --%>
		/* var width = $(window).width(); */
		/* $("#testMap").css("width",width-30); */
		$("#testMap").css({"margin":"0 auto","margin-bottom":"30px"});
		
		<%-- 페이지 로딩시 포커스 조절 --%>
		$("img").focus();
		
		if (navigator.userAgent.indexOf("MSIE 8") > 0) {// IE 8.x
			
		}
		else if(navigator.userAgent.indexOf("MSIE 9") > 0) {// IE 9.x
			
		}
		else if(navigator.userAgent.indexOf("MSIE 10") > 0) {// IE 10.x
			
		}
		else if(navigator.userAgent.indexOf("Trident/7.0") > 0) {// IE 11.x
			
		}
		else if(navigator.userAgent.indexOf("Chrome") > 0) {//Chorme
			
		}
		else if(navigator.userAgent.indexOf("Safari") > 0) {// Safari
			$("#bcTarget").css("margin-left","-30px");
		}
		else if(navigator.userAgent.indexOf("KAKAOTALK") > 0) {// KAKAOTALK
			$("#bcTarget").css("margin-left","-30px");
		}
		
		
		$("#smsAtag").click(function(){
			if(barcode != "" && barcode != null){
				if(barcode == "use"){
					alert("이미 사용된 [바코드]입니다. 다른사람에 전송할수 없습니다.");
				}else{
					var t = "";
					if ( !navigator.userAgent.match(/(iPad|iPhone|iPod)/g) ){
						t = "?";
					}else{
						t = "&";
					}
					if(navigator.userAgent.indexOf("Android") > 0) {
						if(navigator.userAgent.indexOf("NAVER") > 0) {
							$(this).attr("href","sms:"+t+"body=["+"<c:out value='${storeDataVO.STORE_NAME }'/>"+"점 모바일 영수증]주문자:"+"<c:out value='${productOderVO.PROD_ORDER_NAME }'/>"+"|주문일자:"+"<c:out value='${productOderVO.PROD_SAVE_DATETIME }'/>"+"|품목:"+"<c:out value='${productOderVO.PROD_PROPRIETARY_NAME }'/>"+"|가격:"+"<c:out value='${productOderVO.PROD_PROPRIETARY_PRICE }'/>"+"원|바코드번호:["+barcode.substring(0, 4)+"-"+barcode.substring(4, 8)+"-"+barcode.substring(8, 12)+"]");
						}else{
							$(this).attr("href","sms:"+t+"body=["+"<c:out value='${storeDataVO.STORE_NAME }'/>"+"점 모바일 영수증]"+"<c:out value='${storeDataVO.STORE_URL }'/>"+""+barcode+"");
						}
					}else{
						$(this).attr("href","sms:"+t+"body=["+"<c:out value='${storeDataVO.STORE_NAME }'/>"+"점 모바일 영수증]"+"<c:out value='${storeDataVO.STORE_URL }'/>"+""+barcode+"");
					}
				}
			}else{
				alert("[바코드] 번호가 전달되지\n않는 문제가 발생했습니다.\n[카카오톡]을 통해서 전송하시거나\n"+"<c:out value='${storeDataVO.STORE_PHONENUMBER }'/>"+"으로 문의해주세요.");
			}
		});
		
	});

	// 사용할 앱의 Javascript 키를 설정해 주세요.
    Kakao.init('d65ad45d82df670220ebfa16fad367dd');
    function sendLink() {
    	if(barcode != "" && barcode != null){
    		if(barcode == "use"){
				alert("이미 사용된 [바코드]입니다. 다른사람에 전송할수 없습니다.");
			}else{
	    		Kakao.Link.sendTalkLink({
	   	          label: '[<c:out value='${storeDataVO.STORE_NAME }'/>점 모바일 영수증]\n제품을 수령하실때 보여주세요.',
	   	          image: {
	   	        	  src : 'http://img.seoul.co.kr/img/upload/2010/12/09/SSI_20101209185619_V.jpg',
	   	        	  /* src : 'http://cfile25.uf.tistory.com/image/1932C31C4D014C891AFE06', */
	   	              /* src: 'http://dn.api1.kage.kakao.co.kr/14/dn/btqaWmFftyx/tBbQPH764Maw2R6IBhXd6K/o.jpg', 카카오톡 오리 이미지*/
	   	              width: '300',
	   	              height: '200'
	   	          },
	   	          webLink: {
	   	        	  text: "모바일 페이지로 이동하기",
	   	        	  url: "<c:out value='${storeDataVO.STORE_URL }'/>"+barcode+""
	   	          }
	   	        });
			}
		}else{
			alert("[바코드] 번호가 전달되지\n않는 문제가 발생했습니다.\n[문자메세지]을 통해서 전송하시거나\n"+"<c:out value='${storeDataVO.STORE_PHONENUMBER }'/>"+"으로 문의해주세요.");		
		}
    }

	</script>
	<%-- 네이버지도 스크립트 --%>
	<script type="text/javascript">
	
	var naver_map_point = "<c:out value='${storeDataVO.STORE_MAP_POINT }'/>";
	var naver_map_point_split = naver_map_point.split("/");
    var oPoint = new nhn.api.map.LatLng(naver_map_point_split[0],naver_map_point_split[1]);
    nhn.api.map.setDefaultPoint('LatLng');
    oMap = new nhn.api.map.Map('testMap', {
       center : oPoint,
       level : 9, // - 초기 줌 레벨은 10이다.
       enableWheelZoom : true,
       enableDragPan : true,
       enableDblClickZoom : false,
       mapMode : 0,
       activateTrafficMap : false,
       activateBicycleMap : false,
       activateRealtyMap : true,
       minMaxLevel : [ 1, 14 ],
       size : new nhn.api.map.Size(280, 300)
    });
    var mapZoom = new nhn.api.map.ZoomControl(); // - 줌 컨트롤 선언
    mapZoom.setPosition({left:20, bottom:20}); // - 줌 컨트롤 위치 지정.
    oMap.addControl(mapZoom); // - 줌 컨트롤 추가.
    
    var oSize = new nhn.api.map.Size(28, 37);
    var oOffset = new nhn.api.map.Size(14, 37);
    var oIcon = new nhn.api.map.Icon('http://static.naver.com/maps2/icons/pin_spot2.png', oSize, oOffset);
    // - Draggable Marker 의 경우 Icon 인자는 Sprite Icon이 된다.
    // - 따라서 Sprite Icon 을 사용하기 위해 기본적으로 사용되는 값을 지정한다.
    // - Sprite Icon 을 사용하기 위해서 상세한 내용은 레퍼런스 페이지의 nhn.api.map.SpriteIcon 객체를 참조하면 된다.
    
	var oMarker1 = new nhn.api.map.Marker(oIcon, { title : '화곡2동 뚜레쥬르' });  //마커 생성 
	oMarker1.setPoint(oPoint); //마커 표시할 좌표 선택
	oMap.addOverlay(oMarker1); //마커를 지도위에 표현 
	var oLabel1 = new nhn.api.map.MarkerLabel(); // - 마커 라벨 선언. 
	oMap.addOverlay(oLabel1); // - 마커 라벨 지도에 추가. 기본은 라벨이 보이지 않는 상태로 추가됨. 
	oLabel1.setVisible(true, oMarker1); // 마커 라벨 보이기 
    </script>
</body>
</html>
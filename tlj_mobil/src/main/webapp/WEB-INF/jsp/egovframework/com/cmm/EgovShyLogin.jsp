<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>뚜레쥬르 화곡2동</title>
</head>

<style>
@charset "utf-8";

/* Common */
body,p,h1,h2,h3,h4,h5,h6,ul,ol,li,dl,dt,dd,table,th,td,form,fieldset,legend,input,textarea,button,select{margin:0;padding:0;font-family:Helvetica}
body,input,textarea,select,button,table{font-size:25px;line-height:1.25em}
body.s,.s input,.s textarea,.s select,.s button,.s table{font-family:Helvetica}
body{position:relative;background-color:#f7f7f7;color:#000;-webkit-text-size-adjust:none}
img,fieldset{border:0}
ul,ol{list-style:none}
em,address{font-style:normal}
a{text-decoration:none}
table{border-collapse:collapse}
hr{display:none !important}
b,strong{font-weight:bold}
.u_hc,.u_skip,.u_vc,.blind{visibility:hidden;overflow:hidden;position:absolute;left:-999em;width:0;height:0;font-size:0;line-height:0}

html{height:100%}
body{position:relative;height:100%;background:#f5f6f7}
#wrap{position:relative;min-height:100%;overflow:hidden}
#container{padding-bottom:128px}
body.global *{font-family:Arial,Helvetica,sans-serif}

/* img */
.sp,.wrg,.logo,#footer ul li{background:url(/login/image/tablet/sp_login_2x_20140615.png) no-repeat;background-size:460px auto;-webkit-background-size:460px auto}
.btn,.int_jogin{background:url(/login/image/tablet/sp_btn_2x_20140615.png) no-repeat;background-size:100px auto;-webkit-background-size:100px auto}

/* header */
#header,#container{margin:0 10px}
#header{position:relative;height:128px;padding:62px 0 0;box-sizing:border-box;-webkit-box-sizing:border-box;-moz-box-sizing:border-box}
#header .h_logo{display:block;height:34px;margin:0 auto;background-position:0 1px;color:#18BC9C;}/* width:160px;font-size:0px;color:transparent; */
#header .lang{position:absolute;top:14px;right:10px}
#header .lang .sel{padding:5px 10px 5px 7px;border:1px solid #ccc;font-size:12px;font-weight:normal;color:#333;height:30px;min-width:95px;background-position:75px 50%}

/* footer */
footer{position:absolute;bottom:0;width:100%;text-align:center}
.u_cr{clear:both;padding:18px 0 12px;font-size:11px;line-height:14px;color:#9e9e9e;text-align:center} 
.u_cri{display:inline-block;margin:0 2px;font-size:11px} 
.u_cri_v1{margin-left:3px;padding-left:10px}
.u_cr .u_cri_v1.sp{background-position:0 -244px}
.u_cra{font-size:12px;color:#9e9e9e} 
.u_cra_v1{font-size:11px}

/* layout */
.title{margin-bottom:17px}
.title p{font-size:13px;line-height:17px;color:#333}
.title p .sevice{font-weight:bold}
a.btn_minor{display:inline-block;padding-right:11px;margin-top:6px;background-position:100% -16px;font-size:13px;color:#999;line-height:13px;text-decoration:underline}
.link_info{position:relative;margin:0 0 7px;min-height:16px}
.link_info a{display:inline-block;float:left;padding-right:8px;font-size:12px;color:#999;line-height:13px;text-decoration:none}
.global .link_info a{font-size:13px}
.link_info a span{display:block;position:relative;padding-right:12px}
.link_info .btn_key_down{background:none}
.link_info .btn_key_up{margin-right:8px;background-position:100% -200px}
.link_info .btn_key_down span{background-position:100% -124px}
.link_info .btn_key_up span{background-position:100% -161px}
.key{float:left}
.key a{padding-right:11px;background-position:100% -16px}
.key_char{height:115px}
.key_symbol{height:89px}
.key_img{display:block;position:absolute;top:23px;left:0;width:100%;height:76px;background-position:50% -280px;background-repeat:no-repeat}
.key_symbol .key_img{height:50px;background-position:50% -370px}
.link_info .link_group{display:block;position:absolute;top:0;right:0}
.link_info .link_group a{padding-right:0}
.error{margin:-2px 0 12px;font-size:12px;line-height:16px;color:#ff1616}
.error .error_info{color:#333}
.error strong{position:relative;top:3px;font-size:15px}
a.link_login_help{display:inline-block;padding-top:4px;font-size:12px;color:#666;text-decoration:underline}
.sub_title a.link_login_help{display:inline;color:#2db400}
.find_info{padding-top:20px;border-top:1px solid #e4e4e5;color:#999;text-align:center}
.find_info a{display:inline-block;font-size:13px;color:#999;line-height:13px;text-decoration:none}
.find_info .bar{position:relative;top:2px}
.global .find_info a{text-decoration:underline}
.find_info .bar{margin:0 4px}
.bar{display:inline-block;width:1px;height:13px;background:#e4e4e5;text-indent:-999em}
.check_info{position:relative;margin-bottom:27px}
.login_form{clear:both}
.error_browser{position:absolute;bottom:50px;width:100%}
.error_browser p{display:block;padding:13px 15px;margin:0 10px;background:#ecedf1;font-size:13px;color:#999;line-height:17px}

/* form */
.sel{padding:5px 10px 5px 7px;padding:7px 8px 6px 7px\9;border:none;border-radius:0;font-size:15px;font-weight:normal;color:#333;height:30px;min-width:85px;width:100%;background:#fff url(/login/image/tablet/sel_arr_2x.gif) 100% 50% no-repeat;background-size:20px 8px;-webkit-background-size:20px 8px;-webkit-appearance:none;-moz-appearance:none;line-height:18px;text-indent:0.01px;text-overflow:''}
.input_row{position:relative;border:solid 1px #dadada;padding:10px 35px 10px 15px;margin:0 0 10px;background:#fff;height:29px}
.input_row.focus{border:solid 1px #20bc01}
.input_box{display:block;overflow:hidden}
.int{position:relative;width:100%;padding:7px 0 6px;height:16px;z-index:9;border:none;background:#fff;font-size:15px;color:#000;line-height:16px}
.lbl{position:absolute;top:16px;left:15px;z-index:8;font-size:15px;color:#999;line-height:16px}
.ie7 .lbl{z-index:10}
.wrg{display:black;position:absolute;top:15px;right:13px;z-index:1000;width:19px;height:19px;margin:0;padding:0;border:0;background-position:-1px -263px;text-indent:-999px;cursor:pointer;background-color:transparent}

/* 
 변경전
.btn_login{display:block;height:61px;*width:460px;margin:30px 0 13px;background:#1fbc02}
.btn_login input{width:100%;border:1px solid #1eb702;*border:none;height:61px;text-indent:-999em;*text-indent:0;*padding-left:900px;-webkit-appearance:none} 
*/
/* 변경후 ----------------------------------------------------------*/
.btn_login{display:block;height:61px;*width:460px;margin:30px 0 13px;background:#18bc9c}
.btn_login input{width:100%;border:1px solid #18bc9c;*border:none;height:61px;text-indent:-999em;*text-indent:0;*padding-left:900px;-webkit-appearance:none}
/* -------------------------------------------------------------- */

</style>
</head>
<body class='ie8' onload="fnInit();">
<div id="wrap">
	<!-- header -->
	<div id="header">
		<h1><a href="<c:url value='/index.do'/>" id="top_logo" class="sp h_logo" tabindex="1" style="text-align:center !important;">TLJ</a></h1>
	</div>
	<!-- //header -->
	<!-- container -->
	<div id="container">
	<!-- content -->
		<div id="content">
			<div class="link_info">
				<div class="u_keyboard">
					<div class="key key_char" id="keyboard_img" style="display:none;">
						<span class="sp key_img">&nbsp;</span>
					</div>
				</div>
			</div>
			
			<form name="loginForm" action ="<c:url value='/uat/uia/actionLogin.do'/>" method="post">
			  
			  <%-------------------- eGovframework : login 일반,기업,업무 라디오버튼 NONE ------------------------------%>
			  <table border="0" cellpadding="0" cellspacing="0" style="width:250px;margin-left:20px; background-repeat:no-repeat; display:block;">
				<!--
				<tr>
                	<td width="30"></td>
                	<td  nowrap><input name="rdoSlctUsr" type="radio" value="radio" checked onClick="checkLogin('GNR');" style="border:0;background:#ffffff;" tabindex="1">일반</td>
                	<td  nowrap><input name="rdoSlctUsr" type="radio" value="radio" onClick="checkLogin('ENT');" style="border:0;background:#ffffff;" tabindex="2">기업</td>
                	<td  nowrap><input name="rdoSlctUsr" type="radio" value="radio" onClick="checkLogin('USR');" style="border:0;background:#ffffff;" tabindex="3">업무</td>
               </tr> 
               -->
               <tr>
                	<td height="1">&nbsp;</td>
               </tr>
               </table>
               <%-- ------------------------------------------------------------------------------------------- --%>
               
               
			<fieldset class="login_form">
			<legend class="blind">로그인</legend>
				<div class="input_row" id="id_area">
					<span class="input_box">
						<label for="id" id="label_id_area" class="lbl"  >아이디</label>
						<input type="text" id="id" name="id" tabindex="7" accesskey="L" placeholder="아이디" class="int" maxlength="25" value="">
					</span>
					<!-- <button type="button" disabled="" title="delete" id="id_clear" class="wrg">삭제 </button> -->
				</div>
				<div id="err_empty_id" class="error" style="display:none;">아이디를 입력해주세요.</div>
				
				<div class="input_row" id="pw_area">
					<span class="input_box">
						<label for="pw" id="label_pw_area" class="lbl" >비밀번호</label>
						<input type="password" id="password" name="password" tabindex="8" placeholder="비밀번호" class="int" maxlength="16"  >
					</span>
					<!-- <button type="button" disabled="" title="delete" id="pw_clear" class="wrg">삭제 </button> -->
					<div id="err_capslock" class="ly_v2" style="display:none;"><div class="ly_box"><p><strong>Caps Lock</strong>이 켜져 있습니다.</p></div><span class="sp ly_point"></span></div>
				</div>
				<div id="err_empty_pw" class="error" style="display:none;">비밀번호를 입력해주세요.</div>
				
				<div id="err_invalid_case" class="error" style="display:none;"><img src="https://nid.naver.com/login/image/bu.gif"></div>
				<span class="btn_login">
					<input type="submit" title="로그인" alt="로그인" tabindex="12" value="로그인" class="int_jogin" onClick="actionLogin()" style="text-indent:0 !important;">
				</span>
				<!-- <div class="check_info">
					<div class="login_check">
						<span class="login_check_box">
							<input type="checkbox" id="login_chk" name="nvlong" class="" tabindex="9" value="on" onchange="savedLong(this);nclks_chk('login_chk', 'log.keepon', 'log.keepoff',this,event)" onclick="msieblur(this);" checked />
							<label for="login_chk" id="label_login_chk" class="sp">로그인 상태 유지</label>
						</span>
						<div class="ly_v2" id="persist_usage" style="display:none;"><div class="ly_box"><p>개인정보 보호를 위해 <strong>개인 PC에서만 사용하세요.</strong>&nbsp;&nbsp;<a target="_blank" href="https://help.naver.com/support/contents/contents.nhn?serviceNo=532&categoryNo=1523" class="sp btn_check_help">도움말보기</a></p></div><span class="sp ly_point"></span></div>
					</div>
				</div> -->
			</fieldset>
			<input type="hidden" id="message" name="message" value="<c:out value='${message}'/>">
            <input name="userSe" type="hidden" value="GNR"/>
            <input name="j_username" type="hidden"/>
			</form>
			
			<div class="position_a">
				<div class="find_info">
					<a target="_blank" href="" onclick="">아이디 찾기</a> <span class="bar">|</span> <a target="_blank" href="" onclick="">비밀번호 찾기</a> <span class="bar">|</span> <a target="_blank" href="<c:url value='/TljJoin.do'/>">회원가입</a></div>
			</div>
		</div>
	</div>
	<footer role="contentinfo">
		<p class="u_cr">
			<span class="u_cri">ⓒ <a target="_blank" href="" onclick="" class="u_cra u_cra_v1">TLJ 화곡2동.</a></span>
			<span class="u_cri u_cri_v1 sp"><a target="_blank" href="" onclick="" class="u_cra">회원정보 고객센터</a></span>
		</p>
	</footer>
</div>

<script type="text/javaScript" language="javascript">

function checkLogin(userSe) {
    // 일반회원
    if (userSe == "GNR") {
        document.loginForm.rdoSlctUsr[0].checked = true;
        document.loginForm.rdoSlctUsr[1].checked = false;
        document.loginForm.rdoSlctUsr[2].checked = false;
        document.loginForm.userSe.value = "GNR";
    // 기업회원
    } else if (userSe == "ENT") {
        document.loginForm.rdoSlctUsr[0].checked = false;
        document.loginForm.rdoSlctUsr[1].checked = true;
        document.loginForm.rdoSlctUsr[2].checked = false;
        document.loginForm.userSe.value = "ENT";
    // 업무사용자
    } else if (userSe == "USR") {
        document.loginForm.rdoSlctUsr[0].checked = false;
        document.loginForm.rdoSlctUsr[1].checked = false;
        document.loginForm.rdoSlctUsr[2].checked = true;
        document.loginForm.userSe.value = "USR";
    }
}

function actionLogin() {

    if (document.loginForm.id.value =="") {
        alert("아이디를 입력하세요");
    } else if (document.loginForm.password.value =="") {
        alert("비밀번호를 입력하세요");
    } else {
        document.loginForm.action="<c:url value='/uat/uia/actionLogin.do'/>";
        //document.loginForm.j_username.value = document.loginForm.userSe.value + document.loginForm.username.value;
        //document.loginForm.action="<c:url value='/j_spring_security_check'/>";
        document.loginForm.submit();
    }
}

/* function actionCrtfctLogin() {
    document.defaultForm.action="<c:url value='/uat/uia/actionCrtfctLogin.do'/>";
    document.defaultForm.submit();
} */

/* function goFindId() {
    document.defaultForm.action="<c:url value='/uat/uia/egovIdPasswordSearch.do'/>";
    document.defaultForm.submit();
} */

/* function goRegiUsr() {

	var useMemberManage = '${useMemberManage}';

	if(useMemberManage != 'true'){
		alert("사용자 관리 컴포넌트가 설치되어 있지 않습니다. \n관리자에게 문의하세요.");
		return false;
	}

    var userSe = document.loginForm.userSe.value;
    // 일반회원
    if (userSe == "GNR") {
        document.loginForm.action="<c:url value='/uss/umt/EgovStplatCnfirmMber.do'/>";
        document.loginForm.submit();
    // 기업회원
    } else if (userSe == "ENT") {
        document.loginForm.action="<c:url value='/uss/umt/EgovStplatCnfirmEntrprs.do'/>";
        document.loginForm.submit();
    // 업무사용자
    } else if (userSe == "USR") {
        alert("업무사용자는 별도의 회원가입이 필요하지 않습니다.");
    }
} */

/* function goGpkiIssu() {
    document.defaultForm.action="<c:url value='/uat/uia/egovGpkiIssu.do'/>";
    document.defaultForm.submit();
} */

/* function setCookie (name, value, expires) {
    document.cookie = name + "=" + escape (value) + "; path=/; expires=" + expires.toGMTString();
} */

/* function getCookie(Name) {
    var search = Name + "=";
    if (document.cookie.length > 0) { // 쿠키가 설정되어 있다면
        offset = document.cookie.indexOf(search);
        if (offset != -1) { // 쿠키가 존재하면
            offset += search.length;
            // set index of beginning of value
            end = document.cookie.indexOf(";", offset);
            // 쿠키 값의 마지막 위치 인덱스 번호 설정
            if (end == -1)
                end = document.cookie.length;
            return unescape(document.cookie.substring(offset, end));
        }
    }
    return "";
} */

/* function saveid(form) {
    var expdate = new Date();
    // 기본적으로 30일동안 기억하게 함. 일수를 조절하려면 * 30에서 숫자를 조절하면 됨
    if (form.checkId.checked)
        expdate.setTime(expdate.getTime() + 1000 * 3600 * 24 * 30); // 30일
    else
        expdate.setTime(expdate.getTime() - 1); // 쿠키 삭제조건
    setCookie("saveid", form.id.value, expdate);
} */

/* function getid(form) {
    form.checkId.checked = ((form.id.value = getCookie("saveid")) != "");
} */

function fnInit() {
	/*if (document.getElementById('loginForm').message.value != null) {
	    var message = document.getElementById('loginForm').message.value;
	}*/
    if (document.getElementById("message").value != "") {
        alert(document.getElementById("message").value);
    }
    getid(document.loginForm);
    // 포커스
    //document.loginForm.rdoSlctUsr.focus();
}

</script>
<div id="nv_stat" style="display:none;">20</div>
</body>
</html>

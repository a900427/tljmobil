var LoginTheme = {
	renderingBeginTime : 0,
	imageSize : 0,
	configNotiLayer : null,
	noticeDiv : null,
	noticeDivAlpha : 1.0,
	configLayerClosingTimer : null,
	init : function() {
		if (this.cofigLayer != null) {
			return;
		}
		this.configNotiLayer = $('theme_set');
	},
	isSupported : function() {
		var ua = window.navigator.userAgent;
		var moreIE9 = false;
		if (ua.indexOf('Trident') != -1) {
			var versionIndex = ua.indexOf('Trident/') + 'Trident/'.length;
			var versionString = ua.substr(versionIndex).split(';')[0];
			var version = parseInt(versionString);
			moreIE9 = (version >= 5);
		}
		var isWebkit = (ua.indexOf('AppleWebKit') != -1);
		var isFirefox = (ua.indexOf('Firefox') != -1);
		var isMacOS = (ua.indexOf('Mac OS') != -1);
		var isAndroid = ((ua.indexOf('Android') != -1) || (ua.indexOf('android') != -1));
		var isAndroid2x = (ua.indexOf('Android 2.') != -1);
		return ((moreIE9 || isWebkit || isFirefox || isAndroid || isMacOS) && (!isAndroid2x));
	},
	notSupportMessage : function() {
		return '로그인 테마는 IE 9 이상, 크롬, 사파리, 파이어폭스, 그리고 안드로이드 3.0 이상 버전에서 사용 가능합니다. 사용 가능한 브라우저를 설치하시고 사용해주세요.';
	},
	openThemeCampaign : function() {
		if (!this.isSupported()) {
			alert(this.notSupportMessage());
			return;
		}
		$('themeCampaignLayer').style.display = "block";
	},
	closeThemeCampaign : function() {
		$('themeCampaignLayer').style.display = "none";
	},
	redirectConfigWindow : function() {
		this.closeThemeCampaign();	
		try {
			$("encpw").value="";
			$("encnm").value="";
			$("id").value="";
			$("pw").value="";
			$("otp").value="";
		}catch (e){
		}
		$("theme_mode").value = "setMode";
		$("frmNIDLogin").submit();
	},
	toggleLayer : function() {
		this.init();
		if (this.configNotiLayer.style.display == "block") {
			this.closeLayer();
		} else {
			this.openLayer();
		}
	},
	openLayer : function() {
		this.init();
		this.clearLayerCloseTimer();
		this.configNotiLayer.style.display = "block";
	},
	closeLayer : function() {
		this.init();
		this.clearLayerCloseTimer();
		this.layerCloseTimer = setTimeout( function() { LoginTheme.configNotiLayer.style.display = "none" }, 200);
	},
	clearLayerCloseTimer : function() {
		if (this.layerCloseTimer != null) {
			clearTimeout(this.layerCloseTimer);
			this.layerCloseTimer = null;
		}
	},
	disappearThemeNotice : function() {
		if (this.noticeDiv == null) {
			this.noticeDiv = $('theme_txt');
		}
		this.noticeDiv.style.display = "block";
		this.noticeDiv.style.opacity = 1.0;
		this.noticeDivAlpha = 1.0;

		var disappear = function() {
			LoginTheme.noticeDivAlpha -= 0.1;

			if (LoginTheme.noticeDivAlpha <= 0.0) {
				LoginTheme.noticeDivAlpha = 0.0;
				LoginTheme.noticeDiv.style.display = "none";
			} else {
				LoginTheme.noticeDiv.style.opacity = LoginTheme.noticeDivAlpha.toFixed(1);
				setTimeout(disappear, 50);
			}
		};

		setTimeout(disappear, 3000);
	},
	drawThemeImage : function(is_popup_view) {
		var themeImage = getLocalStorageItemSafely("theme_img");
		this.imageSize = (themeImage == null) ? 0 : themeImage.length;
		if (themeImage != null && themeImage.length > 4) {
			document.getElementById("wrap").style.backgroundImage = 'url('+themeImage+')';
		}

		var theme_pos = getLocalStorageItemSafely("theme_position");
		if (is_popup_view!=1) {
			if (theme_pos != null && theme_pos != "") {
			//	document.body.className = theme_pos;
				this.setBodyClassName(theme_pos);
			}
		} else {
			if (theme_pos != null && theme_pos != "") {
				var tmp_css = theme_pos.split(" ");
				if (tmp_css.length==2) {
					//document.body.className = "popup " + tmp_css[1];
					//this.setBodyClassName("popup " + tmp_css[1]);
					this.setBodyClassName("popup bg3");
				}
			}
		}
	},
	setBodyClassName : function(positionClassName) {
		var className = document.body.className;
		className = className.replace('bg0', '').replace('bg1', '').replace('bg2', '').replace('bg3', '')
			.replace('position_center', '').replace('position_right', '')
			.replace('popup', '');
		className += positionClassName;
		document.body.className = className;
	},
	clear : function() {
		var setCookie = function(name, value) {
		    var today = new Date();
		    var expire = new Date(today.getTime() + 60 * 60 * 24 * 365 * 1000);
		    var curCookie = name + "=" + escape(value) + "; expires=" + expire.toGMTString()
							+ "; path=/; domain=.nid.naver.com; Secure;";
			document.cookie = curCookie;
		};

		try {
			localStorage.setItem("theme_img", "");
			localStorage.setItem("theme_position", "");
			localStorage.removeItem("theme_img");
			localStorage.removeItem("theme_position");
			setCookie("nid_theme","");
		} catch(e) {
			//error
		}
		this.goLoginPage();
	},
	goLoginPage : function() {
		try {
			$("encpw").value="";
			$("encnm").value="";
			$("id").value="";
			$("pw").value="";
			$("otp").value="";
		}catch (e){
		}
		$("theme_mode").value = "";
		$("frmNIDLogin").submit();
	},
	setCookieNameValue : function(name, value) {
	    var today = new Date();
	    var expire = new Date(today.getTime() + 60 * 60 * 24 * 3650 * 1000);
	    var curCookie = name + "=" + escape(value) + "; expires=" + expire.toGMTString()
						+ "; path=/; domain=.nid.naver.com; Secure;";
		document.cookie = curCookie;
	},
	setCookie : function(value) {
		this.setCookieNameValue('nid_theme', value);
	}
}

function getLocalStorageItemSafely(name) {
	var item = localStorage.getItem(name);
	if (item == null || item.length == 0) {
		return item;
	}

	return item.replace(/&/g, '&amp;')
		.replace(/"/g, '&quot;')
		.replace(/'/g, '&#x27;')
		.replace(/</g, '&lt;')
		.replace(/>/g, '&gt;');
}

function persist_usage() {
	var nvlong = $("nvlong");
	if (nvlong.value=="1" ||  nvlong.value=="on" || nvlong.value=="ON") {
		$("persistent_use").className="check_login";
		nvlong.value="";
	} else {
		$("persistent_use").className="check_login on";
		nvlong.value="1";
	}
}

function show_theme_info() {
	var theme_info = $("theme_info");
	if (theme_info.style.display=="none")
	{
		show("theme_info");
	}
	else
	{
		hide("theme_info");
	}
}

function displayPersistOption(){
	var nvlong = $("nvlong");
	if (nvlong.value=="1" ||  nvlong.value=="on" || nvlong.value=="ON") {
		$("persistent_use").className="check_login on";
	} else {
		$("persistent_use").className="check_login";
	}
}


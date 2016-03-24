<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0,user-scalable=no">
<title>网页实时云视频平台</title>
<meta name="keywords" content="实时猫, realtimecat, 中国WebRTC平台, China WebRTC Platform, 网页实时云视频, WebRTC SDK, 网页视频SDK, 教育视频服务, 云视频平台">
<meta name="description" content="实时猫是专注于WebRTC技术的实时云视频服务平台">
<meta name="author" content="RealTimeCat">
<meta name="google-site-verification" content="BFq--ufvrjKKcCD2r3wOs6S7NedDKAACwl80uoyujAc">
<meta property="wb:webmaster" content="205f9cbf7ab80774">
<link rel="stylesheet" href="https://shishimao.com/rooms/vendor/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="https://shishimao.com/rooms/css/main.min.css">
<script charset="utf-8" src="./js/v.js"></script>
<script src="./js/hm.js"></script>
<script async="" src="./js/analytics.js"></script>
<script type="text/javascript" id="zhuge-js" async=""
	src="./js/zhuge-lastest.min.js"></script>
<script type="text/javascript">
	window.zhuge = window.zhuge || [];
	window.zhuge.methods = "_init debug identify track trackLink trackForm page"
			.split(" ");
	window.zhuge.factory = function(b) {
		return function() {
			var a = Array.prototype.slice.call(arguments);
			a.unshift(b);
			window.zhuge.push(a);
			return window.zhuge
		}
	};
	for (var i = 0; i < window.zhuge.methods.length; i++) {
		var key = window.zhuge.methods[i];
		window.zhuge[key] = window.zhuge.factory(key)
	};
	window.zhuge.load = function(b, x) {
		if (!document.getElementById("zhuge-js")) {
			var a = document.createElement("script");
			var verDate = new Date();
			var verStr = verDate.getFullYear().toString()
					+ verDate.getMonth().toString()
					+ verDate.getDate().toString();

			a.type = "text/javascript";
			a.id = "zhuge-js";
			a.async = !0;
			a.src = (location.protocol == 'http:' ? "http://sdk.zhugeio.com/zhuge-lastest.min.js?v="
					: 'https://zgsdk.zhugeio.com/zhuge-lastest.min.js?v=')
					+ verStr;
			var c = document.getElementsByTagName("script")[0];
			c.parentNode.insertBefore(a, c);
			window.zhuge._init(b, x)
		}
	};
	window.zhuge.load('34b236a9b5d64754a39bdccc7c67bbdc');
</script>
</head>
<body>
<body class="toggle-panel">
	<nav class="navbar navbar-inverse navbar-static-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" data-toggle="collapse" data-target="#navbar"
				aria-expanded="false" aria-controls="navbar"
				class="navbar-toggle collapsed">
				<span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span
					class="icon-bar"></span><span class="icon-bar"></span>
			</button>
			<a href="https://shishimao.com/" class="navbar-brand"><img
				alt="实时猫" src="./js/logo.png" width="20"
				height="20"></a>
		</div>
		<div id="navbar" class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
				<li><a href="https://shishimao.com/">RealTimeCat</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-center">
				<li><a data-toggle="modal" data-target="#invite-modal"
					data-hover="tooltip" data-placement="bottom" title=""
					data-original-title="邀请好友"><i class="fa fa-share-square-o"></i></a></li>
				<li class=""><a id="chat-toggle"
					href="https://shishimao.com/rooms/%E6%9D%A8%E6%9F%B3%E4%BE%9D%E4%BE%9D%E7%9A%84%E8%90%A8%E5%B0%94%E7%93%A6%7C#"
					data-hover="tooltip" data-placement="bottom" title=""
					data-original-title="聊天"><i class="fa fa-comment-o"></i></a></li>
				<li><a id="video-toggle"
					href="https://shishimao.com/rooms/%E6%9D%A8%E6%9F%B3%E4%BE%9D%E4%BE%9D%E7%9A%84%E8%90%A8%E5%B0%94%E7%93%A6%7C#"
					data-hover="tooltip" data-placement="bottom" title=""
					data-original-title="关闭视频" class="stream-disabled"><i
						class="fa fa-eye-slash"></i></a></li>
				<li><a id="audio-toggle"
					href="https://shishimao.com/rooms/%E6%9D%A8%E6%9F%B3%E4%BE%9D%E4%BE%9D%E7%9A%84%E8%90%A8%E5%B0%94%E7%93%A6%7C#"
					data-hover="tooltip" data-placement="bottom" title=""
					data-original-title="关闭音频"><i class="fa fa-microphone-slash"></i></a></li>
				<li><a id="screen-toggle"
					href="https://shishimao.com/rooms/%E6%9D%A8%E6%9F%B3%E4%BE%9D%E4%BE%9D%E7%9A%84%E8%90%A8%E5%B0%94%E7%93%A6%7C#"
					data-hover="tooltip" data-placement="bottom" title=""
					data-original-title="分享屏幕"><i class="fa fa-television"></i></a></li>
				<li><a id="whiteboard-toggle"
					href="https://shishimao.com/rooms/%E6%9D%A8%E6%9F%B3%E4%BE%9D%E4%BE%9D%E7%9A%84%E8%90%A8%E5%B0%94%E7%93%A6%7C#"
					data-hover="tooltip" data-placement="bottom" title=""
					data-original-title="白板"><i class="fa fa-object-group"></i></a></li>
				<li><a id="leave-room"
					href="https://shishimao.com/rooms/%E6%9D%A8%E6%9F%B3%E4%BE%9D%E4%BE%9D%E7%9A%84%E8%90%A8%E5%B0%94%E7%93%A6%7C#"
					data-hover="tooltip" data-placement="bottom" title=""
					data-original-title="离开房间"><i class="fa fa-sign-out"></i></a></li>
				<li><a id="username"
					href="https://shishimao.com/rooms/%E6%9D%A8%E6%9F%B3%E4%BE%9D%E4%BE%9D%E7%9A%84%E8%90%A8%E5%B0%94%E7%93%A6%7C#"
					data-toggle="modal" data-target="#username-modal"
					data-hover="tooltip" data-placement="bottom" title=""
					data-original-title="更改用户名">缅因猫</a></li>
			</ul>
		</div>
		<!-- /.nav-collapse-->
	</div>
	</nav>
	<div id="wrapper" class="toggled">
		<div id="chat-wrapper">
			<textarea placeholder="在此输入信息，按回车键发送" class="chat-input"></textarea>
			<div id="file-list">
				<div class="progress">
					<div class="progress-bar"></div>
				</div>
			</div>
			<a id="uploadIcon" href="javascript:document.getElementById("
				uploadFile").click();" data-hover="tooltip" data-placement="top"
				title="" data-original-title="发送文件"><i class="fa fa-upload"></i></a><input
				id="uploadFile" type="file" class="hidden">
			<ul class="chats"></ul>
		</div>
		<div id="page-content-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<div id="whiteboard-container">
							<div class="btn-group-vertical">
								<div class="btn-group">
									<button data-toggle="dropdown" type="button"
										class="btn btn-default dropdown-toggle">
										<i class="fa fa-circle"></i>
									</button>
									<ul class="dropdown-menu">
										<li><a id="pen-1x"
											href="https://shishimao.com/rooms/%E6%9D%A8%E6%9F%B3%E4%BE%9D%E4%BE%9D%E7%9A%84%E8%90%A8%E5%B0%94%E7%93%A6%7C#">1X</a></li>
										<li><a id="pen-2x"
											href="https://shishimao.com/rooms/%E6%9D%A8%E6%9F%B3%E4%BE%9D%E4%BE%9D%E7%9A%84%E8%90%A8%E5%B0%94%E7%93%A6%7C#">2X</a></li>
										<li><a id="pen-3x"
											href="https://shishimao.com/rooms/%E6%9D%A8%E6%9F%B3%E4%BE%9D%E4%BE%9D%E7%9A%84%E8%90%A8%E5%B0%94%E7%93%A6%7C#">3X</a></li>
										<li><a id="pen-4x"
											href="https://shishimao.com/rooms/%E6%9D%A8%E6%9F%B3%E4%BE%9D%E4%BE%9D%E7%9A%84%E8%90%A8%E5%B0%94%E7%93%A6%7C#">4X</a></li>
										<li><a id="pen-5x"
											href="https://shishimao.com/rooms/%E6%9D%A8%E6%9F%B3%E4%BE%9D%E4%BE%9D%E7%9A%84%E8%90%A8%E5%B0%94%E7%93%A6%7C#">5X</a></li>
										<li><a id="pen-6x"
											href="https://shishimao.com/rooms/%E6%9D%A8%E6%9F%B3%E4%BE%9D%E4%BE%9D%E7%9A%84%E8%90%A8%E5%B0%94%E7%93%A6%7C#">6X</a></li>
									</ul>
								</div>
								<div class="btn-group">
									<button data-toggle="dropdown" type="button"
										class="btn btn-default dropdown-toggle">
										<i class="fa fa-paint-brush"></i>
									</button>
									<ul class="dropdown-menu">
										<li><a id="color-black"
											href="https://shishimao.com/rooms/%E6%9D%A8%E6%9F%B3%E4%BE%9D%E4%BE%9D%E7%9A%84%E8%90%A8%E5%B0%94%E7%93%A6%7C#"
											style="background-color: black;"></a></li>
										<li><a id="color-red"
											href="https://shishimao.com/rooms/%E6%9D%A8%E6%9F%B3%E4%BE%9D%E4%BE%9D%E7%9A%84%E8%90%A8%E5%B0%94%E7%93%A6%7C#"
											style="background-color: red;"></a></li>
										<li><a id="color-green"
											href="https://shishimao.com/rooms/%E6%9D%A8%E6%9F%B3%E4%BE%9D%E4%BE%9D%E7%9A%84%E8%90%A8%E5%B0%94%E7%93%A6%7C#"
											style="background-color: green;"></a></li>
										<li><a id="color-blue"
											href="https://shishimao.com/rooms/%E6%9D%A8%E6%9F%B3%E4%BE%9D%E4%BE%9D%E7%9A%84%E8%90%A8%E5%B0%94%E7%93%A6%7C#"
											style="background-color: blue;"></a></li>
										<li><a id="color-yellow"
											href="https://shishimao.com/rooms/%E6%9D%A8%E6%9F%B3%E4%BE%9D%E4%BE%9D%E7%9A%84%E8%90%A8%E5%B0%94%E7%93%A6%7C#"
											style="background-color: yellow;"></a></li>
										<li><a id="color-purple"
											href="https://shishimao.com/rooms/%E6%9D%A8%E6%9F%B3%E4%BE%9D%E4%BE%9D%E7%9A%84%E8%90%A8%E5%B0%94%E7%93%A6%7C#"
											style="background-color: purple;"></a></li>
										<li><a id="color-brown"
											href="https://shishimao.com/rooms/%E6%9D%A8%E6%9F%B3%E4%BE%9D%E4%BE%9D%E7%9A%84%E8%90%A8%E5%B0%94%E7%93%A6%7C#"
											style="background-color: brown;"></a></li>
									</ul>
								</div>
								<button id="add-text" type="button" class="btn btn-default">
									<i class="fa fa-font"></i>
								</button>
								<button id="eraser" type="button" class="btn btn-default">
									<i class="fa fa-eraser"></i>
								</button>
								<button id="clear" type="button" class="btn btn-default">
									<i class="fa fa-trash-o"></i>
								</button>
							</div>
							<canvas width="1080" height="768" class="whiteboard"></canvas>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-8 col-md-offset-2">
						<div id="the-stage">
							<p>您是此房间中的第一个人</p>
							<p>您是此房间中的第一个人,分享房间链接给好友，或将网址加入收藏</p>
							<input class="room-url-input form-control" type="text"
								readonly="true" value="https://shishimao.com/rooms/杨柳依依的萨尔瓦|">
						</div>
					</div>
				</div>
				<div class="row">
					<div id="media-list">
						<div class="col-md-6">
							<div id="peer-self"
								class="video-player embed-responsive embed-responsive-4by3">
								<div class="top-left-corner">
									<i class="fa fa-microphone-slash fa-fw" style="display: none;"></i><i
										class="fa fa-bell-slash fa-fw" style="display: none;"></i>
								</div>
								<div class="video-off" style="">
									<i class="fa fa-eye-slash fa-3x"></i>
									<p>视频关闭</p>
								</div>
								<video width="800" height="600" autoplay="autoplay"
									src="blob:https%3A//shishimao.com/a044dd49-d424-4897-926f-65d29c1f19e0"></video>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<input id="token" value="b10dceca-9a74-4439-bc26-412d4a9be824"
		type="hidden">
	<!-- Invite Modal-->
	<div id="invite-modal" tabindex="-1" role="dialog" class="modal fade">
		<div role="document" class="modal-dialog">
			<div class="modal-content">
				<div class="modal-body">
					<div class="row">
						<div class="col-md-12">
							<h4 class="text-primary">分享房间链接给好友，或将网址加入收藏</h4>
						</div>
					</div>
					<div class="row">
						<div class="col-md-9">
							<input type="text" onclick="this.select();" readonly="true"
								class="room-url-input form-control">
						</div>
						<div class="col-md-3">
							<a
								href="javascript:void((function(s,d,e,r,l,p,t,z,c){var%20f='http://v.t.sina.com.cn/share/share.php?appkey=480070355',u=z||d.location,p=['&url=',e(u),'&title=',e(t||d.title),'&source=',e(r),'&sourceUrl=',e(l),'&content=',c||'gb2312','&pic=',e(p||'')].join('');function%20a(){if(!window.open([f,p].join(''),'mb',['toolbar=0,status=0,resizable=1,width=440,height=430,left=',(s.width-440)/2,',top=',(s.height-430)/2].join('')))u.href=[f,p].join('');};if(/Firefox/.test(navigator.userAgent))setTimeout(a,0);else%20a();})(screen,document,encodeURIComponent,'','','','使用实时猫和我一起视频','','utf-8'));"
								class="btn btn-default btn-sm"><i
								class="fa fa-weibo fa-fw fa-2x"></i></a><a id="share-to-weixin"
								href="javascript:void(0)" data-toggle="popover"
								data-placement="bottom" data-html="true"
								data-content="&lt;p class=&quot;text-primary&quot;&gt;用微信扫描下方二维码&lt;/p&gt;&lt;div id=&quot;qrcode&quot;&gt;&lt;/div&gt;"
								class="btn btn-default btn-sm" data-original-title="" title=""><i
								class="fa fa-weixin fa-fw fa-2x"></i></a>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<h4 class="text-primary">通过邮件邀请好友</h4>
						</div>
						<div class="col-md-9">
							<input id="mailto-link" type="email" placeholder="Email"
								class="form-control">
						</div>
						<div class="col-md-3">
							<button id="mailto-send" type="button" class="btn btn-primary">发送</button>
						</div>
					</div>
					<hr>
					<button type="button" data-dismiss="modal" class="btn btn-default">关闭</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 更改用户名-->
	<div id="username-modal" tabindex="-1" role="dialog" class="modal fade">
		<div role="document" class="modal-dialog">
			<div class="modal-content">
				<div class="modal-body">
					<div class="row">
						<div class="col-md-9">
							<input id="new-username" type="text" placeholder="输入您的新用户名"
								value="缅因猫" class="form-control">
						</div>
						<div class="col-md-3">
							<button id="changeUsername" class="btn btn-default">提交</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 下载分享插件-->
	<div id="extension-modal" tabindex="-1" role="dialog"
		class="modal fade">
		<div role="document" class="modal-dialog">
			<div class="modal-content">
				<div class="modal-body">
					<div class="row">
						<div class="col-md-12">
							<h4 class="text-primary">系统未检测到实时猫屏幕分享插件</h4>
							<p class="text-primary">如果您正在使用Chrome浏览器,请点击"下载插件"按钮下载实时猫屏幕分享插件,并访问chrome://extensions/,
								进入Chrome插件管理页面拖动安装本插件</p>
							<a
								href="https://shishimao.com/rooms/downloads/RealTimeCat-ScreenSharing-Extension_v0.2.0.crx"
								download="" class="btn btn-primary">下载插件</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="loading" style="display: none;">
		<img id="loading-image" src="./js/rtc-250X200.png"
			alt="Loading...">
	</div>
	<div id="ask-for-allowance" style="display: none;">
		<img id="ask-for-allowance-image"
			src="./js/ask-for-allowance.png" alt="请点击允许按钮">
	</div>
	<script src="./js/jquery.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>
	<script src="./js/utilities.min.js"></script>
	<script src="./js/realtimecat.min.js"></script>
	<script src="./js/qrcode.min.js"></script>
	<script src="./js/Autolinker.min.js"></script>
	<script src="./js/room.min.js"></script>
	<!-- Google Analytics: Change UA-XXXXX-X to be your site's ID. Go to http://www.google.com/analytics/ for more information.-->
	<script type="text/javascript">
		(function(i, s, o, g, r, a, m) {
			i['GoogleAnalyticsObject'] = r;
			i[r] = i[r] || function() {
				(i[r].q = i[r].q || []).push(arguments)
			}, i[r].l = 1 * new Date();
			a = s.createElement(o), m = s.getElementsByTagName(o)[0];
			a.async = 1;
			a.src = g;
			m.parentNode.insertBefore(a, m)
		})(window, document, 'script',
				'//www.google-analytics.com/analytics.js', 'ga');
		ga('create', 'UA-64755055-1', 'auto');
		ga('send', 'pageview');
	</script>
	<!-- Baidu Analytics-->
	<script type="text/javascript">
		var _hmt = _hmt || [];
		(function() {
			var hm = document.createElement("script");
			hm.src = "//hm.baidu.com/hm.js?8678f1adec36dd7111c2032c5373e379";
			var s = document.getElementsByTagName("script")[0];
			s.parentNode.insertBefore(hm, s);
		})();
	</script>
</body>


</html>
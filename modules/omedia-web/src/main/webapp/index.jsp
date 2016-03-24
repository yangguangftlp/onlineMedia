<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0,user-scalable=no">
<title>网页实时云视频平台</title>
<meta name="keywords"
	content="实时猫, realtimecat, 中国WebRTC平台, China WebRTC Platform, 网页实时云视频, WebRTC SDK, 网页视频SDK, 教育视频服务, 云视频平台">
<meta name="description" content="实时猫是专注于WebRTC技术的实时云视频服务平台">
<meta name="author" content="RealTimeCat">
<meta name="google-site-verification"
	content="BFq--ufvrjKKcCD2r3wOs6S7NedDKAACwl80uoyujAc">
<link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css"
	rel="stylesheet">
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
</head>
<body>
<body class="toggle-panel">
	<div class="container-fluid">
		<nav class="navbar navbar-inverse navbar-static-top">
		<div id="navbar" class="collapse navbar-collapse">
			<ul class="nav navbar-nav navbar-center">
				<li><a data-toggle="modal" data-target="#invite-modal"
					data-hover="tooltip" data-placement="bottom" title=""
					data-original-title="邀请好友"><i
						class="glyphicon glyphicon-fullscreen"></i></a></li>
				<li class=""><a id="chat-toggle" href="#" data-hover="tooltip"
					data-placement="bottom" title="" data-original-title="聊天"><i
						class="glyphicon glyphicon-volume-up"></i></a></li>
				<li><a id="video-toggle" href="#" data-hover="tooltip"
					data-placement="bottom" title="" data-original-title="关闭视频"><i
						class="glyphicon glyphicon-volume-up"></i></a></li>
				<li><a id="audio-toggle" href="#" data-hover="tooltip"
					data-placement="bottom" title="" data-original-title="关闭音频"><i
						class="glyphicon glyphicon-volume-off"></i></a></li>
				<li><a id="screen-toggle" href="#" data-hover="tooltip"
					data-placement="bottom" title="" data-original-title="分享屏幕"><i
						class="glyphicon glyphicon-volume-up"></i></a></li>
				<li><a id="whiteboard-toggle" href="#" data-hover="tooltip"
					data-placement="bottom" title="" data-original-title="白板"><i
						class="glyphicon glyphicon-volume-up"></i></a></li>
				<li><a id="leave-room" href="#" data-hover="tooltip"
					data-placement="bottom" title="" data-original-title="离开房间"><i
						class="glyphicon glyphicon-volume-up"></i></a></li>
			</ul>
		</div>
		</nav>
	</div>
</body>
</html>
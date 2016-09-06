
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>登录</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<!-- basic styles -->

<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="assets/css/font-awesome.min.css" />



<link rel="stylesheet" href="assets/css/ace.min.css" />
<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />




</head>

<body class="login-layout">
	<div class="main-container">
		<div class="main-content">
			<div class="row">
				<div class="col-sm-10 col-sm-offset-1">
					<div class="login-container">
						<div class="center">
							<h1>
								<i class="icon-leaf green"></i> <span class="white">用户登录</span>
							</h1>
							<h4 class="blue">XX电商系统</h4>
						</div>

						<div class="space-6"></div>

						<div class="position-relative">
							<div id="login-box"
								class="login-box visible widget-box no-border">
								<div class="widget-body">
									<div class="widget-main">
										<h4 class="header blue lighter bigger">
											<i class="icon-coffee green"></i> 请输入账号密码
										</h4>


										<div class="space-6"></div>

										<form action="UserLogin" method="post">
											<fieldset>
												<label class="block clearfix">
													<tr>
														<select style="WIDTH: 246px" height="50" name="roletype">
															<option value="2" name="role">买家登录</option>
															<option value="3" name="role">卖家登录</option>
															<option value="1" name="role">管理人员</option>
														</select>
														<td style="color:white;" align="center" height="30"
															width="55">身 份</td>
													</tr>
													<div class="space-4"></div> <span
													class="block input-icon input-icon-right"> <input
														type="text" class="form-control" placeholder="用户名"
														name="username" /> <i class="icon-user"></i>
												</span>
												</label> <label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														type="password" class="form-control" placeholder="密码"
														name="password" /> <i class="icon-lock"></i>
												</span>
												</label>

												<div class="space"></div>

												<div class="clearfix">
													<label class="inline"> <span class="lbl">${loginError}</span>
													</label> <input type="submit"
														class="width-35 pull-right btn btn-sm btn-primary"
														value="登录">


												</div>

												<div class="space-4"></div>
											</fieldset>
										</form>

									</div>
									<!-- /widget-main -->


									<div class="toolbar clearfix">
										<div>
											<a href="#" onclick="show_box('forgot-box'); return false;"
												class="forgot-password-link"> <i class="icon-arrow-left"></i>
												忘记密码
											</a>
										</div>

										<div>
											<a href="#" onclick="show_box('signup-box'); return false;"
												class="user-signup-link"> 注册新用户 <i
												class="icon-arrow-right"></i>
											</a>
										</div>
									</div>
								</div>
								<!-- /widget-body -->
							</div>
							<!-- /login-box -->

							<div id="forgot-box" class="forgot-box widget-box no-border">
								<div class="widget-body">
									<div class="widget-main">
										<h4 class="header red lighter bigger">
											<i class="icon-key"></i> 重置密码
										</h4>

										<div class="space-6"></div>
										<p>这里会显示你的密码,如果你输入正确的话</p>

										<form action="FindPwdServlet" method="post" id="findpwd">
											<fieldset>
												<label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														type="email" class="form-control" placeholder="Email"
														name="email" /> <i class="icon-envelope"></i>${password}

												</span>
												</label>

												<div class="clearfix">
													<button type="submit"
														class="width-35 pull-right btn btn-sm btn-danger">
														<i class="icon-lightbulb"></i> 确定
													</button>
												</div>
											</fieldset>
										</form>
									</div>
									<!-- /widget-main -->

									<div class="toolbar center">
										<a href="#" onclick="show_box('login-box'); return false;"
											class="back-to-login-link"> 返回登录 <i
											class="icon-arrow-right"></i>
										</a>
									</div>
								</div>
								<!-- /widget-body -->
							</div>
							<!-- /forgot-box -->

							<div id="signup-box" class="signup-box widget-box no-border">
								<div class="widget-body">
									<div class="widget-main">
										<h4 class="header green lighter bigger">
											<i class="icon-group blue"></i> 新用户注册
										</h4>

										<div class="space-6"></div>
										<p>请选择您要注册的身份:</p>

										<form name="regesiterform" action="AddUsersServlet"
											method="post">
											<fieldset>
												<label class="block clearfix">

													<tr>
														<select style="WIDTH: 290px" height="50" name="roletype">
															<option value="2" name="role">普通用户</option>
															<option value="3" name="role">商户</option>
															<option value="1" name="role">管理人员</option>
														</select>
													</tr>
													<div class="space-4"></div> <span
													class="block input-icon input-icon-right"> <input
														type="email" class="form-control" placeholder="Email"
														name="email" /> <i class="icon-envelope"></i>
												</span>
												</label> <label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														type="text" class="form-control" placeholder="用户名"
														name="username" /> <i class="icon-user"></i>
												</span>
												</label> <label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														type="password" class="form-control" placeholder="密码"
														name="password" /> <i class="icon-lock"></i>
												</span>
												</label> <label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														type="password" class="form-control" placeholder="确认密码"
														name="password1" /> <i class="icon-retweet"></i>
												</span>
												</label> <label class="block"> 
												<button type="button" class="width-30 pull-left btn btn-sm"
												  onclick="check()">
														<i class="icon-refresh"></i>是否重复
													</button>
												</label>

												<div class="space-24"></div>

												<div class="clearfix">
													<button type="reset" class="width-30 pull-left btn btn-sm">
														<i class="icon-refresh"></i> 重置
													</button>

													<button type="submit"
														class="width-65 pull-right btn btn-sm btn-success">
														注册 <i class="icon-arrow-right icon-on-right"></i>
													</button>
												</div>
											</fieldset>
										</form>
									</div>

									<div class="toolbar center">
										<a href="#" onclick="show_box('login-box'); return false;"
											class="back-to-login-link"> <i class="icon-arrow-left"></i>
											返回登录
										</a>
									</div>
								</div>
								<!-- /widget-body -->
							</div>
							<!-- /signup-box -->
						</div>
						<!-- /position-relative -->
					</div>
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->
		</div>
	</div>
	<!-- basic scripts -->
	<!--[if !IE]> -->
	<script type="text/javascript">
		window.jQuery
				|| document
						.write("<script src='assets/js/jquery-2.0.3.min.js'>"
								+ "<"+"/script>");
	</script>
	<!-- <![endif]-->
	<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='assets/js/jquery-1.10.2.min.js'>"+"<"+"/script>");
</script>
<![endif]-->

	<script type="text/javascript">
		if ("ontouchend" in document)
			document
					.write("<script src='assets/js/jquery.mobile.custom.min.js'>"
							+ "<"+"/script>");
	</script>

	<!-- inline scripts related to this page -->

	<script type="text/javascript">
		function show_box(id) {
			jQuery('.widget-box.visible').removeClass('visible');
			jQuery('#' + id).addClass('visible');
		}
	</script>


</body>
</html>

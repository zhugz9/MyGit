<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>登录</title>
<link rel="stylesheet" type="text/css" href="statics/css/style.css" />
<link rel="stylesheet" type="text/css"
	href="statics/css/shopping-mall-index.css" />
<link rel="stylesheet" type="text/css"
	href="statics/css/zhonglingxm2.css" />
<style type="">
.accCheck,.pwdCheck,.yzmCheck {
	display: none;
	color: red;
	font-size: 12px;
}
</style>
<script type="text/javascript" src="statics/js/jQuery.js"></script>
<script type="text/javascript" src="statics/js/zhonglin.js"></script>
<script type="text/javascript">
	$(function() {
		var accPD = false;
		var pwdPD = false;
		var yzmPD = false;

		$("#loginBtn").attr("disabled", "disabled");
		$("#loginBtn").css("background", "gray");

		$("#loginBtn").click(function() {
			$("#LoginForm").submit();

		});
		
		$("input[name='nickName']").blur(function(){
			var nickName = $(this).val();
			if (nickName == "") {
				$(".accCheck").css("display", "inline-block");
				$(".accCheck").html("用户名不能为空");
				accPD = false;
				if (accPD && pwdPD && yzmPD) {
					$("#loginBtn").removeAttr("disabled");
					$("#loginBtn").css("background", "#63A61D");
				} else {
					$("#loginBtn").attr("disabled", "disabled");
					$("#loginBtn").css("background", "gray");
				}
				return;
			} else {
				$(".accCheck").css("display", "none");
			}

			var uPattern = /^[a-zA-Z0-9_-]{4,16}$/;
			if (!uPattern.test(nickName)) {
				$(".accCheck").css("display", "inline-block");
				$(".accCheck").html("非法的用户名");
				accPD = false;
				return;
			}

			$.ajax({
				url : "selectUserForuName",
				type : "post",
				data : {
					nick_name : $(this).val()
				},
				error : function(err) {
					alert("错误");
				},
				success : function(data) {
					var num = $.parseJSON(data.data);
					if (num == 0) {
						$(".accCheck").html("用户不存在");
						accPD = false;
						$(".accCheck").css("display", "inline-block");
						if (accPD && pwdPD && yzmPD) {
							$("#loginBtn").removeAttr("disabled");
							$("#loginBtn").css("background", "#63A61D");
						} else {
							$("#loginBtn").attr("disabled", "disabled");
							$("#loginBtn").css("background", "gray");
						}
					}
					if (num > 0) {
						accPD = true;
					}
					if (accPD && pwdPD && yzmPD) {
						$("#loginBtn").removeAttr("disabled");
						$("#loginBtn").css("background", "#63A61D");
					} else {
						$("#loginBtn").attr("disabled", "disabled");
						$("#loginBtn").css("background", "gray");
					}
				}
			});
		});

		$("input[name='password']").bind("input propertychange",function(event){
			var password = $(this).val();
			
			if (password == "") {
				$(".pwdCheck").html("密码不能为空");
				pwdPD = false;
				$(".pwdCheck").css("display", "inline-block");
				return;
				if (accPD && pwdPD && yzmPD) {
					$("#loginBtn").removeAttr("disabled");
					$("#loginBtn").css("background", "#63A61D");
				} else {
					$("#loginBtn").attr("disabled", "disabled");
					$("#loginBtn").css("background", "gray");
				}
			} else {
				var pPattern = /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,16}$/;
				if(!pPattern.test(password)){
					pwdPD=false;
					$(".pwdCheck").html("密码由6-16的字母、数字、符号组成");
					$(".pwdCheck").css("display", "inline-block");
					return;
				}
				
				pwdPD = true;
				$(".pwdCheck").css("display", "none");
			}

			if (accPD && pwdPD && yzmPD) {
				$("#loginBtn").removeAttr("disabled");
				$("#loginBtn").css("background", "#63A61D");
			} else {
				$("#loginBtn").attr("disabled", "disabled");
				$("#loginBtn").css("background", "gray");
			}
		});

		$("input[name='YZM']").bind("input propertychange",function(event){
			var yzm = $(this).val();
			if (yzm == "") {
				$(".yzmCheck").html("验证码不能为空");
				yzmPD = false;
				$(".yzmCheck").css("display", "inline-block");
				if (accPD && pwdPD && yzmPD) {
					$("#loginBtn").removeAttr("disabled");
					$("#loginBtn").css("background", "#63A61D");
				} else {
					$("#loginBtn").attr("disabled", "disabled");
					$("#loginBtn").css("background", "gray");
				}
				return;
			} else {
				$(".yzmCheck").css("display", "none");
			}
			
			if(yzm.length<6){
				return;
			}

			$.ajax({
				url : "checkYZM",
				type : "post",
				data : {
					YZM : yzm
				},
				error : function(err) {
					alert("错误");
				},
				success : function(data) {
					var num = $.parseJSON(data.data);
					if (num == "1") {
						$(".yzmCheck").css("display", "none");
						yzmPD = true;
						var zhuan=$("input[name='zhuan']").val();
						if(zhuan=="1"){
							accPD=true;
							pwdPD=true;
						}
						if (accPD && pwdPD && yzmPD) {
							$("#loginBtn").removeAttr("disabled");
							$("#loginBtn").css("background", "#63A61D");
						} else {
							$("#loginBtn").attr("disabled", "disabled");
							$("#loginBtn").css("background", "gray");
						}
					}
					if (num == "0") {
						$(".yzmCheck").html("验证码输入有误！");
						$(".yzmCheck").css("display", "inline-block");
						yzmPD = false;
						if (accPD && pwdPD && yzmPD) {
							$("#loginBtn").removeAttr("disabled");
							$("#loginBtn").css("background", "#63A61D");
						} else {
							$("#loginBtn").attr("disabled", "disabled");
							$("#loginBtn").css("background", "gray");
						}
					}
				}
			});
		});

	});
	function myRefersh(e) {
		const
		source = e.src;
		var index = source.indexOf("?");
		if (index > -1) { // 如果找到了 ?  就进入内部  
			var s = source.substring(0, index);
			var date = new Date(); // 创建一个 Date 对象的 一个 实例  
			var time = date.getTime(); // 从 新创建的 Date 对象的实例中获得该时间对应毫秒值  
			e.src = s + "?time=" + time;
		} else {
			var date = new Date();
			e.src = source + "?time=" + date.getTime();
		}
	}
</script>
</head>
<body>

	<div class="sign-logo w1200">
		<h1 class="zl-h11">
			<a href="GoToHomePageAndGetHomePageData" title="宅客微购"><img src="statics/images/zl2-01.gif" /></a>
		</h1>
	</div>

	<div class="sign-con w1200">
		<img src="statics/images/logn-tu.gif" class="sign-contu f-l" />
		<div class="sign-ipt f-l"
			style="height:430px; margin-top: -50px; padding: 30px 0 0 45px;">
			
			<c:if test="${loginErr!=null }">
				<h3 style="color:red">账号或密码错误！</h3>				
			</c:if>
			<form action="doLogin" id="LoginForm">
				<p>
					登录名&nbsp;&nbsp;&nbsp;<span class="accCheck"></span>
				</p>
				<input type="hidden" value="${zhuan}" name="zhuan"/>
				<c:if test="${acc!=null}">
					<input type="text" name="nickName" placeholder="登录名"
						value="${acc }" />
				</c:if>
				<c:if test="${acc==null}">
					<input type="text" name="nickName" placeholder="登录名" />
				</c:if>
				<p>
					密码&nbsp;&nbsp;&nbsp;<span class="pwdCheck"></span>
				</p>
				<c:if test="${pwd!=null}">
					<input type="password" name="password" placeholder="请输入密码"
						value="${pwd }" />
					<br />
				</c:if>
				<c:if test="${pwd==null}">
					<input type="password" name="password" placeholder="请输入密码" />
					<br />
				</c:if>
				<div class="psw psw3">
					<p class="psw-p1">
						验证码&nbsp;&nbsp;&nbsp;<span class="yzmCheck"></span>
					</p>
					<input type="text" name="YZM" maxlength="6" placeholder="请输入验证码" />
					<span class="Reyzm" style="color:red"></span>
				</div>
				<br />
				<div class="yanzhentu">
					<div class="yz-tu f-l">
						<img src="getYZM" style="border:1px solid;" id="YZMImg"
							onclick="myRefersh(this)" />
						<p class="f-l" style="font-size:14px">看不清？点击图片更换</p>
					</div>
					<div style="clear:both;"></div>
				</div>
				<button class="slig-btn" type="button" id="loginBtn">登录</button>
			</form>
			<p>
				还没有账号？请<a href="Register">注册</a><a href="RetrievePwd" class="wj">忘记密码？</a>
			</p>
			<!-- <div class="sign-qx">
				<a href="#" class="f-r"><img
					src="statics/images/sign-xinlan.gif" /></a> <a href="#" class="qq f-r"><img
					src="statics/images/sign-qq.gif" /></a>
				<div style="clear:both;"></div>
			</div> -->
		</div>
		<div style="clear:both;"></div>
	</div>

	<!--底部一块-->
	<div class="footer-box">
		<ul class="footer-info1 w1200">
			<li>
				<div class="ft-tu1">
					<a href="JavaScript:;"><img src="statics/images/zl2-86.gif" /></a>
				</div>
				<h3>
					<a href="JavaScript:;">号码保障</a>
				</h3>
				<P>所有会员，手机短信验证</P>
			</li>
			<li>
				<div class="ft-tu1">
					<a href="JavaScript:;"><img src="statics/images/zl2-87.gif" /></a>
				</div>
				<h3>
					<a href="JavaScript:;">6*12小时客服</a>
				</h3>
				<P>有任何问题随时免费资讯</P>
			</li>
			<li>
				<div class="ft-tu1">
					<a href="JavaScript:;"><img src="statics/images/zl2-88.gif" /></a>
				</div>
				<h3>
					<a href="JavaScript:;">专业专攻</a>
				</h3>
				<P>我们只专注于建筑行业的信息服务</P>
			</li>
			<li>
				<div class="ft-tu1">
					<a href="JavaScript:;"><img src="statics/images/zl2-89.gif" /></a>
				</div>
				<h3>
					<a href="JavaScript:;">注册有礼</a>
				</h3>
				<P>随时随地注册有大礼包</P>
			</li>
			<li>
				<div class="ft-tu1">
					<a href="JavaScript:;"><img src="statics/images/zl2-90.gif" /></a>
				</div>
				<h3>
					<a href="JavaScript:;">值得信赖</a>
				</h3>
				<P>专业的产品，专业的团队</P>
			</li>
			<div style="clear:both;"></div>
		</ul>
		<div class="footer-info2 w1200">
			<div class="ft-if2-left f-l">
				<dl>
					<dt>
						<a href="#">新手上路</a>
					</dt>
					<dd>
						<a href="#">购物流程</a> <a href="#">在线支付</a> <a href="#">投诉与建议</a>
					</dd>
				</dl>
				<dl>
					<dt>
						<a href="#">配送方式</a>
					</dt>
					<dd>
						<a href="#">货到付款区域</a> <a href="#">配送费标准</a>
					</dd>
				</dl>
				<dl>
					<dt>
						<a href="#">购物指南</a>
					</dt>
					<dd>
						<a href="#">订购流程</a> <a href="#">购物常见问题</a>
					</dd>
				</dl>
				<dl>
					<dt>
						<a href="#">售后服务</a>
					</dt>
					<dd>
						<a href="#">售后服务保障</a> <a href="#">退换货政策总则</a> <a href="#">自营商品退换细则</a>
					</dd>
				</dl>
				<div style="clear:both;"></div>
			</div>
			<div class="ft-if2-right f-r">
				<h3>400-2298-223</h3>
				<p>周一至周日 9:00-24:00</p>
				<p>（仅收市话费）</p>
			</div>
			<div style="clear:both;"></div>
		</div>
		<div class="footer-info3 w1200">
			<p>
				<a href="#">免责条款</a><span>|</span> <a href="#">隐私保护</a><span>|</span>
				<a href="#">咨询热点</a><span>|</span> <a href="#">联系我们</a><span>|</span>
				<a href="#">公司简介</a>
			</p>
			<p>
				<a href="#">沪ICP备13044278号</a><span>|</span> <a href="#">合字B1.B2-20130004</a><span>|</span>
				<a href="#">营业执照</a><span>|</span> <a href="#">互联网药品信息服务资格证</a><span>|</span>
				<a href="#">互联网药品交易服务资格证</a>
			</p>
			<div class="ft-if3-tu1">
				<a href="#"><img src="statics/images/zl2-91.gif" /></a> <a href="#"><img
					src="statics/images/zl2-92.gif" /></a> <a href="#"><img
					src="statics/images/zl2-93.gif" /></a>
			</div>
		</div>
	</div>
</body>
</html>
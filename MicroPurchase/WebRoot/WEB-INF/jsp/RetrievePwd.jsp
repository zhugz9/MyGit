<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>找回密码</title>
<link rel="stylesheet" type="text/css" href="statics/css/style.css" />
<link rel="stylesheet" type="text/css"
	href="statics/css/shopping-mall-index.css" />
<style>
.nickNameCheck,.yzmCheck,.pwdCheck,.rpwdCheck {
	display: none;
	color: red;
	font-size: 12px;
}
</style>
<script type="text/javascript" src="statics/js/jQuery.js"></script>
<script type="text/javascript" src="statics/js/zhonglin.js"></script>
<script type="text/javascript" src="statics/js/zhongling2.js"></script>
<script type="text/javascript">
	var setTime;
	$(function() {
		/* 还未做最后一步的提交 */
		var nickNamePD = false;
		var yzmPD = false;
		var pwdPD = false;
		var rpwdPD = false;
		var time=60;
		
		
		$("#getPwdBtn").click(function(){
			$("#getPwdForm").submit();
		});

		$("#getPwdBtn").css("background", "gray");
		$("#getPwdBtn").attr("disabled", "disabled");

		$(".getYZM").css("background", "gray");
		$(".getYZM").attr("disabled", "disabled");

		$("input[name='password']").blur(function() {
			var pwd = $(this).val();
			if (pwd == "") {
				$(".pwdCheck").css("display", "inline-block");
				$(".pwdCheck").html("密码不能为空");
				pwdPD = false;
				return;
			}
			var pPattern = /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,16}$/;
			if (pPattern.test(pwd)) {
				$(".pwdCheck").css("display", "none");
				pwdPD = true;
			} else {
				$(".pwdCheck").css("display", "inline-block");
				$(".pwdCheck").html("密码由6-16的字母、数字、符号组成");
				pwdPD = false;
			}
			
			if(nickNamePD && yzmPD && pwdPD && rpwdPD){
				$("#getPwdBtn").css("background", "#63A61D");
				$("#getPwdBtn").removeAttr("disabled");
			}else{
				$(".getPwdBtn").css("background", "gray");
				$(".getPwdBtn").attr("disabled", "disabled");
			}
		});
		
		$("input[name='rpwd']").blur(function(){
			var pwd=$("input[name='password']").val();
			var rpwd=$(this).val();
			if(pwd==""){
				$(".rpwdCheck").html("请先输入密码");
				$(".rpwdCheck").css("display", "inline-block");
				rpwdPD=false;
				return;
			}
			
			if(pwd!=rpwd){
				$(".rpwdCheck").html("两次密码输入不一致");
				$(".rpwdCheck").css("display", "inline-block");
				rpwdPD=false;
				return;
			}else{
				rpwdPD=true;
				$(".rpwdCheck").css("display", "none");
			}
			
			if(nickNamePD && yzmPD && pwdPD && rpwdPD){
				$("#getPwdBtn").css("background", "#63A61D");
				$("#getPwdBtn").removeAttr("disabled");
			}else{
				$(".getPwdBtn").css("background", "gray");
				$(".getPwdBtn").attr("disabled", "disabled");
			}
		});

		$("input[name='yzm']").blur(function() {
			var pYZM = $(this).val();
			var bcYZM = $(".bcYZM").val();

			if (pYZM == "") {
				$(".yzmCheck").html("验证码不能为空");
				$(".yzmCheck").css("display", "inline-block");
				return;
			}
			//alert(pYZM+"---"+bcYZM);
			if (pYZM != bcYZM) {
				$(".yzmCheck").html("验证码输入错误");
				$(".yzmCheck").css("display", "inline-block");
				yzmPD = false;
				return;
			}
			if (pYZM == bcYZM) {
				$(".yzmCheck").css("display", "none");
				yzmPD = true;
			}
			
			if(nickNamePD && yzmPD && pwdPD && rpwdPD){
				$("#getPwdBtn").css("background", "#63A61D");
				$("#getPwdBtn").removeAttr("disabled");
			}else{
				$(".getPwdBtn").css("background", "gray");
				$(".getPwdBtn").attr("disabled", "disabled");
			}
		});
		
		$(".getYZM").click(function() {
			$.ajax({
				url : "phoneYZM",
				type : "get",
				data : {
					phone : $("input[name='phone']").val()
				},
				error : function(err) {
					alert("错误");
				},
				success : function(data) {
					var code = $.parseJSON(data.data);
					$(".bcYZM").val(code);
					//60s倒计时启动   按钮变为不可用
					$(".getYZM").css("background", "gray");
					$(".getYZM").attr("disabled", "disabled");
					$(".getYZM").html("请"+time+"秒后再试");
					setTime = setInterval(function(){
		                if(time==0){
		                    clearInterval(setTime);
		                    time=60;
		                    $(".getYZM").html("获取短信验证码");
		                    $(".getYZM").css("background", "#63A61D");
							$(".getYZM").removeAttr("disabled");
		                    return;
		                }
		                time--;
		                $(".getYZM").html("请"+time+"秒后再试");
		            },1000);
				}
			});
		});

		$("input[name='nickName']").blur(function() {
			var nickName = $(this).val();
			if (nickName == "") {
				$(".nickNameCheck").html("登录名不能为空");
				$("input[name='phone']").val("");
				$(".nickNameCheck").css("display", "inline-block");
				$(".getYZM").css("background", "gray");
				$(".getYZM").attr("disabled", "disabled");
				nickNamePD = false;
				return;
			} else {
				$(".nickNameCheck").css("display", "none");
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
						$(".nickNameCheck").html("用户不存在");
						$(".nickNameCheck").css("display", "inline-block");
						$("input[name='phone']").val("");
						$(".getYZM").css("background", "gray");
						$(".getYZM").attr("disabled", "disabled");
						nickNamePD = false;
					}
					if (num > 0) {
						$(".nickNameCheck").css("display", "none");
						nickNamePD = true;

						$.ajax({
							url : "getPhone",
							type : "post",
							data : {
								nickName : nickName
							},
							error : function(err) {
								alert("错误");
							},
							success : function(data) {
								$("input[name='phone']").val(data.data);
								$(".getYZM").css("background", "#63A61D");
								$(".getYZM").removeAttr("disabled");
								if(nickNamePD && yzmPD && pwdPD && rpwdPD){
									$("#getPwdBtn").css("background", "#63A61D");
									$("#getPwdBtn").removeAttr("disabled");
								}else{
									$(".getPwdBtn").css("background", "gray");
									$(".getPwdBtn").attr("disabled", "disabled");
								}
							}
						});
					}
				}
			});
			
			if(nickNamePD && yzmPD && pwdPD && rpwdPD){
				$("#getPwdBtn").css("background", "#63A61D");
				$("#getPwdBtn").removeAttr("disabled");
			}else{
				$(".getPwdBtn").css("background", "gray");
				$(".getPwdBtn").attr("disabled", "disabled");
			}
		});

	});
</script>

</head>
<body>
	<!--header-->
	<div class="zl-header">
		<%@ include file="title.jsp"%>
	</div>

	<!--logo search weweima-->
	<div class="logo-search w1200">
		<div class="logo-box f-l">
			<div class="logo f-l">
				<a href="GoToHomePageAndGetHomePageData" title="中林logo"><img src="statics/images/zl2-01.gif" /></a>
			</div>
			<div class="shangjia f-l">
				<a href="JavaScript:;" class="shangjia-a1">[ 切换城市 ]</a> <a
					href="JavaScript:;" class="shangjia-a2">商家入口</a>
				<div class="select-city">
					<div class="sl-city-top">
						<p class="f-l">切换城市</p>
						<a class="close-select-city f-r" href="JavaScript:;"> <img
							src="statics/images/close-select-city.gif" />
						</a>
					</div>
					<div class="sl-city-con">
						<p>西北</p>
						<dl>
							<dt>重庆市</dt>
							<dd>
								<a href="JavaScript:;">长寿区</a> <a href="JavaScript:;">巴南区</a> <a
									href="JavaScript:;">南岸区</a> <a href="JavaScript:;">九龙坡区</a> <a
									href="JavaScript:;">沙坪坝区</a> <a href="JavaScript:;">北碚</a> <a
									href="JavaScript:;">江北区</a> <a href="JavaScript:;">渝北区</a> <a
									href="JavaScript:;">大渡口区</a> <a href="JavaScript:;">渝中区</a> <a
									href="JavaScript:;">万州</a> <a href="JavaScript:;">武隆</a> <a
									href="JavaScript:;">晏家</a> <a href="JavaScript:;">长寿湖</a> <a
									href="JavaScript:;">云集</a> <a href="JavaScript:;">华中</a> <a
									href="JavaScript:;">林封</a> <a href="JavaScript:;">双龙</a> <a
									href="JavaScript:;">石回</a> <a href="JavaScript:;">龙凤呈祥</a> <a
									href="JavaScript:;">朝天门</a> <a href="JavaScript:;">中华</a> <a
									href="JavaScript:;">玉溪</a> <a href="JavaScript:;">云烟</a> <a
									href="JavaScript:;">红塔山</a> <a href="JavaScript:;">真龙</a> <a
									href="JavaScript:;">天子</a> <a href="JavaScript:;">娇子</a>
							</dd>
							<div style="clear:both;"></div>
						</dl>
						<dl>
							<dt>新疆</dt>
							<dd>
								<a href="JavaScript:;">齐乌鲁木</a> <a href="JavaScript:;">昌吉</a> <a
									href="JavaScript:;">巴音</a> <a href="JavaScript:;">郭楞</a> <a
									href="JavaScript:;">伊犁</a> <a href="JavaScript:;">阿克苏</a> <a
									href="JavaScript:;">喀什</a> <a href="JavaScript:;">哈密</a> <a
									href="JavaScript:;">克拉玛依</a> <a href="JavaScript:;">博尔塔拉</a> <a
									href="JavaScript:;">吐鲁番</a> <a href="JavaScript:;">和田</a> <a
									href="JavaScript:;">石河子</a> <a href="JavaScript:;">克孜勒苏</a> <a
									href="JavaScript:;">阿拉尔</a> <a href="JavaScript:;">五家渠</a> <a
									href="JavaScript:;">图木舒克</a> <a href="JavaScript:;">库尔勒</a>
							</dd>
							<div style="clear:both;"></div>
						</dl>
						<dl>
							<dt>甘肃</dt>
							<dd>
								<a href="JavaScript:;">兰州</a> <a href="JavaScript:;">天水</a> <a
									href="JavaScript:;">巴音</a> <a href="JavaScript:;">白银</a> <a
									href="JavaScript:;">庆阳</a> <a href="JavaScript:;">平凉</a> <a
									href="JavaScript:;">酒泉</a> <a href="JavaScript:;">张掖</a> <a
									href="JavaScript:;">武威</a> <a href="JavaScript:;">定西</a> <a
									href="JavaScript:;">金昌</a> <a href="JavaScript:;">陇南</a> <a
									href="JavaScript:;">临夏</a> <a href="JavaScript:;">嘉峪关</a> <a
									href="JavaScript:;">甘南</a>
							</dd>
							<div style="clear:both;"></div>
						</dl>
						<dl>
							<dt>宁夏</dt>
							<dd>
								<a href="JavaScript:;">银川</a> <a href="JavaScript:;">吴忠</a> <a
									href="JavaScript:;">石嘴山</a> <a href="JavaScript:;">中卫</a> <a
									href="JavaScript:;">固原</a>
							</dd>
							<div style="clear:both;"></div>
						</dl>
						<dl>
							<dt>青海</dt>
							<dd>
								<a href="JavaScript:;">西宁</a> <a href="JavaScript:;">海西</a> <a
									href="JavaScript:;">海北</a> <a href="JavaScript:;">果洛</a> <a
									href="JavaScript:;">海东</a> <a href="JavaScript:;">黄南</a> <a
									href="JavaScript:;">玉树</a> <a href="JavaScript:;">海南</a>
							</dd>
							<div style="clear:both;"></div>
						</dl>
					</div>
				</div>
			</div>
			<div style="clear:both;"></div>
		</div>
		<div class="erweima f-r">
			<a href="JavaScript:;"><img src="statics/images/zl2-04.gif" /></a>
		</div>
		<div class="search f-r">
			<div class="search-info">
				<input type="text" placeholder="请输入商品名称" />
				<button>搜索</button>
				<div style="clear:both;"></div>
			</div>
			<ul class="search-ul">
				<li><a href="JavaScript:;">绿豆</a></li>
				<li><a href="JavaScript:;">大米</a></li>
				<li><a href="JavaScript:;">驱蚊</a></li>
				<li><a href="JavaScript:;">洗面奶</a></li>
				<li><a href="JavaScript:;">格力空调</a></li>
				<li><a href="JavaScript:;">洗发</a></li>
				<li><a href="JavaScript:;">护发</a></li>
				<li><a href="JavaScript:;">葡萄</a></li>
				<li><a href="JavaScript:;">脉动</a></li>
				<li><a href="JavaScript:;">海鲜</a></li>
				<li><a href="JavaScript:;">水产</a></li>
				<div style="clear:both;"></div>
			</ul>
		</div>
		<div style="clear:both;"></div>
	</div>

	<!--内容开始-->
	<form action="getOldPwd" id="getPwdForm">
		<div class="password-con">
			<div class="psw">
				<p class="psw-p1">登录名</p>
				<input type="text" name="nickName" placeholder="请输入登录名" /> <span
					class="nickNameCheck "></span>
			</div>
			<div class="psw psw2">
				<p class="psw-p1">手机号/邮箱</p>
				<input type="text" name="phone" disabled="disabled"
					placeholder="手机/邮箱" />
				<button type="button" class="getYZM">获取短信验证码</button>
			</div>
			<div class="psw">
				<p class="psw-p1">验证码</p>
				<input type="text" name="yzm" placeholder="请输入验证码"
					onkeypress="return event.keyCode>=48&&event.keyCode<=57"
					maxlength="6" /> <input type="hidden" class="bcYZM" /> <span
					class="yzmCheck"></span>
			</div>
			<div class="psw">
				<p class="psw-p1">输入密码</p>
				<input type="text" name="password" placeholder="请输入密码" /> <span
					class="pwdCheck"></span>
			</div>
			<div class="psw">
				<p class="psw-p1">确认密码</p>
				<input type="text" name="rpwd" placeholder="请再次确认密码" />
				<span class="rpwdCheck"></span>
			</div>
			<button class="psw-btn" id="getPwdBtn">找回密码</button>
		</div>	
	</form>
	

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

<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>个人资料</title>
<link rel="stylesheet" type="text/css" href="statics/css/style.css" />
<link rel="stylesheet" type="text/css" href="statics/css/shopping-mall-index.css" />
<script type="text/javascript" src="statics/js/jQuery.js"></script>
<script type="text/javascript" src="statics/js/zhonglin.js"></script>
<script type="text/javascript" src="statics/js/zhongling2.js"></script>
<style>
	
</style>
<script type="text/javascript">
		var setTime;
	   $(function(){
	   		var time=60;
	   		//密码显示或隐藏
	   		$(".showPwd").hide();
	   		var sOh=1;
	   		//input是否可选
	   		$(".dis").attr("disabled","disabled");
	   		$(".dis_a").css("display","none");
	   		$(".pwdDiv").css("display","none");
	   		$(".yzmBtn").css("display","none");
	   		$(".btnSub").css("display","none");
	   		$(".disBtn").css("display","none");
	   		$(".yzmhide").css("display","none");
	   		//判断
	   		var unamePD=true;
	   		var agePD=true;
	   		var pwdPD=true;
	   		var yzmPD=false;
	   		$("#subBtn").attr("disabled","disabled");
	   		$("#subBtn").css("background","gray");
	   		
	   		//各种判断
	   		$("input[name='uname']").bind("input propertychange",function(event){
	   			var uname=$(this).val();
	   			if(uname==null){
	   				unamePD=false;
	   			}else{
	   				unamePD=true;
	   			}
	   			if(unamePD && agePD && pwdPD && yzmPD){
	   				$("#subBtn").removeAttr("disabled");
	   				$("#subBtn").css("background","#63A61D");
	   			}else{
	   				$("#subBtn").attr("disabled","disabled");
	   				$("#subBtn").css("background","gray");
	   			}
	   		});
	   		$("input[name='age']").bind("input propertychange",function(event){
	   			var age=$(this).val();
	   			if(age==null){
	   				agePD=false;
	   			}else{
	   				agePD=true;
	   			}
	   			if(unamePD && agePD && pwdPD && yzmPD){
	   				$("#subBtn").removeAttr("disabled");
	   				$("#subBtn").css("background","#63A61D");
	   			}else{
	   				$("#subBtn").attr("disabled","disabled");
	   				$("#subBtn").css("background","gray");
	   			}
	   		});
	   		$("input[name='password']").bind("input propertychange",function(event){
	   			var password=$(this).val();
	   			if(password==""){
	   				$(".sOhBtn").attr("disabled","disabled");
	   				$(".sOhBtn").css("background","gray");
	   				pwdPD=false;
	   			}else{
	   				$("input[name='rpwd']").val(password);
	   				$(".sOhBtn").removeAttr("disabled");
	   				$(".sOhBtn").css("background","#63A61D");
	   				pwdPD=true;
	   			}
	   			if(unamePD && agePD && pwdPD && yzmPD){
	   				$("#subBtn").removeAttr("disabled");
	   				$("#subBtn").css("background","#63A61D");
	   			}else{
	   				$("#subBtn").attr("disabled","disabled");
	   				$("#subBtn").css("background","gray");
	   			}
	   		});
	   		$("input[name='yzm']").bind("input propertychange",function(event){
	   			var yzm=$(this).val();
	   			if(yzm=="" || yzm.length<6){
	   				yzmPD=false;
	   			}else{
	   				yzmPD=true;
	   			}
	   			if(unamePD && agePD && pwdPD && yzmPD){
	   				$("#subBtn").removeAttr("disabled");
	   				$("#subBtn").css("background","#63A61D");
	   			}else{
	   				$("#subBtn").attr("disabled","disabled");
	   				$("#subBtn").css("background","gray");
	   			}
	   		});
	   		
	   		//手机验证码
	   		$(".disBtn").click(function(){
				$.ajax({
				url : "phoneYZM",
				type : "get",
				data :{
					phone:$("input[name='phone']").val()
				},
				error:function(err){
					alert("系统错误，请稍后再试");
				},
				success:function(data) {
					var code=$.parseJSON(data.data);
					$("input[name='BCYZM']").val(code);
					//60s倒计时启动   按钮变为不可用
					$(".disBtn").css("background", "gray");
					$(".disBtn").attr("disabled", "disabled");
					$(".disBtn").html("请"+time+"秒后再试");
					setTime = setInterval(function(){
			            if(time==0){
			                clearInterval(setTime);
			                time=60;
			                $(".disBtn").html("获取短信验证码");
			                $(".disBtn").css("background", "#63A61D");
							$(".disBtn").removeAttr("disabled");
			                return;
			            }
			            time--;
			            $(".disBtn").html("请"+time+"秒后再试");
			        },1000);
				}
			});
			}); 
	   		
	   		//点击开始修改用户信息
	   		$("#xiugai").click(function(){
	   			$(".dis").removeAttr("disabled");
		   		$(".dis_a").css("display","block");
		   		$(".pwdDiv").css("display","block");
		   		$(".yzmBtn").css("display","block");
		   		$(".btnSub").css("display","block");
		   		$(".disBtn").css("display","block");
		   		$(".yzmhide").css("display","block");
		   		$("input[name='phone']").attr("disabled","disabled");
		   		$(this).html("&nbsp;&nbsp;&nbsp;请修改/完善您的用户信息");
	   		});
	   		
	   		$(".sOhBtn").click(function(){
	   			if(sOh%2!=0){
	   				$(".showPwd").show();
					$(".hidePwd").hide();
					$(this).html("隐藏密码");	
	   			}else{
	   				$(".showPwd").hide();
					$(".hidePwd").show();
					$(this).html("显示密码");		
	   			}
				sOh++;
	   		});
	   });
</script>
</head>

<body style="position:relative;">

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
            	<a href="JavaScript:;" class="shangjia-a1">[ 切换城市 ]</a>
            	<a href="JavaScript:;" class="shangjia-a2">商家入口</a>
                <div class="select-city">
        	<div class="sl-city-top">
            	<p class="f-l">切换城市</p>
                <a class="close-select-city f-r" href="JavaScript:;">
                	<img src="statics/images/close-select-city.gif" />
                </a>
            </div>
            <div class="sl-city-con">
						<c:forEach items="${cities }" var="citie">
							<dl>
								<dt>${citie.cname }</dt>
								<dd>
									<c:forEach items="${citie.cityList }" var="cityList">
										<a href="JavaScript:;">${cityList.cname }</a>
									</c:forEach>
								</dd>
							</dl>
							<div style="clear:both;"></div>
						</c:forEach>
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

	<!--nav-->
    <div class="nav-box">
    	<div class="nav-kuai w1200">
        	<div class="nav-kuaijie yjp-hover1 f-l">
				<a href="JavaScript:;" class="kj-tit1">商品分类快捷</a>
				<div class="kuaijie-box yjp-show1" style="display:none;">
					<!-- 此处开始 -->
					<c:forEach items="${commodities }" var="c">
						<div class="kuaijie-info">
							<dl class="kj-dl1">
								<dt style="text-align: center;">
									<a href="#">${c.tname }</a> <span class="tidspan"
										style="display:none; ">${c.tid }</span>
								</dt>
							<div class="kuaijie-con"></div>
						</div>
					</c:forEach>
				</div>
			</div>

            <ul class="nav-font f-l">
            	<li><a href="#">在线商城</a></li>
            	<li><a href="#">餐饮娱乐</a></li>
            	<li><a href="#">家政服务</a></li>
            	<li><a href="#">美容美发</a></li>
            	<li><a href="#">教育培训</a></li>
            	<li><a href="#">汽车房产</a></li>
            	<li><a href="#">家居建材</a></li>
            	<li><a href="#">二手市场</a><span><img src="statics/images/zl2-05.gif" /></span></li>
                <div style="clear:both;"></div>
            </ul>
            <div style="clear:both;"></div>
        </div>
    </div>
    
    <!--内容开始-->
    <div class="personal w1200">
    	<div class="personal-left f-l">
        	<div class="personal-l-tit">
            	<h3>个人中心</h3>
            </div>
            <ul>
            	<li class="per-li1"><a href="userMessage">消息中心<span>></span></a></li>
            	<li class="current-li per-li2"><a href="userData">个人资料<span>></span></a></li>
            	<li class="per-li3"><a href="userOrder">我的订单<span>></span></a></li>
            	<li class="per-li5"><a href="getAllForUid?uid=${user.uid}">购物车<span>></span></a></li>
            	<li class="per-li6"><a href="userAddress">管理收货地址<span>></span></a></li>
            	<li class="per-li7"><a href="Bookmark">店铺收藏<span>></span></a></li>
            	<li class="per-li8"><a href="getAllOrderForUid?uid=${user.uid}">购买记录<span>></span></a></li>
            	<li class="per-li9"><a href="userBrowseRecords">浏览记录<span>></span></a></li>
            	<li class="per-li10"><a href="user_vipIntegral">会员积分<span>></span></a></li>
            </ul>
        </div>
    	<div class="personal-r f-r">
        	<div class="personal-right">
                <div class="personal-r-tit">
                    <h3>个人资料</h3>
                </div>
                <div class="data-con">
                <a href="javascript:;" class="sc f-l" id="xiugai" style="color:#63A61D; font-size: 20xp;">&nbsp;&nbsp;&nbsp;您可以点此开始修改或完善个人信息</a>
                <br/><br/>
                <form action="updateUser" method="post" enctype="multipart/form-data">
                	<input type="hidden" name="uid" value="${user.uid}" />
                	<div class="dt1">
	                <c:if test="${errorMsg!=null }">
	                	<h3 style="color:red">&nbsp;&nbsp;${errorMsg }</h3>
	                </c:if>
                    	<p class="f-l">当前头像：</p>
                        <div class="touxiang f-l">
                        	<div class="tu f-l">
                            	<a href="#">
                                	<img src="${user.headPortrait }" style="background-color: white;" />
                                    <input type="file" name="upFile" id="" class="img1 dis" />
                                </a>
                            </div>
                            <a href="JavaScript:;" class="sc f-l dis_a" shangchuang="">上传头像</a>
                            <div style="clear:both;"></div>
                        </div>
                        <div style="clear:both;"></div>
                    </div>
                    <div class="dt1">
                    	<p class="dt-p f-l">登录名：</p>
                        <input type="text"  readonly="readonly" style="background-color: #EBEBE4" name="nickName" value="${user.nickName }"  />
                        <div style="clear:both;"></div>
                    </div>
                    <div class="dt1">
                    	<p class="dt-p f-l">昵称：</p>
                        <input type="text" name="uname" class="dis" placeholder="昵称不能为空" value="${user.uname }" />
                        <div style="clear:both;"></div>
                    </div>
                    <div class="dt1 dt2">
                    	<p class="dt-p f-l">性别：</p>
                    	<c:if test="${user.sex=='男' }">
                    		<input type="radio" name="sex" class="dis" checked="checked" value="男"></input><span>男</span>
                        	<input type="radio" name="sex" class="dis" value="女"></input><span>女</span>
                    	</c:if>
                        <c:if test="${user.sex=='女' }">
                        	<input type="radio" name="sex" class="dis" value="男"></input><span>男</span>
                        	<input type="radio" name="sex" class="dis" checked="checked" value="女"></input><span>女</span>
                        </c:if>
                        <div style="clear:both;"></div>
                    </div>
                    <div class="dt1">
                    	<p class="dt-p f-l">年龄：</p>
                        <input type="text" name="age" placeholder="年龄不能为空" onkeyup="value=value.replace(/[^\d]/g,'')" class="dis" value="${user.age }" />
                        <div style="clear:both;"></div>
                    </div>
                    <div class="dt1">
                    	<p class="dt-p f-l">邮箱：</p>
                        <input type="text" name="email" class="dis" value="${user.email }" />
                        <div style="clear:both;"></div>
                    </div>
                    <div class="dt1 dt4 pwdDiv">
                    	<p class="dt-p f-l">密码：</p>
                        <input type="text" name="password" placeholder="密码不能为空" class="showPwd dis" value="${user.password}" />
                        <input type="password" name="rpwd" disabled="disabled" class="hidePwd" value="${user.password }" />
                        <button type="button" class="sOhBtn">显示密码</button>
                        <!-- <iuput type="button" class="sOhBtn" value="显示密码"/> -->
                        <div style="clear:both;"></div>
                    </div>
                    <div class="dt1 dt3">
                    	<p class="dt-p f-l">手机号：</p>
                        <input type="text" name="phone" class="dis" value="${user.phone }" />
                        <button class="disBtn" type="button">获取短信验证码</button>
                        <input type="hidden" name="BCYZM" />
                        <div style="clear:both;"></div>
                    </div>
                    <div class="dt1 yzmhide" >
                    	<p class="dt-p f-l">验证码：</p>
                        <input type="text" maxlength="6" name="yzm" placeholder="请输入验证码" value="" />
                        <div style="clear:both;" class="yzmBtn"></div>
                    </div>
                    <button class="btn-pst btnSub" id="subBtn">保存</button>
                    <br/>
                </form>
                </div>
            </div>
        </div>
        <div style="clear:both;"></div>
    </div>
    
    <!--上传头像弹窗
    <div class="tanchuang">
    	<div class="t-c-bg"></div>
    	<div class="t-c-con">
        	<div class="tc-tit">
            	<h3>上传头像</h3>
                <a href="JavaScript:;" delete=""><img src="statics/images/t-c-del.gif" /></a>
                <div style="clear:both;"></div>
            </div>
            <div class="tc-con">
            	<a href="#"><img src="statics/images/tc-tu.gif" /></a>
                <button>保存头像</button>
            </div>
        </div>
    </div>-->
    
    <!--底部一块-->
    <div class="footer-box">
    	<ul class="footer-info1 w1200">
        	<li>
            	<div class="ft-tu1">
                	<a href="JavaScript:;"><img src="statics/images/zl2-86.gif" /></a>
                </div>
                <h3><a href="JavaScript:;">号码保障</a></h3>
                <P>所有会员，手机短信验证</P>
            </li>
        	<li>
            	<div class="ft-tu1">
                	<a href="JavaScript:;"><img src="statics/images/zl2-87.gif" /></a>
                </div>
                <h3><a href="JavaScript:;">6*12小时客服</a></h3>
                <P>有任何问题随时免费资讯</P>
            </li>
        	<li>
            	<div class="ft-tu1">
                	<a href="JavaScript:;"><img src="statics/images/zl2-88.gif" /></a>
                </div>
                <h3><a href="JavaScript:;">专业专攻</a></h3>
                <P>我们只专注于建筑行业的信息服务</P>
            </li>
        	<li>
            	<div class="ft-tu1">
                	<a href="JavaScript:;"><img src="statics/images/zl2-89.gif" /></a>
                </div>
                <h3><a href="JavaScript:;">注册有礼</a></h3>
                <P>随时随地注册有大礼包</P>
            </li>
        	<li>
            	<div class="ft-tu1">
                	<a href="JavaScript:;"><img src="statics/images/zl2-90.gif" /></a>
                </div>
                <h3><a href="JavaScript:;">值得信赖</a></h3>
                <P>专业的产品，专业的团队</P>
            </li>
            <div style="clear:both;"></div>
        </ul>
    	<div class="footer-info2 w1200">
        	<div class="ft-if2-left f-l">
            	<dl>
                	<dt><a href="6-1服务协议.html">新手上路</a></dt>
                    <dd>
                    	<a href="6-1服务协议.html">购物流程</a>
                    	<a href="6-1服务协议.html">在线支付</a>
                    	<a href="6-1服务协议.html">投诉与建议</a>
                    </dd>
                </dl>
            	<dl>
                	<dt><a href="6-1服务协议.html">配送方式</a></dt>
                    <dd>
                    	<a href="6-1服务协议.html">货到付款区域</a>
                    	<a href="6-1服务协议.html">配送费标准</a>
                    </dd>
                </dl>
            	<dl>
                	<dt><a href="6-1服务协议.html">购物指南</a></dt>
                    <dd>
                    	<a href="6-1服务协议.html">订购流程</a>
                    	<a href="6-1服务协议.html">购物常见问题</a>
                    </dd>
                </dl>
            	<dl>
                	<dt><a href="6-1服务协议.html">售后服务</a></dt>
                    <dd>
                    	<a href="6-1服务协议.html">售后服务保障</a>
                    	<a href="6-1服务协议.html">退换货政策总则</a>
                    	<a href="6-1服务协议.html">自营商品退换细则</a>
                    </dd>
                </dl>
                <div style="clear:both;"></div>
            </div>
        	<div class="ft-if2-right f-r">
            	<h3>400-2298-223</h3>
                <p>周一至周日  9:00-24:00</p>
                <p>（仅收市话费）</p>
            </div>
            <div style="clear:both;"></div>
        </div>
        <div class="footer-info3 w1200">
        	<p>
                <a href="#">免责条款</a><span>|</span>
                <a href="#">隐私保护</a><span>|</span>
                <a href="#">咨询热点</a><span>|</span>
                <a href="#">联系我们</a><span>|</span>
                <a href="#">公司简介</a>
            </p>
        	<p>
            	<a href="#">沪ICP备13044278号</a><span>|</span>
                <a href="#">合字B1.B2-20130004</a><span>|</span>
                <a href="#">营业执照</a><span>|</span>
                <a href="#">互联网药品信息服务资格证</a><span>|</span>
                <a href="#">互联网药品交易服务资格证</a>
            </p>
            <div class="ft-if3-tu1">
            	<a href="#"><img src="statics/images/zl2-91.gif" /></a>
            	<a href="#"><img src="statics/images/zl2-92.gif" /></a>
            	<a href="#"><img src="statics/images/zl2-93.gif" /></a>
            </div>
        </div>
    </div>
</body>
</html>

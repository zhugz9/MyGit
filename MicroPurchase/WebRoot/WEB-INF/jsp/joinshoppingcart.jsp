<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>成功加入购物车</title>
<link rel="stylesheet" type="text/css" href="statics/css/style.css" />
<link rel="stylesheet" type="text/css" href="statics/css/zhongling2.css" />
<script type="text/javascript" src="statics/js/jQuery.js"></script>
<script type="text/javascript" src="statics/js/zhonglin.js"></script>
<script type="text/javascript" src="statics/js/zhongling2.js"></script>
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
				<a href="#" " title="中林logo"><img
					src="statics/images/zl2-01.gif" /></a>
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
							</dl>
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
				<li><a href="#">二手市场</a><span><img
						src="statics/images/zl2-05.gif" /></span></li>
				<div style="clear:both;"></div>
			</ul>
			<div style="clear:both;"></div>
		</div>
	</div>

	<!--内容开始-->
	<div class="zl2-cgjr w1200">
		<div class="zl2-cgjrl f-l">
			<h3>商品已成功加入购物车！</h3>
			<p>商品数量有限，请您尽快下单并付款！</p>
		</div>
		<div class="zl2-cgjrr f-l">
			<a href="getAllForUid?uid=0" class="zl2-goto">去购物车结算</a>
			<p>
				您还可以<a href="GoToHomePageAndGetHomePageData">继续购物</a>
			</p>
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
						<a href="6-1服务协议.html">新手上路</a>
					</dt>
					<dd>
						<a href="6-1服务协议.html">购物流程</a> <a href="6-1服务协议.html">在线支付</a> <a
							href="6-1服务协议.html">投诉与建议</a>
					</dd>
				</dl>
				<dl>
					<dt>
						<a href="6-1服务协议.html">配送方式</a>
					</dt>
					<dd>
						<a href="6-1服务协议.html">货到付款区域</a> <a href="6-1服务协议.html">配送费标准</a>
					</dd>
				</dl>
				<dl>
					<dt>
						<a href="6-1服务协议.html">购物指南</a>
					</dt>
					<dd>
						<a href="6-1服务协议.html">订购流程</a> <a href="6-1服务协议.html">购物常见问题</a>
					</dd>
				</dl>
				<dl>
					<dt>
						<a href="6-1服务协议.html">售后服务</a>
					</dt>
					<dd>
						<a href="6-1服务协议.html">售后服务保障</a> <a href="6-1服务协议.html">退换货政策总则</a>
						<a href="6-1服务协议.html">自营商品退换细则</a>
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


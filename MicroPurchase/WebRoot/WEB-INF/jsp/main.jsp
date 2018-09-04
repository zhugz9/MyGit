<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>中林首页</title>
<link rel="stylesheet" type="text/css" href="statics/css/style.css" />
<link rel="stylesheet" type="text/css"
	href="statics/css/zhonglingxm2.css" />
<script type="text/javascript" src="statics/js/jQuery.js"></script>
<script type="text/javascript" src="statics/js/zhonglin.js"></script>
<script type="text/javascript" src="statics/js/zhongling2.js"></script>
<script type="text/javascript" src="statics/js/main.js"></script>
<script type="text/javascript" src="statics/js/wheel.js"></script>
</head>

<body id="top">

	<!--header-->
	<div class="zl-header">
		<%@ include file="title.jsp"%>
	</div>

	<!--logo search weweima-->
	<div class="logo-search w1200">
		<div class="logo-box f-l">
			<div class="logo f-l">
				<a href="#" title="中林logo"><img src="statics/images/zl2-01.gif" /></a>
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
			<div class="nav-kuaijie f-l">
				<a href="JavaScript:;" class="kj-tit1">商品分类快捷</a>
				<div class="kuaijie-box">
					<!-- 此处开始 -->
					<c:forEach items="${commodities }" var="c">
						<div class="kuaijie-info">
							<dl class="kj-dl1">
								<dt style="text-align: center;">
									<a href="#">${c.tname }</a> <span class="tidspan"
										style="display:none; ">${c.tid }</span>
								</dt>
							</dl>
							<div class="kuaijie-con">
								
							</div>
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

	<!--banner-->
	<div class="banner">
		<ul class="ban-ul1">

			<c:forEach items="${wheels }" var="w">
				<li><a href="${w.connection_address }"><img
						src="${w.image_address }" /></a></li>
			</c:forEach>

		</ul>
		<div class="ban-box w1200">
			<ol class="ban-ol1">
				<li class="current"></li>
				<li></li>
				<li></li>
				<li></li>
				<div style="clear:both;"></div>
			</ol>
		</div>
	</div>

	<!--热门推荐-->
	<div class="zl-tuijian w1200">
		<div class="tuijian-left f-l">
			<img src="statics/images/zl2-14.png" />
		</div>
		<ul class="tuijian-right f-l">
			<li>
				<div class="li-box li-box1">
					<a href="JavaScript:;" class="li-a1">锦尚世家</a> <a
						href="JavaScript:;" class="li-a2">锦绣花苑 传承世家</a> <a
						href="JavaScript:;" class="li-a3">more</a>
				</div>
			</li>
			<li>
				<div class="li-box li-box2">
					<a href="JavaScript:;" class="li-a1">速8快捷酒店</a> <a
						href="JavaScript:;" class="li-a2">最大的经济型酒店</a> <a
						href="JavaScript:;" class="li-a3">more</a>
				</div>
			</li>
			<li>
				<div class="li-box li-box3">
					<a href="JavaScript:;" class="li-a1">老诚一锅羊蝎子火锅</a> <a
						href="JavaScript:;" class="li-a2">最养生的火锅</a> <a
						href="JavaScript:;" class="li-a3">more</a>
				</div>
			</li>
			<li>
				<div class="li-box li-box4">
					<a href="JavaScript:;" class="li-a1">鹏程之家汽车店</a> <a
						href="JavaScript:;" class="li-a2">最便宜的汽车4S店</a> <a
						href="JavaScript:;" class="li-a3">more</a>
				</div>
			</li>
			<li>
				<div class="li-box li-box5">
					<a href="JavaScript:;" class="li-a1">速8快捷酒店</a> <a
						href="JavaScript:;" class="li-a2">最大的经济型酒店</a> <a
						href="JavaScript:;" class="li-a3">more</a>
				</div>
			</li>
			<li>
				<div class="li-box li-box6">
					<a href="JavaScript:;" class="li-a1">老诚一锅羊蝎子火锅</a> <a
						href="JavaScript:;" class="li-a2">最养生的火锅</a> <a
						href="JavaScript:;" class="li-a3">more</a>
				</div>
			</li>
			<li>
				<div class="li-box li-box7">
					<a href="JavaScript:;" class="li-a1">鹏程之家汽车店</a> <a
						href="JavaScript:;" class="li-a2">最便宜的汽车4S店</a> <a
						href="JavaScript:;" class="li-a3">more</a>
				</div>
			</li>
			<li>
				<div class="li-box li-box8">
					<a href="JavaScript:;" class="li-a1">鹏程之家汽车店</a> <a
						href="JavaScript:;" class="li-a2">最便宜的汽车4S店</a> <a
						href="JavaScript:;" class="li-a3">more</a>
				</div>
			</li>
			<div style="clear:both;"></div>
		</ul>
		<div style="clear:both;"></div>
	</div>
	<!--循环加载数据-->


	<!--NF-->
	<c:forEach items="${commodities2 }" var="c" begin="0" varStatus="index">
		<div class="zl-info w1200">
			<div class="zl-title1" style="border-color:#73B42D;">
				<h3 class="title1-h3 f-l">${index.count }F${c.tname }</h3>
				<ul class="title1-ul1 title1-ul3 f-r">
					<c:forEach items="${c.commodities }" var="cc" begin="0"
						varStatus="index2">
						<c:if test="${index2.count <= 3 }">
							<c:if test="${index2.count == 1 }">
								<li class="current"><a href="JavaScript:;">${cc.tname }</a>
									<span style="display: none;">${cc.tid }</span></li>
							</c:if>
							<c:if test="${index2.count > 1 }">
								<li><a href="JavaScript:;">${cc.tname }</a> <span
									style="display: none;">${cc.tid }</span></li>
							</c:if>
						</c:if>
					</c:forEach>
				</ul>
				<div style="clear:both;"></div>
			</div>
			<div class="zl-con">
				<c:forEach items="${images }" var="i">
					<c:if test="${i.lou == index.count }">
						<div class="zl-con-left f-l" style="background:${i.baccolor };">
							<div class="zl-tu">
								<img src="${i.image_path }" class="zl-img" />
							</div>
							<p class="zl-lp" style="color:${i.textcolor};">${i.context }
							</p>
							<ul class="zl-lhover" style=" background:${i.textcolor};">
								<c:forEach items="${c.commodities }" var="cc">
									<li><a href="JavaScript:;">${cc.tname }</a> <span
										style="display: none;">${cc.tid }</span></li>
								</c:forEach>
								<div style="clear:both;"></div>
							</ul>
						</div>
					</c:if>
				</c:forEach>

				<div class="zl-con-right f-l">
					<ul class="zl-rul1 lihover">
						<c:forEach items="${c.commodities }" var="cc">
							<c:forEach items="${lous }" var="l">
								<c:if test="${l.tid == cc.tid }">
									<li>
										<div class="sy-tu1">
											<span style="display: none;">${l.gid }</span> <a
												href="javascript:;"><img src="${l.image_path }" /></a>
										</div>
										<div class="sy-tit1">
											<a href="javascript:;">${l.gname }</a>
										</div>
										<div class="sy-tit2">
											<p>
												<a href="javascript:;">${l.sname }</a>
											</p>
											<p>地址：${l.shop_address }</p>
											<p>电话：${l.phone }</p>
										</div>
									</li>
								</c:if>
							</c:forEach>
						</c:forEach>
						<div style="clear:both;"></div>
					</ul>
				</div>
				<div style="clear:both;"></div>
			</div>
		</div>

	</c:forEach>

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

	<!--固定右侧-->
	<ul class="youce">
		<li class="li1"><a href="GoToHomePageAndGetHomePageData"
			class="li1-tu1"><img src="statics/images/zl2-94.png" /></a> <a
			href="GoToHomePageAndGetHomePageData" class="li1-zi1">返回首页</a></li>
		<li class="li2"><c:if test="${user!=null }">
					<a href="getAllForUid?uid=${user.uid}">
				</c:if>
				<c:if test="${user==null }">
					<a href="getAllForUid">
				</c:if><img
				src="statics/images/zl2-95.png" />购</br>物</br>车</a></li>
		<li class="li3"><a href="getAllForUid?uid=0" class="li1-tu2"><img
				src="statics/images/zl2-96.png" /></a> <a href="#" class="li1-zi2">我关注的品牌</a>
		</li>
		<li class="li3"><a href="#" class="li1-tu2"><img
				src="statics/images/zl2-97.png" /></a> <a href="#" class="li1-zi2">我看过的</a>
		</li>
		<li class="li4"><a href="JavaScript:;" class="li1-tu2"><img
				src="statics/images/zl2-98.gif" /></a>
			<div class="li4-ewm">
				<a href="JavaScript:;"><img src="statics/images/zl2-101.gif" /></a>
				<p>扫一扫</p>
			</div></li>
		<li class="li3 li5"><a href="#top" class="li1-tu2"><img
				src="statics/images/zl2-99.gif" /></a> <a href="#top" class="li1-zi2">返回顶部</a>
		</li>
	</ul>


</body>
</html>

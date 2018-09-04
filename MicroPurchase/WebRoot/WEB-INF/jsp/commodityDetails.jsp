<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>商品详情</title>
<link rel="stylesheet" type="text/css" href="statics/css/style.css" />
<link rel="stylesheet" type="text/css"
	href="statics/css/shopping-mall-index.css" />
<script type="text/javascript" src="statics/js/jQuery.js"></script>
<script type="text/javascript" src="statics/js/zhonglin.js"></script>
<script type="text/javascript" src="statics/js/zhongling2.js"></script>
<script type="text/javascript" src="statics/js/commodityDetails.js"></script>

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
				<a href="GoToHomePageAndGetHomePageData" title="中林logo"><img
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
	<div class="details w1200">
		<div class="deta-info1">
			<div class="dt-if1-l f-l">
				<div class="dt-if1-datu">
					<ul qie-da="">
						<c:forEach items="${images }" var="i" >
							<li><a href="#"><img style=" height:100%;  width:100%;"
								src="${i.image_path }" /></a></li>
						</c:forEach>
					</ul>
				</div>
				<div class="dt-if1-qietu">
					<a class="dt-qie-left f-l" href="JavaScript:;"><img
						src="statics/images/dt-if1-qietu-left.gif" /></a>
					<div class="dt-qie-con f-l">
						<ul qie-xiao="">
							<c:forEach items="${images }" var="i" >
							<li><a href="#"><img style=" height:100%;  width:100%;"
								src="${i.image_path }" /></a></li>
						</c:forEach>
							<div style="clear:both;"></div>
						</ul>
					</div>
					<a class="dt-qie-right f-r" href="JavaScript:;"><img
						src="statics/images/dt-if1-qietu-right.gif" /></a>
				</div>
				<div class="dt-if1-fx">
					<span>商品编码:${commodityDetails.commodity_code}</span>
					<span id="gid" style="display: none;" >${commodityDetails.gid}</span>
					<p>
						分享到：<a href="#"><img src="statics/images/dt-xl.gif" /></a><a
							href="#"><img src="statics/images/dt-kj.gif" /></a><a href="#"><img
							src="statics/images/dt-wx.gif" /></a>
					</p>
				</div>
			</div>

			<div class="dt-if1-m f-l">
				<div class="dt-ifm-hd">
					<h3>
						<a href="#">${commodityDetails.gname }</a>
					</h3>
					<p></p>
				</div>
				<div class="dt-ifm-gojia">
					<dl>
						<dt>宅购价</dt>
						<dd>
							<p class="p1">
								<span class="sp1">${commodityDetails.original_cost }</span>
								<!-- <span class="sp2">原价</span> -->
							</p>
							<p class="p2">
								</br> <span class="sp1"> <span>信誉度：</span>${commodityDetails.credibility }</span><span
									class="sp2">共有 2 条评价</span>
							</p>
						</dd>
						<div style="clear:both;"></div>
					</dl>
				</div>
				<dl class="dt-ifm-spot">
					<dt>活动</dt>
					<dd>
						<P>
							<span>活动</span>${commodityDetails.activity }
						</P> 
					</dd>
					<div style="clear:both;"></div>
				</dl>
				<dl class="dt-ifm-box1">
					<!-- <dt>时间</dt>
					<dd>
						<select>
							<option>请选择预约日期</option>
							<option>2015-8-31</option>
							<option>2015-8-32</option>
						</select> <select>
							<option>请选择预约时段</option>
							<option>上午</option>
							<option>下午</option>
						</select>
						<p>如果提前两天预定，还可以享受折扣哦！</p>
					</dd> -->
					<div style="clear:both;"></div>
				</dl>
				<dl class="dt-ifm-box3">
					<dt>数量</dt>
					<dd>
						<a class="box3-left" href="JavaScript:;">-</a> <input type="text"
							value="1" id="nums" > <a class="box3-right" href="JavaScript:;">+</a>
					</dd>
					<div style="clear:both;"></div>
				</dl>
				<div class="dt-ifm-box5">
					<p></p>
				</div>
				<div class="dt-ifm-box4">
					<button class="btn1" id="addshoppingcart" >加入购物车</button>
					<button class="btn2" id="gobalance" >立即购买</button>
				</div>
			</div>

			<div class="dt-if1-r f-r">
				<div class="dt-ifr-hd">
					<div class="dt-ifr-tit">
						<h3>${commodityDetails.sname }</h3>
					</div>
					<ul class="dt-ifr-ul1">
						<li>
							<p class="p1">${commodityDetails.sdescribe }</p>
							<p class="p2">商品描述</p>
						</li>
						<li>
							<p class="p1">${commodityDetails.service_attitude }</p>
							<p class="p2">服务态度</p>
						</li>
						<li>
							<p class="p1">${commodityDetails.logistics_speed }</p>
							<p class="p2">物流速度</p>
						</li>
						<div style="clear:both;"></div>
					</ul>
					<div class="dt-ifr-tel">
						<p>地址：${commodityDetails.shop_address}</p>
						<p>TEL：${commodityDetails.phone }</p>
					</div>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button class="dt-r-btn3">进入店铺</button>
					&nbsp;&nbsp;&nbsp;&nbsp;<button class="dt-r-btn3">收藏店铺</button>
				</div>
				<div class="dt-ifr-fd">
					<div class="dt-ifr-tit">
						<h3>同类推荐</h3>
					</div>
					<dl>
						<dt>
							<a href="#"><img src="statics/images/dt-ifr-fd-dt-tu.gif" /></a>
						</dt>
						<dd>
							<a href="#">【观音桥】罗兰钢管舞舞蹈体验</a>
							<p>¥9.90</p>
						</dd>
						<div style="clear:both;"></div>
					</dl>
					<dl>
						<dt>
							<a href="#"><img src="statics/images/dt-ifr-fd-dt-tu.gif" /></a>
						</dt>
						<dd>
							<a href="#">【观音桥】罗兰钢管舞舞蹈体验</a>
							<p>¥9.90</p>
						</dd>
						<div style="clear:both;"></div>
					</dl>
				</div>
			</div>
			<div style="clear:both;"></div>
		</div>

		<div class="deta-info2">
			<div class="dt-if2-l f-l">
				<div class="if2-l-box1">
					<div class="if2-tit">
						<h3>商品推荐</h3>
					</div>
					<ul>
						<c:forEach items="${lous }" var="l" >
							<li><a href="loadCommodityDetails?gid=${l.gid }&tid=${l.tid }"><img
								src="${l.image_path }" /></a> <a
							class="if2-li-tit" href="#">${l.gname }</a>
							</li>
						</c:forEach>
					</ul>
				</div>
			</div>
			<div class="dt-if2-r f-r">
				<ul class="if2-tit2">
					<li class="current" com-det="dt1"><a href="JavaScript:;">产品信息</a></li>
					<li com-det="dt2"><a href="JavaScript:;">商品评论</a></li>
					<li com-det="dt3"><a href="JavaScript:;">商家信息</a></li>
					<div style="clear:both;"></div>
				</ul>
				<div style="border:1px solid #DBDBDB;" com-det-show="dt1">
					
					<ul class="if2-tu4">
						<c:forEach items="${imageinformations }" var="i" >
							<li><img src="${i.image_path }" /></li>
						</c:forEach>
						<div style="clear:both;"></div>
					</ul>
				</div>
				<div style="display:none;" com-det-show="dt2">
					<dl class="if2-r-box2">
						<dt>
							<p class="box2-p1">好评率</p>
							<p class="box2-p2">96.5%</p>
							<p class="box2-p3">共539人评论</p>
						</dt>
						<dd>
							<P>买过的人觉得</P>
							<ul>
								<li><a href="#">香脆可口(198)</a></li>
								<li><a href="#">口感不错(160)</a></li>
								<li><a href="#">分量足(84)</a></li>
								<li><a href="#">味道不错(47)</a></li>
								<li><a href="#">价格便宜(34)</a></li>
								<li><a href="#">包装不错(30)</a></li>
								<li><a href="#">吃货必备(26)</a></li>
								<li><a href="#">送货快(14)</a></li>
								<li><a href="#">孩子喜欢(4)</a></li>
								<div style="clear:both;"></div>
							</ul>
						</dd>
						<div style="clear:both;"></div>
					</dl>
					<div class="if2-r-box3">
						<ul>
							<li class="current-li"><a href="#">全部（539）</a></li>
							<li><a href="#">好评（536）</a></li>
							<li><a href="#">中评（2）</a></li>
							<li><a href="#">差评（1）</a></li>
							<li><a href="#">图片（1）</a></li>
							<li><a href="#">追加评论（1）</a></li>
							<div style="clear:both;"></div>
						</ul>
						<dl>
							<dt>
								<a href="#"><img src="statics/images/box3-dt-tu.gif" /></a>
							</dt>
							<dd>
								<a href="#">胡**</a>
								<p class="b3-p1">赞赞赞赞赞赞赞赞赞赞赞赞赞！！！！！！！！！</p>
								<p class="b3-p2">2015-12-12 16:57:22</p>
							</dd>
							<div style="clear:both;"></div>
						</dl>
						<dl>
							<dt>
								<a href="#"><img src="statics/images/box3-dt-tu.gif" /></a>
							</dt>
							<dd>
								<a href="#">胡**</a>
								<p class="b3-p1">赞赞赞赞赞赞赞赞赞赞赞赞赞！！！！！！！！！</p>
								<p class="b3-p2">
									<span></span><span></span>2015-12-12 16:57:22
								</p>
								<div style="clear:both;"></div>
								<div class="b3-zuijia">
									<p class="zj-p1">追加评论：</p>
									<p class="zj-p2">赞赞赞赞赞赞赞赞赞赞赞赞赞！！！！！！！！！</p>
									<p class="zj-p3">2015-12-12 16:57:22</p>
								</div>
							</dd>
							<div style="clear:both;"></div>
						</dl>

						<!--分页-->
						<div class="paging">
							<div class="pag-left f-l">
								<a href="#" class="about left-r f-l"><</a>
								<ul class="left-m f-l">
									<li><a href="#">1</a></li>
									<li class="current"><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">4</a></li>
									<li><a href="#">5</a></li>
									<li><a href="#">6</a></li>
									<li><a href="#">...</a></li>
									<li><a href="#">100</a></li>
									<div style="clear:both;"></div>
								</ul>
								<a href="#" class="about left-l f-l">></a>
								<div style="clear:both;"></div>
							</div>
							<div class="pag-right f-l">
								<div class="jump-page f-l">
									到第<input type="text" />页
								</div>
								<button class="f-l">确定</button>
								<div style="clear:both;"></div>
							</div>
							<div style="clear:both;"></div>
						</div>
					</div>
				</div>
				<div class="if2-r-box4" style="display:none;" com-det-show="dt3">
					<div class="b4-tit">
						<h3>店铺所有商品</h3>
					</div>
					<div class="b4-con1">
						<a href="#">饼干糕点</a> <a href="#">坚果果仁</a> <a href="#">海味肉食</a> <a
							href="#">糖果巧克力</a> <a href="#">豆干炒货</a> <a href="#">休闲膨化</a> <a
							href="#">饮品冲调</a> <a href="#">蜜饯果脯</a> <a href="#">方便速食</a> <a
							href="#">饼干糕点</a> <a href="#">坚果果仁</a> <a href="#">海味肉食</a> <a
							href="#">糖果巧克力</a> <a href="#">豆干炒货</a> <a href="#">休闲膨化</a> <a
							href="#">饮品冲调</a> <a href="#">蜜饯果脯</a> <a href="#">方便速食</a>
					</div>
					<div class="b4-tit">
						<h3>店铺热销商品</h3>
					</div>
					<ul>
						<li><a href="#"><img
								src="statics/images/if2-l-box1-tu1.gif" /></a> <a href="#">乐事Lay's
								无限薯片（翡翠黄瓜味）104g/罐</a>
							<p>¥6.90</p></li>
						<li><a href="#"><img
								src="statics/images/if2-l-box1-tu1.gif" /></a> <a href="#">乐事Lay's
								无限薯片（翡翠黄瓜味）104g/罐</a>
							<p>¥6.90</p></li>
						<li><a href="#"><img
								src="statics/images/if2-l-box1-tu1.gif" /></a> <a href="#">乐事Lay's
								无限薯片（翡翠黄瓜味）104g/罐</a>
							<p>¥6.90</p></li>
						<li><a href="#"><img
								src="statics/images/if2-l-box1-tu1.gif" /></a> <a href="#">乐事Lay's
								无限薯片（翡翠黄瓜味）104g/罐</a>
							<p>¥6.90</p></li>
						<li><a href="#"><img
								src="statics/images/if2-l-box1-tu1.gif" /></a> <a href="#">乐事Lay's
								无限薯片（翡翠黄瓜味）104g/罐</a>
							<p>¥6.90</p></li>
						<li><a href="#"><img
								src="statics/images/if2-l-box1-tu1.gif" /></a> <a href="#">乐事Lay's
								无限薯片（翡翠黄瓜味）104g/罐</a>
							<p>¥6.90</p></li>
						<li><a href="#"><img
								src="statics/images/if2-l-box1-tu1.gif" /></a> <a href="#">乐事Lay's
								无限薯片（翡翠黄瓜味）104g/罐</a>
							<p>¥6.90</p></li>
						<li><a href="#"><img
								src="statics/images/if2-l-box1-tu1.gif" /></a> <a href="#">乐事Lay's
								无限薯片（翡翠黄瓜味）104g/罐</a>
							<p>¥6.90</p></li>
						<div style="clear:both;"></div>
					</ul>
				</div>
			</div>
			<div style="clear:both;"></div>
		</div>
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


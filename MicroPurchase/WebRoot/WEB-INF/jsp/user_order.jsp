<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>我的订单</title>
<link rel="stylesheet" type="text/css" href="statics/css/style.css" />
<link rel="stylesheet" type="text/css" href="statics/css/shopping-mall-index.css" />
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
            	<li class="per-li2"><a href="userData">个人资料<span>></span></a></li>
            	<li class="per-li3 current-li"><a href="userOrder">我的订单<span>></span></a></li>
            	<li class="per-li5"><a href="getAllForUid?uid=${user.uid}">购物车<span>></span></a></li>
            	<li class="per-li6"><a href="userAddress">管理收货地址<span>></span></a></li>
            	<li class="per-li7"><a href="Bookmark">店铺收藏<span>></span></a></li>
            	<li class="per-li8"><a href="getAllOrderForUid?uid=${user.uid}">购买记录<span>></span></a></li>
            	<li class="per-li9"><a href="userBrowseRecords">浏览记录<span>></span></a></li>
            	<li class="per-li10"><a href="user_vipIntegral">会员积分<span>></span></a></li>
            </ul>
        </div>
    	<div class="order-right f-r">
        	<div class="order-hd">
            	<dl class="f-l">
                	<dt>
                    	<a href="#"><img src="statics/images/data-tu2.gif" /></a>
                    </dt>
                    <dd>
                    	<h3><a href="#">${user.uname}</a></h3>
                        <p>${user.nickName }</p>
                    </dd>
                    <div style="clear:both;"></div>
                </dl>
                <div class="ord-dai f-l">
                	<p>待付款<span>1</span></p>
                	<p>待发货<span>1</span></p>
                	<p>待收货<span>1</span></p>
                	<p>待评价<span>1</span></p>
                </div>
                <div style="clear:both;"></div>
            </div>
            <div class="order-md">
            	<div class="md-tit">
                	<h3>我的订单</h3>
                </div>
                <div class="md-hd">
                	<P class="md-p1"><input type="checkbox" name="hobby" value=""></input><span>全选</span></P>
                    <p class="md-p2">商品信息</p>
                    <p class="md-p3">规格</p>
                    <p class="md-p4">单价（元）</p>
                    <p class="md-p5">金额（元）</p>
                    <p class="md-p6">操作</p>
                </div>
                <div class="md-info">
                	<div class="dai">
                    	<input type="checkbox" name="hobby" value=""></input><span>待付款</span>
                    </div>
                    <div class="dai-con">
                    	<dl class="dl1">
                        	<dt>
                                <input type="checkbox" name="hobby" value="" class="f-l"></input>
                                <a href="#" class="f-l"><img src="statics/images/dai.gif" /></a>
                                <div style="clear:both;"></div>
                            </dt>
                            <dd>
                            	<p>登高阁紫菜肉松鸡蛋卷 海苔蛋卷 糕点江西特产小吃 休闲办公零食</p>
                                <span>X 1</span>
                            </dd>
                            <div style="clear:both;"></div>
                        </dl>
                        <div class="dai-right f-l">
                        	<P class="d-r-p1">颜色：蓝色<br />尺码：XL</P>
                            <p class="d-r-p2">¥ 66.00</p>
                            <p class="d-r-p3">¥ 66.00</p>
                            <p class="d-r-p4"><a href="#">移入收藏夹</a><br /><a href="#">删除</a><br /><a href="#">付款</a></p>
                        </div>
                        <div style="clear:both;"></div>
                    </div>
                    <div class="dai-con">
                    	<dl class="dl1">
                        	<dt>
                                <input type="checkbox" name="hobby" value="" class="f-l"></input>
                                <a href="#" class="f-l"><img src="statics/images/dai.gif" /></a>
                                <div style="clear:both;"></div>
                            </dt>
                            <dd>
                            	<p>登高阁紫菜肉松鸡蛋卷 海苔蛋卷 糕点江西特产小吃 休闲办公零食</p>
                                <span>X 1</span>
                            </dd>
                            <div style="clear:both;"></div>
                        </dl>
                        <div class="dai-right f-l">
                        	<P class="d-r-p1">颜色：蓝色<br />尺码：XL</P>
                            <p class="d-r-p2">¥ 66.00</p>
                            <p class="d-r-p3">¥ 66.00</p>
                            <p class="d-r-p4"><a href="#">移入收藏夹</a><br /><a href="#">删除</a><br /><a href="#">付款</a></p>
                        </div>
                        <div style="clear:both;"></div>
                    </div>
                </div>
                <div class="md-info">
                	<div class="dai">
                    	<input type="checkbox" name="hobby" value=""></input><span>待发货</span>
                    </div>
                    <div class="dai-con">
                    	<dl class="dl1">
                        	<dt>
                                <input type="checkbox" name="hobby" value="" class="f-l"></input>
                                <a href="#" class="f-l"><img src="statics/images/dai.gif" /></a>
                                <div style="clear:both;"></div>
                            </dt>
                            <dd>
                            	<p>登高阁紫菜肉松鸡蛋卷 海苔蛋卷 糕点江西特产小吃 休闲办公零食</p>
                                <span>X 1</span>
                            </dd>
                            <div style="clear:both;"></div>
                        </dl>
                        <div class="dai-right f-l">
                        	<P class="d-r-p1">颜色：蓝色<br />尺码：XL</P>
                            <p class="d-r-p2">¥ 66.00</p>
                            <p class="d-r-p3">¥ 66.00</p>
                            <p class="d-r-p4" style="margin-top:20px;"><a href="#">移入收藏夹</a><br /><a href="#">删除</a></p>
                        </div>
                        <div style="clear:both;"></div>
                    </div>
                </div>
                <div class="md-info">
                	<div class="dai">
                    	<input type="checkbox" name="hobby" value=""></input><span>待收货</span>
                    </div>
                    <div class="dai-con">
                    	<dl class="dl1">
                        	<dt>
                                <input type="checkbox" name="hobby" value="" class="f-l"></input>
                                <a href="#" class="f-l"><img src="statics/images/dai.gif" /></a>
                                <div style="clear:both;"></div>
                            </dt>
                            <dd>
                            	<p>登高阁紫菜肉松鸡蛋卷 海苔蛋卷 糕点江西特产小吃 休闲办公零食</p>
                                <span>X 1</span>
                            </dd>
                            <div style="clear:both;"></div>
                        </dl>
                        <div class="dai-right f-l">
                        	<P class="d-r-p1" style=" position:relative;top:-20px;">颜色：蓝色<br />尺码：XL</P>
                            <p class="d-r-p2" style="top:-43px;">¥ 66.00</p>
                            <p class="d-r-p3" style="top:-43px;">¥ 66.00</p>
                            <p class="d-r-p4"><a href="#">移入收藏夹</a><br /><a href="#">删除</a><br /><a href="#">确认收货</a><br /><a href="JavaScript:;" ckwl="">查看物流</a></p>
                        </div>
                        <div style="clear:both;"></div>
                    </div>
                </div>
                <div class="md-info">
                	<div class="dai">
                    	<input type="checkbox" name="hobby" value=""></input><span>待评价</span>
                    </div>
                    <div class="dai-con">
                    	<dl class="dl1">
                        	<dt>
                                <input type="checkbox" name="hobby" value="" class="f-l"></input>
                                <a href="#" class="f-l"><img src="statics/images/dai.gif" /></a>
                                <div style="clear:both;"></div>
                            </dt>
                            <dd>
                            	<p>登高阁紫菜肉松鸡蛋卷 海苔蛋卷 糕点江西特产小吃 休闲办公零食</p>
                                <span>X 1</span>
                            </dd>
                            <div style="clear:both;"></div>
                        </dl>
                        <div class="dai-right f-l">
                        	<P class="d-r-p1">颜色：蓝色<br />尺码：XL</P>
                            <p class="d-r-p2">¥ 66.00</p>
                            <p class="d-r-p3">¥ 66.00</p>
                            <p class="d-r-p4" style="margin-top:20px;"><a href="#">移入收藏夹</a><br /><a href="#">删除</a></p>
                        </div>
                        <div style="clear:both;"></div>
                    </div>
                </div>
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
                <div class="md-ft">
                	<P class="md-p1"><input type="checkbox" name="hobby" value=""></input><span>全选</span></P>
                    <a href="#">删除</a>
                    <a href="#">加入收藏夹<span>（此处始终在屏幕下方）</span></a>
                    <button>结算</button>
                </div>
            </div>
            
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
                	<dt><a href="#">新手上路</a></dt>
                    <dd>
                    	<a href="#">购物流程</a>
                    	<a href="#">在线支付</a>
                    	<a href="#">投诉与建议</a>
                    </dd>
                </dl>
            	<dl>
                	<dt><a href="#">配送方式</a></dt>
                    <dd>
                    	<a href="#">货到付款区域</a>
                    	<a href="#">配送费标准</a>
                    </dd>
                </dl>
            	<dl>
                	<dt><a href="#">购物指南</a></dt>
                    <dd>
                    	<a href="#">订购流程</a>
                    	<a href="#">购物常见问题</a>
                    </dd>
                </dl>
            	<dl>
                	<dt><a href="#">售后服务</a></dt>
                    <dd>
                    	<a href="#">售后服务保障</a>
                    	<a href="#">退换货政策总则</a>
                    	<a href="#">自营商品退换细则</a>
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
    
    <!--查看物流 弹窗-->
    <div class="view-logistics">
    	<div class="view-bg"></div>
        <div class="view-con">
        	<div class="view-tit">
            	<h3>物流信息</h3>
                <a href="JavaScript:;" guanbi="">
                	<img src="statics/images/close-select-city.gif" />
                </a>
                <div style="clear:both;"></div>
            </div>
            <div class="view-bd">
            	<ul>
                	<li class="bd-pdl-li after"><span>1</span>2015-08-06　周四　　14:06:53您的订单开始处理</li>
                	<li class="after"><span>2</span>14:08:44您的订单待配货</li>
                	<li><span>3</span>14:16:04您的包裹已出库</li>
                	<li><span>4</span>14:16:03商家正通知快递公司揽件</li>
                	<li><span>5</span>21:47:54【惠州市】圆通速递 广东省惠州市惠东县收件员 已揽件</li>
                	<li class="bd-pdb-li"><span>6</span>22:13:51广东省惠州市惠东县公司 已发出</li>
                    <li class="bd-pdl-li"><span>7</span>2015-08-07　周五　　04:57:33广州转运中心公司 已收入</li>
                	<li><span>8</span>04:58:54广州转运中心公司 已发出</li>
                	<li><span>9</span>2015-08-08周六22:46:43重庆转运中心公司 已收入</li>
                	<li class="bd-pdb-li"><span>10</span>23:01:49【重庆市】重庆转运中心 已发出</li>
                    <li class="bd-pdl-li"><span>11</span>2015-08-09　周日　　00:57:11【重庆市】快件已到达 重庆市南岸区</li>
                	<li><span>12</span>11:14:52重庆市南岸区 已收入</li>
                	<li><span>13</span>11:14:52【重庆市】重庆市南岸区派件员：李天生 13330284757正在为您派件</li>
                	<li class="bd-bd-li"><span>14</span>15:53:14【重庆市】重庆市南岸区公司 已签收 签收人：保安，感谢使用圆通速递，期待再次为您服务</li>
                </ul>
                <p class="sign">您的包裹已被签收！</p>
            </div>
        </div>
    </div>
    
</body>
</html>


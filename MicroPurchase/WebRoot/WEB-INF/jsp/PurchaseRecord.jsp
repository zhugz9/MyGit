<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>购买记录</title>
<link rel="stylesheet" type="text/css" href="statics/css/style.css" />
<link rel="stylesheet" type="text/css" href="statics/css/shopping-mall-index.css" />
<script type="text/javascript" src="statics/js/jQuery.js"></script>
<script type="text/javascript" src="statics/js/zhonglin.js"></script>
<script type="text/javascript" src="statics/js/zhongling2.js"></script>
<script type="text/javascript">
	$(function(){
	 	window.location.hash = "#abc";
	 	$("#btnF").click(function(){
	 		var xb=$("input[name='xb']").val();
	 		if(xb<1 || xb>${AllNum}[${AllNum}.length-1]){
	 			$(".fypd").css("display","block");
	 			$("input[name='xb']").val("");
	 			return;
	 		}
	 		window.location.href="getAllOrderForUid?uid="+${user.uid}+"&begin="+xb;
	 	});
	 	
	 	$(".deleteOrder").bind("click",function(){
	 		var did = $(this).next().val();
	 		var orderNumber=$(this).prev().find(".orderNumber").html();
	 		if(confirm("您确定要删除订单"+orderNumber+"吗？")){
	 			window.location.href="deleteOrder?did="+did;
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
            	<p>西北</p>
                <dl>
                	<dt>重庆市</dt>
                    <dd>
                    	<a href="JavaScript:;">长寿区</a>
                        <a href="JavaScript:;">巴南区</a>
                        <a href="JavaScript:;">南岸区</a>
                        <a href="JavaScript:;">九龙坡区</a>
                        <a href="JavaScript:;">沙坪坝区</a>
                        <a href="JavaScript:;">北碚</a>
                        <a href="JavaScript:;">江北区</a>
                        <a href="JavaScript:;">渝北区</a>
                        <a href="JavaScript:;">大渡口区</a>
                        <a href="JavaScript:;">渝中区</a>
                        <a href="JavaScript:;">万州</a>
                        <a href="JavaScript:;">武隆</a>
                        <a href="JavaScript:;">晏家</a>
                        <a href="JavaScript:;">长寿湖</a>
                        <a href="JavaScript:;">云集</a>
                        <a href="JavaScript:;">华中</a>
                        <a href="JavaScript:;">林封</a>
                        <a href="JavaScript:;">双龙</a>
                        <a href="JavaScript:;">石回</a>
                        <a href="JavaScript:;">龙凤呈祥</a>
                        <a href="JavaScript:;">朝天门</a>
                        <a href="JavaScript:;">中华</a>
                        <a href="JavaScript:;">玉溪</a>
                        <a href="JavaScript:;">云烟</a>
                        <a href="JavaScript:;">红塔山</a>
                        <a href="JavaScript:;">真龙</a>
                        <a href="JavaScript:;">天子</a>
                        <a href="JavaScript:;">娇子</a>
                    </dd>
                    <div style="clear:both;"></div>
                </dl>
                <dl>
                	<dt>新疆</dt>
                    <dd>
                    	<a href="JavaScript:;">齐乌鲁木</a>
                        <a href="JavaScript:;">昌吉</a>
                        <a href="JavaScript:;">巴音</a>
                        <a href="JavaScript:;">郭楞</a>
                        <a href="JavaScript:;">伊犁</a>
                        <a href="JavaScript:;">阿克苏</a>
                        <a href="JavaScript:;">喀什</a>
                        <a href="JavaScript:;">哈密</a>
                        <a href="JavaScript:;">克拉玛依</a>
                        <a href="JavaScript:;">博尔塔拉</a>
                        <a href="JavaScript:;">吐鲁番</a>
                        <a href="JavaScript:;">和田</a>
                        <a href="JavaScript:;">石河子</a>
                        <a href="JavaScript:;">克孜勒苏</a>
                        <a href="JavaScript:;">阿拉尔</a>
                        <a href="JavaScript:;">五家渠</a>
                        <a href="JavaScript:;">图木舒克</a>
                        <a href="JavaScript:;">库尔勒</a>
                    </dd>
                    <div style="clear:both;"></div>
                </dl>
                <dl>
                	<dt>甘肃</dt>
                    <dd>
                    	<a href="JavaScript:;">兰州</a>
                        <a href="JavaScript:;">天水</a>
                        <a href="JavaScript:;">巴音</a>
                        <a href="JavaScript:;">白银</a>
                        <a href="JavaScript:;">庆阳</a>
                        <a href="JavaScript:;">平凉</a>
                        <a href="JavaScript:;">酒泉</a>
                        <a href="JavaScript:;">张掖</a>
                        <a href="JavaScript:;">武威</a>
                        <a href="JavaScript:;">定西</a>
                        <a href="JavaScript:;">金昌</a>
                        <a href="JavaScript:;">陇南</a>
                        <a href="JavaScript:;">临夏</a>
                        <a href="JavaScript:;">嘉峪关</a>
                        <a href="JavaScript:;">甘南</a>
                    </dd>
                    <div style="clear:both;"></div>
                </dl>
                <dl>
                	<dt>宁夏</dt>
                    <dd>
                    	<a href="JavaScript:;">银川</a>
                        <a href="JavaScript:;">吴忠</a>
                        <a href="JavaScript:;">石嘴山</a>
                        <a href="JavaScript:;">中卫</a>
                        <a href="JavaScript:;">固原</a>
                    </dd>
                    <div style="clear:both;"></div>
                </dl>
                <dl>
                	<dt>青海</dt>
                    <dd>
                    	<a href="JavaScript:;">西宁</a>
                        <a href="JavaScript:;">海西</a>
                        <a href="JavaScript:;">海北</a>
                        <a href="JavaScript:;">果洛</a>
                        <a href="JavaScript:;">海东</a>
                        <a href="JavaScript:;">黄南</a>
                        <a href="JavaScript:;">玉树</a>
                        <a href="JavaScript:;">海南</a>
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
            	<li class="per-li2"><a href="userData">个人资料<span>></span></a></li>
            	<li class="per-li3"><a href="userOrder">我的订单<span>></span></a></li>
            	<li class="per-li5"><a href="getAllForUid?uid=${user.uid}">购物车<span>></span></a></li>
            	<li class="per-li6"><a href="userAddress">管理收货地址<span>></span></a></li>
            	<li class="per-li7"><a href="Bookmark">店铺收藏<span>></span></a></li>
            	<li class="per-li8 current-li"><a href="PurchaseRecord">购买记录<span>></span></a></li>
            	<li class="per-li9"><a href="userBrowseRecords">浏览记录<span>></span></a></li>
            	<li class="per-li10"><a href="user_vipIntegral">会员积分<span>></span></a></li>
            </ul>
        </div>
    	<div class="purchase-records f-r">
        	<div class="pr-tit">
            	<P class="pr-p1">宝贝</P>
            	<P class="pr-p2">单价(元)</P>
            	<P class="pr-p3">数量</P>
            	<P class="pr-p4">实付款(元)</P>
            	<P class="pr-p5">交易状态</P>
            	<P class="pr-p6">交易操作</P>
            </div>
            <c:if test="${OprderDetailsList==null}">
				<h1 style="color: green">您还没有任何订单哦~</h1><br/>
				<a  style="color: blue" href="GoToHomePageAndGetHomePageData">去购买商品</a>
			</c:if>
			 <c:if test="${OprderDetailsList!=null}">
				<c:forEach items="${OprderDetailsList }" var="odl">
            	<div class="pr-info">
	            	<div class="pr-tit2">
	                    <p class="pr-p1"  style="margin-left: 10px;">${odl.order_date}</p>
	                    <p class="pr-p2">订单号：<span class="orderNumber">${odl.ordernumber }</span></p>
	                    <a class="pr-a2 deleteOrder" style="float: right; margin-right: 50px; color: red;" href="javascript:;">删除</a>
	                    <input type="hidden" value="${odl.did}" class="did"/>
	                </div>
	                <div class="pr-con">
	                	<div class="pr-con-tu f-l">
	                    	<a href="loadCommodityDetails?gid=${odl.gid }&tid=${odl.tid}"><img src="${odl.image_path}" style="width: 100%;height: 100%" /></a>
	                    </div>
	                    <a class="pr-con-bt f-l" href="loadCommodityDetails?gid=${odl.gid }&tid=${odl.tid}">${odl.gname}</a>
	                    <div class="pr-con-sz1 f-l">
	                        <p>${odl.unit_price_of_goods }</p>
	                    </div>
	                    <p class="pr-con-sl f-l">${odl.number_of_commodities }</p>
	                    <div class="pr-con-yf f-l">
	                    	<p>${odl.total_amount }</p>
	                        <span>(含运费：0.00 )</span>
	                    </div>
	                    <div class="pr-con-jiaoyi f-l">
	                    	<a href="#">交易成功</a>
	                    	<a href="#">订单详情</a>
	                    </div>
	                    <div class="pr-con-pj f-l">
	                    	<a href="#">评价</a>
	                    	<a href="#">再次购买</a>
	                    </div>
	                    
	                    <div style="clear:both;"></div>
	                </div>
	            </div>
            </c:forEach>
			</c:if>
            
            
            
            <!--分页-->
            <c:if test="${OprderDetailsList!=null}">
				<div class="paging">
            	<div class="pag-left f-l">
                	<a href="getAllOrderForUid?uid=${user.uid}&begin=${pageNow-1}" class="about left-r f-l"><</a>
                    <ul class="left-m f-l">
                       <c:forEach items="${AllNum}" var="ns" begin="0" varStatus="index">
                       		<c:if test="${index.count==pageNow }">
								<li><a href="getAllOrderForUid?uid=${user.uid}&begin=${index.count}" class="current">${index.count}</a></li>                       		
                       		</c:if>
                       		<c:if test="${index.count!=pageNow }">
								<li><a href="getAllOrderForUid?uid=${user.uid}&begin=${index.count}">${index.count}</a></li>                       		
                       		</c:if>
                       </c:forEach>
                        <div style="clear:both;"></div>
                    </ul>
                   
                	<a href="getAllOrderForUid?uid=${user.uid}&begin=${pageNow+1}" class="about left-l f-l">></a>
                    <div style="clear:both;"></div>
                </div>
            	<div class="pag-right f-l">
                	<div class="jump-page f-l">
                        到第<input type="text" name="xb" maxlength="2"  onkeyup="this.value=this.value.replace(/[^0-9-]+/,'');" />页
                    </div>
                    <button class="f-l" id="btnF">确定</button>
                    <div style="clear:both;"></div>
            <span style="color:red; display: none;" class="fypd">请输入正确的页数</span>
                </div>
                <div style="clear:both;"></div>
            </div>
			</c:if>
            
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
    
</body>
</html>

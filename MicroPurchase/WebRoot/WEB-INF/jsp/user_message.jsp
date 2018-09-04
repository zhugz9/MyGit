<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="g"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>个人消息</title>
<link rel="stylesheet" type="text/css" href="statics/css/style.css" />
<link rel="stylesheet" type="text/css" href="statics/css/shopping-mall-index.css" />
<script type="text/javascript" src="statics/js/jQuery.js"></script>
<script type="text/javascript" src="statics/js/zhonglin.js"></script>
<script type="text/javascript" src="statics/js/zhongling2.js"></script>
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
            	<li class="per-li1 current-li"><a href="userMessage">消息中心<span>></span></a></li>
            	<li class="per-li2"><a href="userData">个人资料<span>></span></a></li>
            	<li class="per-li3"><a href="userOrder">我的订单<span>></span></a></li>
            	<li class="per-li5"><a href="getAllForUid?uid=${user.uid}">购物车<span>></span></a></li>
            	<li class="per-li6"><a href="userAddress">管理收货地址<span>></span></a></li>
            	<li class="per-li7"><a href="Bookmark">店铺收藏<span>></span></a></li>
            	<li class="per-li8"><a href="PurchaseRecord">购买记录<span>></span></a></li>
            	<li class="per-li9"><a href="userBrowseRecords">浏览记录<span>></span></a></li>
            	<li class="per-li10"><a href="user_vipIntegral">会员积分<span>></span></a></li>
            </ul>
        </div>
    	<div class="personal-r f-r">
        	<div class="personal-right">
                <form action="deleteInfo">
	                	<div class="personal-r-tit">
	                    <h3>消息中心</h3>
	                </div>
	                <div class="theme">
	                    <p class="th-p1 f-l">
	                        <input type="checkbox" value="" name="hobby"></input>
	                        <span>选择</span>
	                    </p>
	                    <p class="th-p2 f-l">
	                        <img src="statics/images/th-wenjian-tu.gif" />
	                    </p>
	                    <p class="th-p3 f-l">主题</p>
	                    <p class="th-p4 f-l">时间</p>
	                </div>
	                <script>
	                	$(function(){
	                		$(".personal-right .theme input[name='hobby']").click(function(){
	                			var check=$(".personal-right .theme input[name='hobby']").attr("checked");
	                			$.each($(".personal-right .per-info"),function(){
	                				if(check=="checked"){
	                					$(this).find("input[name='hobby']").attr("checked",check);
	                					$(this).parent().find("input[name='pid']").attr("name","selectPid");
	                				}else{
	                					$(this).find("input[name='hobby']").removeAttr("checked");
	                					$(this).parent().find("input[name='selectPid']").attr("name","pid");
	                				}
	                			});
	                		});
	                	});
	                </script>
	                <div class="per-info">
	                     <ul>
		                    <g:forEach items="${piList}" var="ps">
		                    	 <li>
		                    		<input type="hidden" value="${ps.pid}" name="pid"></input>
		                            <input type="checkbox" value="" name="hobby"></input>
		                            <p class="p-tu f-l">
		                            	<g:if test="${ps.whetherToRead==1}">
		                            		<img src="statics/images/th-wenjian-tu.gif" />
		                            	</g:if>
		                            	<g:if test="${ps.whetherToRead==0}">
		                            		<img src="statics/images/th-wenjian-tu2.gif" />
		                            	</g:if>
		                            </p>
		                            <a href="getMessageInfoById?id=${ps.pid}" class="p-font f-l">${ps.messageTitle }</a>
		                            <p class="p-time f-l">${ps.date}</p>
		                            <div style="clear:both;"></div>
		                        </li>
		                    </g:forEach>
		                  </ul>
		                  <script>
		                  	$(function(){
		                  		$(".per-info input[name='hobby']").click(function(){
		                  			$(this).parent().find("input[name='pid']").attr("name","selectPid");
		                  		});
		                  	});
		                  </script>
		                  
	                </div>
	                <button class="per-del">删除选项</button>
                </form>
            </div>
            
            <!--分页-->
            <div class="paging">
            	<div class="pag-left f-l">
                	<a href="getInfoByPageIndex?pageIndex=${pageIndex-1}" class="about left-r f-l"><</a>
                    <ul class="left-m f-l">
                        <g:forEach begin="1" end="${pageSize}" var="Index">
                        	<g:if test="${Index==pageIndex}">
                        		  <li class="current"><a href="getInfoByPageIndex?pageIndex=${Index}">${Index}</a></li>
                        	</g:if>
                        	<g:if test="${Index!=pageIndex}">
                        		  <li ><a href="getInfoByPageIndex?pageIndex=${Index}">${Index}</a></li>
                        	</g:if>
                        </g:forEach>
                        <div style="clear:both;"></div>
                    </ul>
                	<a href="getInfoByPageIndex?pageIndex=${pageIndex+1}" class="about left-l f-l">></a>
                    <div style="clear:both;"></div>
                </div>
            	<div class="pag-right f-l">
            		<form action="getInfoByPageIndex">
            			    	<div class="jump-page f-l">
                        到第<input type="text" name="pageIndex"/>页
                    </div>
                    <button class="f-l">确定</button>
                    <div style="clear:both;"></div>
            		</form>
                </div>
                <div style="clear:both;"></div>
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
    
</body>
</html>

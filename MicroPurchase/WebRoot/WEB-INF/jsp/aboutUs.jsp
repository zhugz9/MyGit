<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>关于我们</title>
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
            	<a href="main" title="中林logo"><img src="statics/images/zl2-01.gif" /></a>
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
                	<div class="kuaijie-info">
                    	<dl class="kj-dl1">
                        	<dt><img src="statics/images/zl2-07.gif" /><a href="#">食品/饮料/酒水</a></dt>
                            <dd>
                            	<a href="#">饼干糕点</a><span>|</span>
                            	<a href="#">冲调保健</a><span>|</span>
                            	<a href="#">酒水</a>
                            </dd>
                        </dl>
                        <div class="kuaijie-con">
                        	<dl class="kj-dl2">
                            	<dt><a href="#">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="#">护手霜</a><span>|</span>
                                    <a href="#">香皂</a><span>|</span>
                                    <a href="#">沐浴露</a><span>|</span>
                                    <a href="#">花露水</a><span>|</span>
                                    <a href="#">泡浴/盐浴</a><span>|</span>
                                    <a href="#">洗手液</a>
                                </dd>
                            </dl>
                            <div style="clear:both;"></div>
                        </div>
                    </div>
                	<div class="kuaijie-info">
                    	<dl class="kj-dl1">
                        	<dt><img src="statics/images/zl2-08.gif" /><a href="#">粮油副食</a></dt>
                            <dd>
                            	<a href="#">厨房调味</a><span>|</span>
                            	<a href="#">大米/面粉</a><span>|</span>
                            	<a href="#">方便速食</a>
                            </dd>
                        </dl>
                        <div class="kuaijie-con">
                        	<dl class="kj-dl2">
                            	<dt><a href="#">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="#">护手霜</a><span>|</span>
                                    <a href="#">香皂</a><span>|</span>
                                    <a href="#">沐浴露</a><span>|</span>
                                    <a href="#">花露水</a><span>|</span>
                                    <a href="#">泡浴/盐浴</a><span>|</span>
                                    <a href="#">洗手液</a>
                                </dd>
                            </dl>
                        	<dl class="kj-dl2">
                            	<dt><a href="#">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="#">护手霜</a><span>|</span>
                                    <a href="#">香皂</a><span>|</span>
                                    <a href="#">沐浴露</a><span>|</span>
                                    <a href="#">花露水</a><span>|</span>
                                    <a href="#">泡浴/盐浴</a><span>|</span>
                                    <a href="#">洗手液</a>
                                </dd>
                            </dl>
                            <div style="clear:both;"></div>
                        </div>
                    </div>
                	<div class="kuaijie-info">
                    	<dl class="kj-dl1">
                        	<dt><img src="statics/images/zl2-09.gif" /><a href="#">家庭清洁</a></dt>
                            <dd>
                            	<a href="#">厨房清洁</a><span>|</span>
                            	<a href="#">纸品湿巾</a><span>|</span>
                            	<a href="#">家私</a>
                            </dd>
                        </dl>
                        <div class="kuaijie-con">
                        	<dl class="kj-dl2">
                            	<dt><a href="#">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="#">护手霜</a><span>|</span>
                                    <a href="#">香皂</a><span>|</span>
                                    <a href="#">沐浴露</a><span>|</span>
                                    <a href="#">花露水</a><span>|</span>
                                    <a href="#">泡浴/盐浴</a><span>|</span>
                                    <a href="#">洗手液</a>
                                </dd>
                            </dl>
                            <dl class="kj-dl2">
                            	<dt><a href="#">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="#">护手霜</a><span>|</span>
                                    <a href="#">香皂</a><span>|</span>
                                    <a href="#">沐浴露</a><span>|</span>
                                    <a href="#">花露水</a><span>|</span>
                                    <a href="#">泡浴/盐浴</a><span>|</span>
                                    <a href="#">洗手液</a>
                                </dd>
                            </dl>
                            <dl class="kj-dl2">
                            	<dt><a href="#">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="#">护手霜</a><span>|</span>
                                    <a href="#">香皂</a><span>|</span>
                                    <a href="#">沐浴露</a><span>|</span>
                                    <a href="#">花露水</a><span>|</span>
                                    <a href="#">泡浴/盐浴</a><span>|</span>
                                    <a href="#">洗手液</a>
                                </dd>
                            </dl>
                            <div style="clear:both;"></div>
                        </div>
                    </div>
                	<div class="kuaijie-info">
                    	<dl class="kj-dl1">
                        	<dt><img src="statics/images/zl2-10.gif" /><a href="#">美妆洗护/个人护理</a></dt>
                            <dd>
                            	<a href="#">洗浴用品/身体护理</a><span>|</span>
                            	<a href="#">洗发护发</a>
                            </dd>
                        </dl>
                        <div class="kuaijie-con">
                        	<dl class="kj-dl2">
                            	<dt><a href="#">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="#">护手霜</a><span>|</span>
                                    <a href="#">香皂</a><span>|</span>
                                    <a href="#">沐浴露</a><span>|</span>
                                    <a href="#">花露水</a><span>|</span>
                                    <a href="#">泡浴/盐浴</a><span>|</span>
                                    <a href="#">洗手液</a>
                                </dd>
                            </dl>
                            <dl class="kj-dl2">
                            	<dt><a href="#">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="#">护手霜</a><span>|</span>
                                    <a href="#">香皂</a><span>|</span>
                                    <a href="#">沐浴露</a><span>|</span>
                                    <a href="#">花露水</a><span>|</span>
                                    <a href="#">泡浴/盐浴</a><span>|</span>
                                    <a href="#">洗手液</a>
                                </dd>
                            </dl>
                            <dl class="kj-dl2">
                            	<dt><a href="#">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="#">护手霜</a><span>|</span>
                                    <a href="#">香皂</a><span>|</span>
                                    <a href="#">沐浴露</a><span>|</span>
                                    <a href="#">花露水</a><span>|</span>
                                    <a href="#">泡浴/盐浴</a><span>|</span>
                                    <a href="#">洗手液</a>
                                </dd>
                            </dl>
                            <dl class="kj-dl2">
                            	<dt><a href="#">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="#">护手霜</a><span>|</span>
                                    <a href="#">香皂</a><span>|</span>
                                    <a href="#">沐浴露</a><span>|</span>
                                    <a href="#">花露水</a><span>|</span>
                                    <a href="#">泡浴/盐浴</a><span>|</span>
                                    <a href="#">洗手液</a>
                                </dd>
                            </dl>
                            <div style="clear:both;"></div>
                        </div>
                    </div>
                	<div class="kuaijie-info">
                    	<dl class="kj-dl1">
                        	<dt><img src="statics/images/zl2-11.gif" /><a href="#">母婴用品/玩具</a></dt>
                            <dd>
                            	<a href="#">宝宝喂养/洗护清洁</a><span>|</span>
                            	<a href="#">玩具</a><span>|</span>
                            	<a href="#">奶粉/辅食</a>
                            </dd>
                        </dl>
                        <div class="kuaijie-con">
                        	<dl class="kj-dl2">
                            	<dt><a href="#">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="#">护手霜</a><span>|</span>
                                    <a href="#">香皂</a><span>|</span>
                                    <a href="#">沐浴露</a><span>|</span>
                                    <a href="#">花露水</a><span>|</span>
                                    <a href="#">泡浴/盐浴</a><span>|</span>
                                    <a href="#">洗手液</a>
                                </dd>
                            </dl>
                            <dl class="kj-dl2">
                            	<dt><a href="#">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="#">护手霜</a><span>|</span>
                                    <a href="#">香皂</a><span>|</span>
                                    <a href="#">沐浴露</a><span>|</span>
                                    <a href="#">花露水</a><span>|</span>
                                    <a href="#">泡浴/盐浴</a><span>|</span>
                                    <a href="#">洗手液</a>
                                </dd>
                            </dl>
                            <dl class="kj-dl2">
                            	<dt><a href="#">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="#">护手霜</a><span>|</span>
                                    <a href="#">香皂</a><span>|</span>
                                    <a href="#">沐浴露</a><span>|</span>
                                    <a href="#">花露水</a><span>|</span>
                                    <a href="#">泡浴/盐浴</a><span>|</span>
                                    <a href="#">洗手液</a>
                                </dd>
                            </dl>
                            <dl class="kj-dl2">
                            	<dt><a href="#">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="#">护手霜</a><span>|</span>
                                    <a href="#">香皂</a><span>|</span>
                                    <a href="#">沐浴露</a><span>|</span>
                                    <a href="#">花露水</a><span>|</span>
                                    <a href="#">泡浴/盐浴</a><span>|</span>
                                    <a href="#">洗手液</a>
                                </dd>
                            </dl>
                            <dl class="kj-dl2">
                            	<dt><a href="#">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="#">护手霜</a><span>|</span>
                                    <a href="#">香皂</a><span>|</span>
                                    <a href="#">沐浴露</a><span>|</span>
                                    <a href="#">花露水</a><span>|</span>
                                    <a href="#">泡浴/盐浴</a><span>|</span>
                                    <a href="#">洗手液</a>
                                </dd>
                            </dl>
                            <div style="clear:both;"></div>
                        </div>
                    </div>
                	<div class="kuaijie-info">
                    	<dl class="kj-dl1">
                        	<dt><img src="statics/images/zl2-12.gif" /><a href="#">家居/家电</a></dt>
                        </dl>
                        <div class="kuaijie-con">
                        	<dl class="kj-dl2">
                            	<dt><a href="#">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="#">护手霜</a><span>|</span>
                                    <a href="#">香皂</a><span>|</span>
                                    <a href="#">沐浴露</a><span>|</span>
                                    <a href="#">花露水</a><span>|</span>
                                    <a href="#">泡浴/盐浴</a><span>|</span>
                                    <a href="#">洗手液</a>
                                </dd>
                            </dl>
                        	<dl class="kj-dl2">
                            	<dt><a href="#">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="#">护手霜</a><span>|</span>
                                    <a href="#">香皂</a><span>|</span>
                                    <a href="#">沐浴露</a><span>|</span>
                                    <a href="#">花露水</a><span>|</span>
                                    <a href="#">泡浴/盐浴</a><span>|</span>
                                    <a href="#">洗手液</a>
                                </dd>
                            </dl>
                        	<dl class="kj-dl2">
                            	<dt><a href="#">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="#">护手霜</a><span>|</span>
                                    <a href="#">香皂</a><span>|</span>
                                    <a href="#">沐浴露</a><span>|</span>
                                    <a href="#">花露水</a><span>|</span>
                                    <a href="#">泡浴/盐浴</a><span>|</span>
                                    <a href="#">洗手液</a>
                                </dd>
                            </dl>
                        	<dl class="kj-dl2">
                            	<dt><a href="#">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="#">护手霜</a><span>|</span>
                                    <a href="#">香皂</a><span>|</span>
                                    <a href="#">沐浴露</a><span>|</span>
                                    <a href="#">花露水</a><span>|</span>
                                    <a href="#">泡浴/盐浴</a><span>|</span>
                                    <a href="#">洗手液</a>
                                </dd>
                            </dl>
                        	<dl class="kj-dl2">
                            	<dt><a href="#">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="#">护手霜</a><span>|</span>
                                    <a href="#">香皂</a><span>|</span>
                                    <a href="#">沐浴露</a><span>|</span>
                                    <a href="#">花露水</a><span>|</span>
                                    <a href="#">泡浴/盐浴</a><span>|</span>
                                    <a href="#">洗手液</a>
                                </dd>
                            </dl>
                        	<dl class="kj-dl2">
                            	<dt><a href="#">洗浴用品/身体护理</a></dt>
                                <dd>
                                   	<a href="#">护手霜</a><span>|</span>
                                    <a href="#">香皂</a><span>|</span>
                                    <a href="#">沐浴露</a><span>|</span>
                                    <a href="#">花露水</a><span>|</span>
                                    <a href="#">泡浴/盐浴</a><span>|</span>
                                    <a href="#">洗手液</a>
                                </dd>
                            </dl>
                            <div style="clear:both;"></div>
                        </div>
                    </div>
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
    
    <!--banner 图-->
    <div class="style-banner" style="overflow:hidden;">
    	<a href="#"><img src="statics/images/banner-tu2.gif" /></a>
    </div>
    
    <!--关于我们 内容-->
    <div class="about-us-con w1200">
    	<div class="us-info1">
        	<div class="us-if1-left f-l">
            	<a href="#"><img src="statics/images/about-us-tu1.gif" /></a>
            </div>
        	<div class="us-if1-right f-l">
            	<div class="us1-top">
                	<h2>我们是谁？</h2>
                    <h3>我们是做什么的？</h3>
                    <p>宅客微购提供生活中的便利，集送货上门、网络营销于一体的专业服务。</p>
                </div>
                <p class="us1-ft">
                	       宅客小商品城位于世界最大的小商品集散中心义乌市。公司以中国小商品城为依托，全方位整合得天独厚的先天性资源，利用时下已相当成熟的互联网平台为载体，凭借"庞大的货源供给，便捷的采购流程，绝对的价格优势，完善的售后保障"等优势，致力打造成全国小商品实体店、网店商家进货的首选平台。<br />其产品覆盖"创意家居、新奇玩具、流行饰品、服饰配件、汽车用品、美妆用品、DIY产品等等，为便捷商家的进货、补货渠道，本商城支持小额批发、小额混批等方式。目前宅客小商品城各大类产品已与多家有竞争力的厂家建立了长期的供货关系，同时也与多家代理商和零售商建立了长期稳定的合作关系。
                </p>
            </div>
            <div style="clear:both;"></div>
        </div>
        <div class="us-info2">
        	<div class="us-if2">
            	<h3>联系方式</h3>
                <p>联系电话：023-88653308</p>
                <p>公司邮箱：61884596@qq.com</p>
                <p>公司地址：重庆市南岸区星光时代广场协信城6幢3-7</p>
                <p>QQ：6018845965</p>
                <p style="margin-top:35px;">工作时间：周一至周五 9:00-18:00</p>
            </div>
        </div>
        <div class="us-info3">
        	<div class="ue3-top">
            	<div class="us-left f-l">
                	<a href="#"><img src="statics/images/about-us-tu3.gif" /></a>
                </div>
            	<div class="us-right f-l">
                	<img src="statics/images/about-us-tu4.gif" />
                    <div class="us3-font">
                    	<P style="text-indent:inherit;">宅客网三种盈利模式解析</P>
                        <p>第一种 购物商城盈利 有人通过您的商城消费 他本身可以获得返利 您也可以获得返利 您还可以开启或关闭他们的返利关闭的话返利就是您自己的。返利直接提款到您支付宝账户</p>
                        <p>宝贝是系统自动调用淘宝产品数据，因为他们在淘宝联盟设置的有推广获得佣金，所以您等于是在替他们推广，只要商城中有任何消费，代理都可以获得高额佣金提成，淘宝联盟会自动从卖家支付宝中扣除佣金并返还。宝贝都是系统自动抓取的 自动过滤不良商家 大大提高成交率，咨询，发货，售后，您什么都不用管，全部都是由淘宝掌柜店内完成的多种商城模版，一键设置 ，官方定期推出更多的模版 您可以随意设置自己喜欢的。</p>
                        <p>第二种 开通代理卖商城赚高额提成，您可以给别人开通商城代理 帮助别人建造这样的大型返利商城，您不需要懂建站知识几分钟就可以交会您，自动化完成。</p>
                        <p></p>
                    </div>
                </div>
                <div style="clear:both;"></div>
            </div>
            <div class="us3-bt">
            	<p>加盟代理可永久免费使用宅客网多项淘宝客官方旗下推广系统。</p>
            	<p style="text-indent:0;">第三种 您可以通过您的商城投放广告 或者别人想要在您的商城投放广告联系您按月或按周支付您广告费，您投放他们的广告，您从中赚取广告费,可以添加广告，视频，音乐等等，只要是您想添加的都可以实现。</p>
            	<p>宅客网是目前网络最有发展潜力的淘宝客商城代理加盟平台，全新项目全新思路， 多种盈利渠道。既能像普通淘宝客一样推广商品获得提成，也可以通过推广代理获得提成，任何加盟宅客网多项淘宝客的代理都可以拥有这样的一个大型淘宝客返利商城，无需懂建站知识，一键搞定，管理操作全部自动完成操作非常简单。</p>
            	<p>宅客网与普通淘宝客的区别</p>
            	<p>普通淘宝客首先需要准备空间，域名，网站的程序等，对于非专业人士来说难度确实很大，想做淘宝客却无从下手，这里宅客网多项淘宝客返利商城代理加盟平台恰到好处的解决了这类问题，加盟返宅客网多项淘宝客可自助全自动建好自己的大型返利商城，一键搞定，并且多种模版风格，随意切换，可以自助建不同风格的返利商城，不断更新功能，无需懂任何技术性的知识，适合新手操作。</p>
            </div>
        </div>
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

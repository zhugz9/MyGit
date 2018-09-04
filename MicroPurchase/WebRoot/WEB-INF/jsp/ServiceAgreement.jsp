<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>6-1服务协议</title>
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
    
    <!--内容开始-->
    <div class="fuwu w1200">
    	<h2>宅客宝电子商务协议</h2>
        <div class="fw-kuai1">
        	<p>甲方: </p>
        	<p>乙方: </p>
        	<p>本协议由同意并承诺遵守本协议规定使用宅客宝/宅客微购服务的法律实体（下称“商户”或“甲方”）、 嘉峪关中林电子商务有限公司（下称“乙方”）本协议具有合同效力</p>
            <h3> 一. 协议内容及生效：</h3>
            <p class="p1">（一）本协议内容包括协议正文及所有宅客宝/宅客微购已经发布的或将来可能发布的各类规则。所有规则为协议不可分割的一部分，与协议正文具有同等法律效力。</p>
            <p class="p1">（二）商户在使用宅客微购/宅客宝提供的各项服务的同时，承诺接受并遵守各项相关规则的规定。乙方有权根据需要不时地制定、修改本协议或各类规则，如本协议有任何变更，乙方将在网站上以公示形式通知予商户。如商户不同意相关变更，必须立即以书面通知的方式终止本协议。任何修订和新规则一经乙方公布即自动生效，成为本协议的一部分。登录或继续使用服务将表示商户接受经修订的协议。除另行明确声明外，任何使服务范围扩大或功能增强的新内容均受本协议约束。</p>
            <p class="p1">（三）商户签署或在线接受本协议并不导致本协议立即生效，经过乙方审核通过并向商户发出服务开通通知时，本协议即在商户和乙方之间产生法律效力。本协议不涉及商户与宅客微购其它用户之间因网上交易而产生的法律关系及法律纠纷。</p>
        </div>
        <div class="fw-kuai3">
        	<h3>二. 定义：</h3>
            <p>“宅客宝网”：指由宅客微购提供技术支持和服务的电子商务平台网站，网址为www.zkwg.cn。 </p>
            <p>“宅客微购网上交易平台”：指宅客微购上供用户发布或查询商品信息，进行信息交流，达成交易意向及向用户提供其他与交易有关的辅助信息服务的空间，有关宅客微购网上交易平台上的术语或图示的含义，详见宅客微购“客服中心”有关内容。</p>
            <p>“商户及商户注册”：商户必须是符合本协议第四条规定的法律实体，如无经营资格或违反本协议第五条之声明与保证的组织不当注册为宅客微购商户或超越其民事权利或行为能力范围从事交易的，其与宅客微购之间的协议自始无效，乙方一经发现，有权立即注销该商户B2C服务帐户，并追究其使用乙方服务的一切法律责任。商户注册是指商户登陆宅客微购，按要求填写相关信息,在线接受并同意履行本协议以最终激活其宅客微购B2C服务帐户的过程。</p>
            <p>“宅客微购B2C服务帐户”：又称“宅客微购商城帐户”，即商户完成商户注册流程而获得的其将在使用服务的过程中必须与自设的帐户密码共同使用的用户名，又称“宅客微购B2C用户名”或“宅客微购商城用户名”。商户应妥善保管其宅客微购B2C服务帐户及密码信息，商户不得以任何形式擅自转让或授权他人使用自己的宅客微购B2C服务帐户； 
“服务”：是指由乙方在宅客微购B2C平台向商户提供的互联网信息发布、商业推广及与此有关的互联网2.技术服务。具体服务内容如下： </p>
            <p>1.网络信息服务：指商户根据本协议的规定利用宅客微购上交易平台查询商品信息、发布商品信息、作为卖方与其它用户订立商品买卖合同、评价其它用户的信用、参加宅客微购的有关活动以及其他由宅客微购同意提供的信息服务； </p>
            <p>2．宅客微购B2C平台活动推荐位服务：指宅客微购B2C平台举办的商业推广活动页面中的推荐位展示服务； </p>
            <p>3．三级域名服务：指商户经宅客微购审核批准可使用的宅客微购域名下三级域名的服务，该服务必须遵照宅客微购颁布的有关三级域名的规则经宅客微购审核通过方能开通使用。</p>
            <p>4．积分推广服务：指由宅客微购向商户提供的通过宅客微购平台实施的商业推广服务，具体规定见本协议第十一条。 </p>
            <p>5．店铺专用BBS服务：指由宅客微购向商户提供的专用BBS空间，供商户发布与自销商品有关的信息，并收集宅客微购其他用户对其商品及服务的反馈。</p>
            <p>6．其他服务：包括但不限于市场调研、商业推广、广告等服务，由协议方在《宅客微购B2C服务条款》或补充协议中确定。 
           宅客微购保留在任何时候自行决定对服务及其相关功能、应用软件变更、升级的权利。宅客微购进一步保留在服务中开发新的模块、功能和软件或其它语种服务的权利。上述所有新的模块、功能、软件服务的提供，除非宅客微购另有说明，否则仍适用本协议。服务随时可能因宅客微购的单方判断而被增加或修改，或因定期、不定期的维护而暂缓提供，商户将会得到相应的变更通知。商户在此同意宅客微购在任何情况下都无需向其或第三方在使用服务时对其在传输或联络中的迟延、不准确、错误或疏漏及因此而致使的损害负责。</p>
            <p>“宅客微购B2C服务条款”由协议方另行签署的确认与本协议服务有关的各项个性化规定的契约文件。如宅客微购B2C服务条款内容与本协议内容存在冲突，以宅客微购B2C服务条款内容为准。 </p>
        </div>
        <div class="fw-kuai3">
        	<h3>三、证明文件提交： </h3>
        	<p>（一）证明文件提交：商户欲使用本协议下服务，必须向宅客微购或宅客微购指定合作方提交其在申请服务时提供信息的相关证明。具体证明信息内容如下： </p>
        	<p class="p1">1. 营业执照副本复印件；</p>
        	<p class="p1">2. 税务登记证复印件；</p>
        	<p class="p1">3. 商户出具的证明联系人获得商户授权的证明；</p>
        	<p class="p1">4. 其他宅客微购认为需查验的信息。（根据商户经营类别的不同查验不同的信息）</p>
        	<p>（二）信息变更的通知：协议期内，上述信息（包括相关证明文件）的任何变更商户都应及时通知乙方，如上述信息变更后使得商户不再具备履行本协议的情形出现时，宅客微购有权立即终止或中止本协议。 </p>
        	<p>（三）责任条款：商户同意为其未及时的通知或更新其信息承担全部责任，商户保证其向宅客微购提供的全部证明文件真实、准确且不存在超过时效问题（即保证所有证明文件在整个合同履行期间都处于有效期内）如因上述原因发生纠纷或被相关国家主管机关处罚，商户应当独立承担全部责任，如给宅客微购（包括其合作伙伴、代理人、职员等）造成损失的，商户同意赔偿其全部损失。 </p>
        </div>
        <div class="fw-kuai3">
        	<h3>四、申请条件：</h3>
            <p>申请使用服务的商户必须同时满足以下条件：</p>
            <p class="p1">（一）持有中华人民共和国合法营业执照;</p>
            <p class="p1">（二）提交了本协议第三条约定的相关证明文件并获得乙方认可；</p>
        </div>
        <div class="fw-kuai3">
        	<h3>五、商户的声明与保证</h3>
            <p>（一）其符合商户的申请条件，且向宅客微购提供真实、合法、准确、有效的注册资料，并保证其诸如电子邮件地址、联系电话、联系地址、邮政编码等内容的有效性及安全性，保证宅客微购及其他用户可以通过上述联系方式与自己进行联系。同时，商户也有义务在相关资料实际变更时及时更新有关注册资料。商户保证不以他人资料在淘宝网进行注册。</p>
            <p>（二）其承诺遵守本协议、以及所有公示于宅客微购的规则和流程。</p>
            <p>（三）其有合法的权利缔结本协议，使用服务。</p>
            <p>（四）其发布于宅客微购的所有信息真实、准确，符合相关法律法规及乙方的规则。</p>
            <p>（五）其对其发布于宅客微购的交易信息中所涉商品有合法的销售权。</p>
            <p>（六）其将按照不低于《中华人民共和国产品质量法》、《中华人民共和国消费者权益保护法》及其他法规、部门规章和国家强制性标准规定的要求，出售商品并提供“三包”等售后服务。 </p>
            <p>（七）其在宅客微购商城出售商品，有义务按照买家实际支付的现金金额为买家开具发票，相关税收应按国家相关规定由商户自行承担。</p>
            <p>（八）其保证在使用服务进行交易的过程中遵守诚实信用的原则，不在交易过程中采取不正当竞争行为，不扰乱网上交易的正常秩序，不从事与网上交易无关的行为。</p>
            <p>（九）其保证在使用服务时实施的所有行为均遵守国家法律、法规和乙方的相关规定以及各种社会公共利益或公共道德。如有违反导致任何法律后果的发生，商户将以自己的名义独立承担所有相应的法律责任； </p>
            <p>（十）其同意不对宅客微购上任何数据作商业性利用，包括但不限于在未经宅客微购事先书面批准的情况下，以复制、传播或向他方披露等方式使用在宅客微购站上其他用户展示的任何资料;</p>
            <p>（十一）其承诺对其店铺专用BBS负有管理义务，对其店铺专用BBS出现的违反国家有关法律、法规规定及宅客微购规则的信息予以立即删除。</p>
            <p>（十二）其承诺拥有合法的权利和资格向宅客微购上传有关商品销售信息并进行销售，且前述行为未对任何第三方合法权益，包括但不限于第三方知识产权、物权等构成侵害，如因其行为导致宅客微购遭受任何第三方提起的索赔，诉讼或行政责任，其将承担相应责任并使宅客微购免责。</p>
            <p>（十三）其承诺关闭其支付宝帐户（与商户本协议项下店铺绑定的支付宝账户）的“余额支付”功能。商户授权宅客微购向支付宝公司发出指令，关闭其支付宝账户的“余额支付”功能。</p>
            <p>（十四）其承诺如果其在宅客微购B2C平台开设的店铺系“专营店”类别，则其店铺经营品牌数量应当按照本协议附件四的约定不得超过其店铺所属类目的经营品牌数量上限。 </p>
            <p>（十五）其任何其在线接受本协议并不当然导致本协议发生法律效力，本协议是附条件生效协议，即必须经过宅客微购对其提交的全部资料审核通过后方可生效。同时，其认可宅客微购有权独立的对其入驻资料、品牌经营权限开通申请进行评估、判断。审核结果以宅客微购评估、判断为准，其对此不持有任何异议。 </p>
        </div>
        <div class="fw-kuai3">
        	<h3>六、宅客微购的权利和义务：</h3>
            <p>（一）宅客微购有义务在现有技术上维护整个宅客微购上交易平台的正常运行，并努力提升和改进技术，使商户网上交易活动得以顺利进行；宅客微购有权根据商户营业执照的经营范围以及商户对自己店铺经营范围的描述自行决定（调整）允许商户发布商品的宅客微购商品类目种类和数量，商户对此不持任何异议。</p>
            <p>（二）对商户在注册使用服务中所遇到的与交易或注册有关的问题及反映的情况，宅客微购应及时作出回复； </p>
            <p>（三）因网上交易平台的特殊性，宅客微购没有义务对所有商户的交易行为以及与交易有关的其它事项进行事先审查，但如存在下列情况： </p>
            <p class="p1">①第三方通知乙方，认为某个具体商户或具体交易事项可能存在重大问题；</p>
            <p class="p1">②商户或第三方向宅客微购告知交易平台上有违法或不当行为的；</p>
            <p>宅客微购以普通非专业人员的知识水平标准对相关内容进行判别，可以认为这些内容或行为具有违法或不当性质的，宅客微购有权根据不同情况选择删除相关信息或停止对该商户提供服务，并追究相关法律责任。</p>
            <p>（四）宅客微购有权对商户的注册数据及交易行为进行查阅，发现注册数据或交易行为中存在任何问题或怀疑，均有权向商户发出询问或要求改正的通知，或者直接作出删除等处理；</p>
            <p>（五）经国家生效法律文书或行政处罚决定确认商户存在违法行为，或者宅客微购有足够事实依据可以认定商户存在违法或违反协议行为的，宅客微购有权在宅客微购公布商户的违法和/或违规行为；</p>
            <p>（六）对于商户在宅客微购交易平台发布的下列各类信息，宅客微购有权在不通知商户的前提下进行删除或采取其它限制性措施，包括但不限于以规避费用为目的的信息；以炒作信用为目的的信息；宅客微购有理由相信存在欺诈等恶意或虚假内容的信息；宅客微购有理由相信与网上交易无关或不是以交易为目的的信息；宅客微购有理由相信存在恶意竞价或其它试图扰乱正常交易秩序因素的信息；宅客微购有理由相信属违反公共利益或可能严重损害宅客微购和/或其它用户合法利益的信息；</p>
            <p>（七）宅客微购有权根据业务调整情况将本协议项下的全部权利义务一并转移给其关联公司，此种情况将会提前30天以网站公告的形式通知商户。商户承诺对此不持有异议。</p>
        </div>
        <div class="fw-kuai3">
        	<h3>七、费用规定：</h3>
            <p>（一）商户同意，就其使用的服务向宅客微购（或宅客微购的关联公司）支付以下服务费用：（具体以《宅客微购B2C服务条款》约定为准）</p>
            <p class="p1">1.技术服务费（包含年费及实时划扣部分）</p>
            <p class="p1">2.空间使用费 </p>
            <p class="p1">3.信息发布费</p>
            <p class="p1">4.积分推广活动服务费 </p>
            <p class="p1">5.三级域名服务费   </p>
            <p class="p1">6.其他商业推广或技术服务费用</p>
            <p>技术服务费年费及实时划扣部分服务费费率规定：</p>
            <p class="p1">1、技术服务费由年费、实时划扣部分两部分组成；</p>
            <p class="p1">2、技术服务费年费为　　　　　元/年；商户须一次性交纳；</p>
            <p class="p1">3、实时划扣部分以商品成交金额为基数根据《宅客微购B2C服务协议》附件《技术服务费率表》约定的费率计算技术服务费并实时划扣；</p>
            <p class="p1">4、如协议期内实时划扣部分技术服务费大于　　　　　元，则免收当期的技术服务费年费，商户已经交纳的，自动转为下一年度技术服务费年费；</p>
            <p class="p1">5、无论何种原因导致协议未到期终止，根据协议终止的具体时间，宅客微购将已收取的技术服务费年费按照12个月平均分摊（协议已履行期间不足一个月的按照一个月计算），将协议未履行期间对应的部分向商户返还（如协议终止前实时划扣部分已经大于6000元，则全额返还）；已履行期间实时划扣部分技术服务费如大于（6000元/12）*X（其中X为实际履行期间月份），则宅客微购将已履行期间对应的技术服务费年费部分向商户返还。</p>
        </div>
        <div class="fw-kuai3">
        	<h3>八、服务的开通：</h3>
            <p>（一）服务将在以下条件满足后十四（14）个工作日内开通：</p>
            <p class="p1">1.商户签署或在线接受本协议；</p>
            <p class="p1">2.商户在线填写信息并最终与宅客微购通过在线填空点击（或书面）的方式签订B2C服务条款; </p>
            <p class="p1">3.商户签署或在线接受《消费者保障服务协议》；</p>
            <p>（二）服务期自服务实际开通日起算。宅客微购将按本协议规定的通知方式提前一天通知商户服务开通日。 </p>
            <p>（三）如商户签署或在线接受本协议后十四（14）个工作日内仍未满足本条第一款规定的所有开通条件，或宅客微购因任何原因向商户发出拒绝提供服务的书面通知，则宅客微购有权不予开通服务，本协议即告终止。</p>
        </div>
        <div class="fw-kuai3">
        	<h3>十、积分推广服务：</h3>
            <p>商户同意使用宅客微购提供的积分推广服务 </p>
        </div>
        <div class="fw-kuai3">
        	<h3>十二、协议的终止：</h3>
            <p>（一）通知解除：协议任何一方均可以提前十五（15）天书面通知的方式终止本协议。 </p>
            <p>（二）宅客微购单方解除权： </p>
            <p class="p1">1、如商户违反宅客微购的任何规则或本协议中的任何承诺或保证，包括但不限于本协议项下的任何约定，宅客微购都有权立刻终止本协议，且按有关规则对商户进行处罚。如商户销售假冒他人商标的商品、外贸商品（包括但不限于：外单、原单、尾单、剪标等各类商品），二手商品，或第三方多次投诉其商品质量或服务质量，则宅客微购除有权立即终止本协议外</p>
            <p>（三）商户在超过九十（90）天的时间内未以宅客微购B2C服务账户及密码登录宅客微购的，宅客微购有权终止本协议。 </p>
            <p>（四）如非因宅客微购的原因，商户未能按本协议及附件之规定，按期全额支付有关服务费用和/或活动费用，且在宅客微购规定的时限内仍未支付，宅客微购有权部分或全部中止或终止本协议。  </p>
            <p>（五）本协议规定的其他协议终止条件发生或实现，导致本协议终止。</p>
            <p> (六) 协议终止后有关事项的处理： </p>
            <p class="p1">1.协议终止后，宅客微购没有义务为商户保留宅客微购B2C服务账户中或与之相关的任何信息，或转发任何未曾阅读或发送的信息给商户或第三方。亦不就终止协议而对商户或任何第三者承担任何责任；</p>
            <p class="p1">2.无论本协议因何原因终止，在协议终止前的行为所导致的任何赔偿和责任，商户必须完全且独立地承担； </p>
            <p class="p1">3.协议终止后，宅客微购有权保留该商户的注册数据及以前的交易行为记录。如商户在协议终止前在宅客微购交易平台上存在违法行为或违反协议的行为，宅客微购仍可行使本协议所规定的权利； </p>
            <p class="p1"> 4. 协议终止之前，1）商户已经上传至宅客微购的商品信息尚未达成交易协议的，宅客微购有权在协议终止时同时删除此项商品的相关信息；2）商户已经与另一用户就某商品信息达成交易协议的，宅客微购可以不删除该项交易，但宅客微购有权在协议终止的同时将协议终止的的情况通知该交易中的买方。 </p>
            <p>（七）如在协议期内，非因商户违约或过错导致本协议终止，则商户有权凭宅客微购就本协议开具的发票原件及退款申请要求宅客微购退还未履行部分的服务费用（如有的话）至商户指定的银行账户。其他情况下协议发生终止，未履行服务费用均不予退还。积分推广活动费用在任何情况下都不予退回。</p>
        </div>
        <div class="fw-kuai3">
        	<h3>十三、协议期限： </h3>
            <p>本协议经商户在线接受且经过宅客微购审核通过后（或书面签署后）即告生效，除非本协议规定的终止条件发生，本协议将持续有效。双方另有约定的除外。</p>
        </div>
        <div class="fw-kuai3">
        	<h3>十四、有效通知： </h3>
            <p>本协议下所规定的通知应以书面形式通过以下邮址递交收悉，通知的到达以宅客微购收悉为准。</p>
            <p>宅客微购：嘉峪关市文轩路139号中林电子商务有限公司，邮编：735100 </p>
            <p>收件人：宅客宝 B2C客户经理（收） </p>
            <p>宅客微购可自　　　　　　　　　　　　邮址向商户在宅客微购注册时提供的电子邮件地址发出通知。通知的送达以邮件发出为准。</p>
        </div>
        <div class="fw-kuai3">
        	<h3>十五、保密条款：</h3>
            <p>（一）本协议所称商业秘密包括但不限于本协议、任何补充协议所述内容及在合作过程中涉及的其他秘密信息。任何一方未经商业秘密提供方同意，均不得将该信息向任何第三方披露、传播、编辑或展示。协议方承诺，本协议终止后仍承担此条款下的保密义务，保密期将另持续三年。 </p>
            <p>（二） 因对方书面同意以及国家、行政、司法强制行为而披露商业秘密的，披露方不承担责任；该商业秘密已为公众所知悉的，披露方不承担责任。 </p>
        </div>
        <div class="fw-kuai3">
        	<h3>十六、宅客微购的法律地位 </h3>
            <p>宅客微购仅作为用户物色交易对象，就货物和服务的交易进行协商，以及获取各类与贸易相关的服务的地点。本协议的签署并不意味着宅客微购成为商户在宅客微购上与第三方所进行交易的参与者，对前述交易宅客微购仅提供技术服务，不对商户行为的合法性、有效性及商品的真实性、合法性和有效性作任何明示或暗示的担保。商户因进行交易、获取有偿服务或接触宅客微购服务器而发生的所有应纳税赋，均由商户自行负责支付。 </p>
        </div>
        <div class="fw-kuai3">
        	<h3>十七、有限责任： </h3>
            <p>（一）服务将按"现状"和按"可得到"的状态提供。宅客微购在此明确声明对服务不作任何明示或暗示的保证，包括但不限于对服务的可适用性，没有错误或疏漏，持续性，准确性，可靠性，适用于某一特定用途之类的保证，声明或承诺。 </p>
            <p>宅客微购对服务所涉的技术和信息的有效性，准确性，正确性，可靠性，质量，稳定，完整和及时性均不作承诺和保证。</p>
            <p>（二）使用服务下载或者获取任何资料的行为均出于商户的独立判断并自行承担风险。每一个商户独自承担因此对其电脑系统或资料灭失造成的损失。</p>
            <p>（三）不论在何种情况下，宅客微购均不对由于Internet连接故障，电脑，通讯或其他系统的故障，电力故障，罢工，劳动争议，暴乱，起义，骚乱，生产力或生产资料不足，火灾，洪水，风暴，爆炸，不可抗力，战争，政府行为，国际、国内法院的命令或第三方的不作为而造成的不能服务或延迟服务承担责任。 </p>
            <p>（四）不论是否可以预见，不论是源于何种形式的行为，宅客微购不对由以下原因造成的任何特别的，直接的，间接的，惩罚性的，突发性的或有因果关系的损害或其他任何损害（包括但不限于利润或利息的损失，营业中断，资料灭失）承担责任。</p>
            <p class="p1">1. 使用或不能使用服务；  </p>
            <p class="p1">2. 通过服务购买或获取任何商品，样品，数据，信息或进行交易等，或其他可替代上述行为的行为而产生的费用； </p>
            <p class="p1">3. 未经授权的存取或修改数据或数据的传输；    </p>
            <p class="p1">4. 第三方通过服务所作的陈述或行为；</p>
            <p class="p1">5. 其它与服务相关事件，包括疏忽等，所造成的损害。 </p>
        </div>
        <div class="fw-kuai3">
        	<h3>十八、违约责任： </h3>
            <p>（一）商户同意赔偿由于使用服务（包括但不限于将商户资料展示在网站上）或违反本协议而给宅客微购造成的任何损失（包括由此产生的全额的诉讼费用和律师费）。商户同意宅客微购不对任何其张贴的资料，包括诽谤性的，攻击性的或非法的资料，承担任何责任；由于此类材料对其它用户造成的损失由商户自行全部承担。 </p>
            <p>（二）商户承诺，不会采取任何手段或措施，包括但不限于明示或暗示用户或通过其他方式转移其可以通过乙方电子商务平台在线达成的交易，否则将视为严重违约，宅客微购将有权立即终止本协议</p>
            <p>（三）除本协议及宅客微购规则另有约定之外，如一方发生违约行为，守约方可以书面通知方式要求违约方在指定的时限内停止违约行为，并就违约行为造成的损失进行索赔，如违约方未能按时停止违约行为，则守约方有权立即终止本协议。</p>
        </div>
        <div class="fw-kuai3">
        	<h3>十九、争议解决及其他：</h3>
            <p>1. 本协议之解释与适用，以及与本协议有关的争议，均应依照中华人民共和国法律予以处理，</p>
            <p>2. 如本协议的任何条款被视作无效或无法执行，则上述条款可被分离，其余部份则仍具有法律效力。 </p>
            <p>3. 宅客微购于商户过失或违约时放弃本协议规定的权利的，不得视为其对商户的其他或以后同类之过失或违约行为弃权。 </p>
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

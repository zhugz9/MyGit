<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>购物车</title>
<link rel="stylesheet" type="text/css" href="statics/css/style.css" />
<link rel="stylesheet" type="text/css" href="statics/css/reset.css">
<link rel="stylesheet" type="text/css" href="statics/css/carts.css">
<script type="text/javascript" src="statics/js/jQuery.js"></script>
<script type="text/javascript" src="statics/js/zhonglin.js"></script>
<script type="text/javascript" src="statics/js/zhongling2.js"></script>
<!-- <script type="text/javascript" src="statics/js/carts.js"></script> -->
<script type="text/javascript">
	$(function() {
		//全局的checkbox选中和未选中的样式
		var $allCheckbox = $("input[type='checkbox']"), //全局的全部checkbox
		$wholeChexbox = $('.whole_check'), $cartBox = $('.cartBox'), //每个商铺盒子
		$shopCheckbox = $('.shopChoice'), //每个商铺的checkbox
		$sonCheckBox = $('.son_check'); //每个商铺下的商品的checkbox

		$("input[type='checkbox']").bind("click", function() {
			if ($(this).is(':checked')) {
				$(this).next('label').addClass('mark');
			} else {
				$(this).next('label').removeClass('mark');
			}
		});

		//===============================================全局全选与单个商品的关系================================
		$wholeChexbox.click(function() {
			var $checkboxs = $cartBox.find('input[type="checkbox"]');
			if ($(this).is(':checked')) {
				$checkboxs.prop("checked", true);
				$checkboxs.next('label').addClass('mark');
			} else {
				$checkboxs.prop("checked", false);
				$checkboxs.next('label').removeClass('mark');
			}
			totalMoney();
		});

		$sonCheckBox.each(function() {
			$(this).click(function() {
				if ($(this).is(':checked')) {
					//判断：所有单个商品是否勾选
					var len = $sonCheckBox.length;
					var num = 0;
					$sonCheckBox.each(function() {
						if ($(this).is(':checked')) {
							num++;
						}
					});
					if (num == len) {
						$wholeChexbox.prop("checked", true);
						$wholeChexbox.next('label').addClass('mark');
					}
				} else {
					//单个商品取消勾选，全局全选取消勾选
					$wholeChexbox.prop("checked", false);
					$wholeChexbox.next('label').removeClass('mark');
				}
			})
		})

		//=======================================每个店铺checkbox与全选checkbox的关系/每个店铺与其下商品样式的变化===================================================

		//店铺有一个未选中，全局全选按钮取消对勾，若店铺全选中，则全局全选按钮打对勾。
		$shopCheckbox.each(function() {
			$(this).click(
					function() {
						if ($(this).is(':checked')) {
							//判断：店铺全选中，则全局全选按钮打对勾。
							var len = $shopCheckbox.length;
							var num = 0;
							$shopCheckbox.each(function() {
								if ($(this).is(':checked')) {
									num++;
								}
							});
							if (num == len) {
								$wholeChexbox.prop("checked", true);
								$wholeChexbox.next('label').addClass('mark');
							}

							//店铺下的checkbox选中状态
							$(this).parents('.cartBox').find('.son_check')
									.prop("checked", true);
							$(this).parents('.cartBox').find('.son_check')
									.next('label').addClass('mark');
						} else {
							//否则，全局全选按钮取消对勾
							$wholeChexbox.prop("checked", false);
							$wholeChexbox.next('label').removeClass('mark');

							//店铺下的checkbox选中状态
							$(this).parents('.cartBox').find('.son_check')
									.prop("checked", false);
							$(this).parents('.cartBox').find('.son_check')
									.next('label').removeClass('mark');
						}
						totalMoney();
					});
		});

		//========================================每个店铺checkbox与其下商品的checkbox的关系======================================================

		//店铺$sonChecks有一个未选中，店铺全选按钮取消选中，若全都选中，则全选打对勾
		$cartBox.each(function() {
			var $this = $(this);
			var $sonChecks = $this.find('.son_check');
			$sonChecks.each(function() {
				$(this).click(
						function() {
							if ($(this).is(':checked')) {
								//判断：如果所有的$sonChecks都选中则店铺全选打对勾！
								var len = $sonChecks.length;
								var num = 0;
								$sonChecks.each(function() {
									if ($(this).is(':checked')) {
										num++;
									}
								});
								if (num == len) {
									$(this).parents('.cartBox').find(
											'.shopChoice')
											.prop("checked", true);
									$(this).parents('.cartBox').find(
											'.shopChoice').next('label')
											.addClass('mark');
								}

							} else {
								//否则，店铺全选取消
								$(this).parents('.cartBox').find('.shopChoice')
										.prop("checked", false);
								$(this).parents('.cartBox').find('.shopChoice')
										.next('label').removeClass('mark');
							}
							totalMoney();
						});
			});
		});

		//=================================================商品数量==============================================
		var $plus = $('.plus'), $reduce = $('.reduce'), $all_sum = $('.sum');
		$plus.click(function() {
			var $inputVal = $(this).prev('input'), $count = parseInt($inputVal
					.val()) + 1, $obj = $(this).parents('.amount_box').find(
					'.reduce'), $priceTotalObj = $(this)
					.parents('.order_lists').find('.sum_price'), $price = $(
					this).parents('.order_lists').find('.price').html(), //单价
			$priceTotal = parseFloat(parseFloat($count
					* parseFloat($price.substring(1))));
			$inputVal.val($count);
			$priceTotalObj.html('￥' + $priceTotal);
			if ($inputVal.val() > 1 && $obj.hasClass('reSty')) {
				$obj.removeClass('reSty');
			}
			totalMoney();
		});

		$reduce.click(function() {
			var $inputVal = $(this).next('input'), $count = parseInt($inputVal
					.val()) - 1, $priceTotalObj = $(this).parents(
					'.order_lists').find('.sum_price'), $price = $(this)
					.parents('.order_lists').find('.price').html(), //单价
			$priceTotal = parseFloat($count * parseFloat($price.substring(1)));
			if ($inputVal.val() > 1) {
				$inputVal.val($count);
				$priceTotalObj.html('￥' + $priceTotal);
			}
			if ($inputVal.val() == 1 && !$(this).hasClass('reSty')) {
				$(this).addClass('reSty');
			}
			totalMoney();
		});

		$all_sum.keyup(function() {
			var $count = 0, $priceTotalObj = $(this).parents('.order_lists')
					.find('.sum_price'), $price = $(this).parents(
					'.order_lists').find('.price').html(), //单价
			$priceTotal = 0;
			if ($(this).val() == '') {
				$(this).val('1');
			}
			$(this).val($(this).val().replace(/\D|^0/g, ''));
			$count = $(this).val();
			$priceTotal = parseFloat($count * parseFloat($price.substring(1)));
			$(this).attr('value', $count);
			$priceTotalObj.html('￥' + $priceTotal);
			totalMoney();
		})

		//======================================移除商品========================================

		var $order_lists = null;
		var $order_content = '';
		$('.delBtn').click(function() {
			alert(1);
			$order_lists = $(this).parents('.order_lists');
			$order_content = $order_lists.parents('.order_content');
			$('.model_bg').fadeIn(300);
			$('.my_model').fadeIn(300);
		});

		//关闭模态框
		$('.closeModel').click(function() {
			closeM();
		});
		$('.dialog-close').click(function() {
			closeM();
		});
		function closeM() {
			$('.model_bg').fadeOut(300);
			$('.my_model').fadeOut(300);
		}
		//确定按钮，移除商品
		$('.dialog-sure').click(
				function() {
					$order_lists.remove();
					if ($order_content.html().trim() == null
							|| $order_content.html().trim().length == 0) {
						$order_content.parents('.cartBox').remove();
					}
					closeM();
					$sonCheckBox = $('.son_check');
					totalMoney();
				})

		//======================================总计==========================================

		function totalMoney() {
			var total_money = 0;
			var total_count = 0;
			var calBtn = $('.calBtn a');
			$sonCheckBox.each(function() {
				if ($(this).is(':checked')) {
					var goods = parseFloat($(this).parents('.order_lists')
							.find('.sum_price').html().substring(1));
					var num = parseFloat($(this).parents('.order_lists').find(
							'.sum').val());
					total_money += goods;
					total_count += num;
				}
			});
			$('.total_text').html('￥' + total_money);
			$('.piece_num').html(total_count);

			if (total_money != 0 && total_count != 0) {
				if (!calBtn.hasClass('btn_sty')) {
					calBtn.addClass('btn_sty');
				}
			} else {
				if (calBtn.hasClass('btn_sty')) {
					calBtn.removeClass('btn_sty');
				}
			}
		}
		var gwcgid = new Array();
		var gwcnum = new Array();
		var gwcdj = new Array();
		var gwctotal = new Array();
		var gwcsid = new Array();
		
		//uid session中获取  gid传过去   数量  单价  总价 时间 state默认1 ordernumber生成
		$("#jiesuan").click(function() {
			$("#test .cartBox").each(function() {
				var gid = $(this).find(".list_info").html();
				var num = $(this).find(".sum").val();
				var dj = $(this).find(".price").html().substring(1);
				var total = $(this).find(".sum_price").html().substring(1);
				var check = $(this).find(".son_check");
				var sid=$(this).find(".hidesid").val();
				if (check.is(':checked')) {
					gwcgid.push(gid);
					gwcnum.push(num);
					gwcdj.push(dj);
					gwctotal.push(total);
					gwcsid.push(sid);
				}
			});
			//PaymentIinterface
			//window.location.href="PaymentIinterfaceTwo?oprderDetails"+gwc;
			/* $.ajax({
				type : 'get',
				url : 'PaymentIinterfaceTwo',
				data : {
					'gwcgid' : gwcgid,
					'gwctotal' : gwctotal,
					'gwcdj' : gwcdj,
					'gwcsid' : gwcsid,
					'gwcnum' : gwcnum
				},
				traditional : true,
				success : function(data) {
					location.href="PaymentIinterfaceTwo";
				}
			}); */
			
			window.location.href="PaymentIinterfaceTwo?gwcgid="+gwcgid+"&gwctotal="+gwctotal+"&gwcdj="+gwcdj+"&gwcsid="+gwcsid+"&gwcnum="+gwcnum;
			
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
	<section class="cartMain">
		<div class="cartMain_hd">
			<ul class="order_lists cartTop">
				<li class="list_chk">
					<!--所有商品全选--> <input type="checkbox" id="all" class="whole_check">
					<label for="all"></label> 全选
				</li>
				<li class="list_con">商品信息</li>
				<li class="list_info">商品编号</li>
				<li class="list_price">单价</li>
				<li class="list_amount">数量</li>
				<li class="list_sum">金额</li>
				<li class="list_op">操作</li>
			</ul>
		</div>
		<div id="test">
			<c:if test="${ShoppingCartList.size()==0}">
				<h1 style="color: green">您还没有添加商品哦~</h1><br/>
				<a  style="color: blue" href="GoToHomePageAndGetHomePageData">去添加商品</a>
			</c:if>
			<c:if test="${ShoppingCartList.size()>0}">
				<c:forEach items="${ShoppingCartList}" varStatus="status" var="sc">
				<div class="cartBox">
					<div class="order_content">
						<ul class="order_lists">
							<li class="list_chk"><input type="checkbox"
								id="checkbox_${status.index}" class="son_check"> <label
								for="checkbox_${status.index}"></label></li>
								<input type="hidden" class="hidesid" value="${sc.sid}" />
							<li class="list_con">
								<div class="list_img">
									<a href="loadCommodityDetails?gid=${sc.gid }&tid=${sc.tid}"><img style="width: 100%; height: 100%" src="${sc.image_path}" alt=""></a>
								</div>
								<div class="list_text">
									<a href="loadCommodityDetails?gid=${sc.gid }&tid=${sc.tid}">${sc.gname}</a>
								</div>
							</li>
							<li class="list_info">${sc.gid }</li>
							<li class="list_price">
								<p class="price">￥${sc.original_cost}</p>
							</li>
							<li class="list_amount">
								<div class="amount_box">
									<c:if test="${sc.number_of_commodities==1}">
										<a href="javascript:;" class="reduce reSty">-</a>
									</c:if>
									<c:if test="${sc.number_of_commodities>1}">
										<a href="javascript:;" class="reduce">-</a>
									</c:if>
									<input type="text" value="${sc.number_of_commodities}"
										class="sum"> <a href="javascript:;" class="plus">+</a>
								</div>
							</li>
							<li class="list_sum">
								<p class="sum_price">￥${sc.original_cost*sc.number_of_commodities}</p>
							</li>
							<li class="list_op">
								<p class="del">
									<a href="javascript:;" class="delBtn">移除商品</a>
								</p>
							</li>
						</ul>
					</div>
				</div>
			</c:forEach>
			</c:if>
			
		</div>
		<!--底部-->
		<c:if test="${ShoppingCartList.size()>0}">
		<div class="bar-wrapper">
			<div class="bar-right">
				<div class="piece">
					已选商品<strong class="piece_num">0</strong>件
				</div>
				<div class="totalMoney">
					共计: <strong class="total_text">￥0</strong>
				</div>
				<div class="calBtn">
					<a href="javascript:;" id="jiesuan">结算</a>
				</div>
			</div>
		</div>
		</c:if>
	</section>
	<section class="model_bg"></section>
	<section class="my_model">
		<p class="title">
			删除宝贝<span class="closeModel">X</span>
		</p>
		<p>您确认要删除该宝贝吗？</p>
		<div class="opBtn">
			<a href="javascript:;" class="dialog-sure">确定</a><a
				href="javascript:;" class="dialog-close">关闭</a>
		</div>
	</section>
</body>
</html>

$(function() {	
	/** ***************************首页**************************** */
	/* 快捷hover效果 */
	$(".kuaijie-info").hover(
					function() {
						var tid = $(this).find(".kj-dl1").find(".tidspan").text();
						$.ajax({
									url : "queryTypeOfCommodityById",
									data : {
										tid : tid
									},
									error : function(err) {
										alert("错误");
									},
									success : function(data) {
										// 二级菜单没有浮动效果，没有点击事件
										$(".kuaijie-con").html("");
										html_ = "";
										$.each(data.data,function(index, values) {
											html_ = html_+"<dl  class='kj-dl2' style='display:inline-block'>";
											html_ = html_+"<dt><a>"
													+ values.tname
													+ "</a></dt>";
											$.each(values.commodities,function(index2,value) {
												html_ = html_+"<dd class='ddname' ><span class='tid' style='display:none;' >"
													+ value.tid
													+ "</span><a style=' float:left; margin-right: 20px; ' >"
													+ value.tname
													+ "</a></dd>";
											});
											html_ = html_+"</dl>";
										});
										$(".kuaijie-con").append(html_);
									}
								});
						$(this).addClass('current');
					}, function() {
						$(this).removeClass('current');
					});
	/* 快捷hover效果 END */


	

	
	/* 在线商城左侧 hover 改变高度 */
	// var time2 = 500;
	// $(".zl-lhover").hover(function() {
	// $(this).toggleClass('zl-lhover1');
	// });
	$(".zl-lhover").hover(function() {
		var li_height = $(this).children("li").height();
		var li_length = $(this).children("li").length;
		var li_two_length = Math.ceil(li_length / 2);
		var li_two_height = li_height * li_two_length
		$(this).animate({
			height : li_two_height + 'px'
		})
		// $(this).height(li_two_height)
	}, function() {
		$(this).animate({
			height : '119px'
		})
		// alert(2)
	})
	/* 在线商城左侧 hover 改变高度 END */

	/* banner */
	$(".ban-ol1 li").click(
			function(event) {
				var key = 0;
				$(this).addClass("current").siblings().removeClass("current");
				$(".ban-ul1 li").eq($(this).index()).stop().fadeIn("3500")
						.siblings().stop().fadeOut("3500");
				key = $(this).index();
			});
	var timer = setInterval(autoplay, 3000);
	var key = 0;
	function autoplay() {
		key++;
		if (key > 3) {
			key = 0;
		}
		$(".ban-ol1 li").eq(key).addClass('current').siblings().removeClass(
				'current');
		$(".ban-ul1 li").eq(key).stop().fadeIn("3500").siblings().stop()
				.fadeOut("3500");
	}
	$(".banner").hover(function() {
		clearInterval(timer);
	}, function() {
		clearInterval(timer);
		timer = setInterval(autoplay, 3000);
	});
	/* banner END */
	
	/* 手风琴效果 */
	var time1 = 500;
	$(".tuijian-right li").hover(function() {
		$(this).stop().animate({
			"width" : "250px"
		}, time1).siblings().stop().animate({
			"width" : "107px"
		}, time1);/* 鼠标经过的时候， 当前的li 变600 它的兄弟 变100 */
	}, function() {
		$(".tuijian-right li").stop().animate({
			"width" : "125px"
		}, time1);
	});
	/* 手风琴效果 END */
	
	/** ***************************首页 END**************************** */

	/* 固定右侧 js */
	$(".youce .li1").hover(function() {
		$(this).addClass('current1');
	}, function() {
		$(this).removeClass('current1');
	});
	$(".youce .li3").hover(function() {
		$(this).addClass('current2');
	}, function() {
		$(this).removeClass('current2');
	});
	$(".youce .li4").hover(function() {
		$(this).addClass('current3');
	}, function() {
		$(this).removeClass('current3');
	});

	/** **************中林2 js***************** */
	$(".yjp-hover1").hover(function() {
		$(".yjp-show1").show();
	}, function() {
		$(".yjp-show1").hide();
	});

});
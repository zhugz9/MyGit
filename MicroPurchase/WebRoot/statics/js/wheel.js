$(function() {

	/* hover 切换 */
	$(".title1-ul1 li a").hover(
			function() {
				var index1 = $(this).parent().index();
				$(this).parent().addClass('current').siblings().removeClass(
						'current');
				$(this).parent().parent().parent().siblings().children(
						'.zl-con-right').children('.lihover').eq(index1).show()
						.siblings().hide();
			});
	/* hover 切换 END */

	/* hover 放上去的效果 */
	$(".zl-rul1 li").hover(function() {
		$(this).addClass('current');
	}, function() {
		$(this).removeClass('current');
	});
	/* hover 放上去的效果 END */

	$(".zl-con-right .lihover li").click(
			function() {
				var gid = $(this).find("span").html();
				var tid = $(this).parent().parent().parent().parent().find(
						".zl-title1").find(".title1-ul1").find("li").find(
						"span").html();
				location.href = "loadCommodityDetails?gid=" + gid + "&tid="
						+ tid;
			});

	// 支付密码
	$(".mima-ipt .passone").bind("input propertychange", function(event) {
		var text = $(this).val();
		if (text == "") {
		} else {
			$(this).next().focus();
		}
	});
	$(".mima-ipt .passtwo").bind("input propertychange", function(event) {
		var text = $(this).val();
		if (text == "") {
			$(this).prev().focus();
		} else {
			$(this).next().focus();
		}
	});
	$(".mima-ipt .passthree").bind("input propertychange", function(event) {
		var text = $(this).val();
		if (text == "") {
			$(this).prev().focus();
		} else {
			$(this).next().focus();
		}
	});
	$(".mima-ipt .passfour").bind("input propertychange", function(event) {
		var text = $(this).val();
		if (text == "") {
			$(this).prev().focus();
		} else {
			$(this).next().focus();
		}
	});
	$(".mima-ipt .passfive").bind("input propertychange", function(event) {
		var text = $(this).val();
		if (text == "") {
			$(this).prev().focus();
		} else {
			$(this).next().focus();
		}
	});
	$(".mima-ipt .passsix").bind("input propertychange", function(event) {
		var text = $(this).val();
		if (text == "") {
			$(this).prev().focus();
		} else {
		}
	});

	// 立即支付
	$(".mima-btn").click(
			function() {
				var passone = $(".mima-ipt .passone").val();
				var passtwo = $(".mima-ipt .passtwo").val();
				var passthree = $(".mima-ipt .passthree").val();
				var passfour = $(".mima-ipt .passfour").val();
				var passfive = $(".mima-ipt .passfive").val();
				var passsix = $(".mima-ipt .passsix").val();
				var pass = passone + passtwo + passthree + passfour + passfive
						+ passsix;
				if (passone == "" || passtwo == "" || passthree == ""
						|| passfour == "" || passfive == "" || passsix == "") {
					alert("请输入完整的支付密码！");
				} else {
					if (pass == "123456") {
						location.href = "PaymentSuccess";
					} else {
						location.href = "PayFailure";
					}
				}
			});
});

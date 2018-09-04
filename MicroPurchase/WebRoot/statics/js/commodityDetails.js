$(function() {

	// 加入购物车
	$("#addshoppingcart").click(function() {
		var gid = $("#gid").html();
		var nums = $("#nums").val();

		$.ajax({
			url : "isLogin",
			error : function(err) {
				alert("错误");
			},
			success : function(data) {
				if (data.status == 200) {
					$.ajax({
						url : "addshoppingcart",
						data : {
							nums : nums,
							gid : gid
						},
						error : function(err) {
							alert("错误");
						},
						success : function(data) {
							if (data.status == 200) {
								location.href = "JoinShopping";
							} else {
								alert("添加购物车失败");
							}
						}
					});
				} else {
					alert("请先登录再进行操作！");
					location.href = "login";
				}
			}
		});
	});

	// 立即购买
	$("#gobalance").click(function() {

		$.ajax({
			url : "isLogin",
			error : function(err) {
				alert("错误");
			},
			success : function(data) {
				if (data.status == 200) {

					var gid = $("#gid").html();
					var nums = $("#nums").val();
					location.href = "PaymentIinterfaceOne?nums="+nums+"&gid="+gid;
				} else {
					alert("请先登录再进行操作！");
					location.href = "login";
				}
			}
		});

	});
});
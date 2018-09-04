$(function() {
	$(".title1-ul1 li a").hover(function() {
		var li = $(this);
		var tid = $(this).parent().find("span").html();
		$.ajax({
			url : "queryLousById",
			data : {
				tid : tid
			},
			error : function(err) {
				alert("错误");
			},
			success : function(data) {
				li.parent().parent().parent().parent().find(".zl-con-right").html("");
				html_="";
				html_ = $("<ul class='zl-rul1 lihover'></ul>");
				$.each(data.data, function(index, values) {
					html_.append("<li><div class='sy-tu1'><a href='javascript:;'><span style='display: none;' >"+values.gid+"</span><img src="+values.image_path+" /></a></div>" +
							"<div class='sy-tit1'><a href='javascript:;'>"+values.gname+"</a></div>"+
							"<div class='sy-tit2'>" +
							"<p><a href='javascript:;'>"+values.sname+"</a></p>" +
							"<p>地址："+values.shop_address+"</p>"+
							"<p>电话："+values.phone+"</p>"+
							"</div></li>");
				});
				li.parent().parent().parent().parent().find(".zl-con-right").append(html_);
				loadjscssfile('statics/js/wheel.js', "js"); // 动态加载从题库添加试题js
			}
		});
	});
	
	function loadjscssfile(filename, filetype) {
	    if (filetype == "js") { // 判定文件类型
	        var fileref = document.createElement('script')// 创建标签
	        fileref.setAttribute("type", "text/javascript")// 定义属性type的值为text/javascript
	        fileref.setAttribute("src", filename)// 文件的地址
	    } else if (filetype == "css") { // 判定文件类型
	        var fileref = document.createElement("link")
	        fileref.setAttribute("rel", "stylesheet")
	        fileref.setAttribute("type", "text/css")
	        fileref.setAttribute("href", filename)
	    }
	    if (typeof fileref != "undefined")
	        document.getElementsByTagName("head")[0].appendChild(fileref)
	}
	
	
});
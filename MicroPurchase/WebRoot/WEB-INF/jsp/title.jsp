<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
  </head>
  
  <body>
    <div class="zl-hd w1200">
			<p class="hd-p1 f-l">
				<c:if test="${user==null }">
					您好，欢迎来到宅客微购，
					<a href="login"> 【请登录】 </a> <a href="Register">【免费注册】</a>
				</c:if>
				<c:if test="${user!=null}">
					Hi!&nbsp;&nbsp;${user.uname }，欢迎来到宅客微购
					<a href="Cancellation">【注销】</a>
				</c:if>
			</p>
			<p class="hd-p2 f-r">
				<a href="userData">个人中心</a><span>|</span> 
				<c:if test="${user!=null }">
					<a href="getAllForUid?uid=${user.uid}">我的购物车</a><span>|</span>
				</c:if>
				<c:if test="${user==null }">
					<a href="getAllForUid">我的购物车</a><span>|</span>
				</c:if>
				<c:if test="${user!=null }">
					<a href="getAllOrderForUid?uid=${user.uid}">交易记录</a>
				</c:if>
				<c:if test="${user==null }">
					<a href="getAllOrderForUid">交易记录</a>
				</c:if>
				
			</p>
			<div style="clear:both;"></div>
		</div>
  </body>
</html>

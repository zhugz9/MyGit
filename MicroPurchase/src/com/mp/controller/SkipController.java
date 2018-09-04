package com.mp.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URISyntaxException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.print.DocFlavor.URL;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.request.AlipayTradePagePayRequest;
import com.mp.config.AlipayConfig;
import com.mp.pojo.City;
import com.mp.pojo.OprderDetails;
import com.mp.pojo.OrderForGoods;
import com.mp.pojo.TypeOfCommodity;
import com.mp.pojo.User;
import com.mp.service.CityService;
import com.mp.service.CommodityDetailsService;
import com.mp.service.OprderDetailsService;
import com.mp.service.OrderForGoodsService;
import com.mp.service.ShoppingCartService;
import com.mp.service.TypeOfCommodityService;

@Controller
public class SkipController {

	@Autowired
	private CityService cityService;
	@Autowired
	private TypeOfCommodityService commodityService;

	// 此controller为帮助跳转的页面

	@RequestMapping("/main")
	public String toMain() {
		return "main";
	}

	@RequestMapping("/ktv")
	public String toKtv() {
		return "ktv_main";
	}

	@RequestMapping("/JoinShopping")
	public String toJoinShopping(Model model, HttpServletRequest request,
			HttpServletResponse response) {
		// 城市
		List<City> cities = cityService.selectByPrimaryKey();
		// 一级菜单
		List<TypeOfCommodity> commodities = commodityService
				.queryParentIdIsNull();
		// 一二级菜单
		List<TypeOfCommodity> commodities2 = commodityService
				.queryTypeOfCommodityById(commodities.size());
		// 城市
		request.setAttribute("cities", cities);
		// 一级菜单
		model.addAttribute("commodities", commodities);
		// 一二级菜单
		model.addAttribute("commodities2", commodities2);
		return "joinshoppingcart";
	}

	@RequestMapping("/userMessage")
	public String toUserMenssage() {
		return "redirect:getInfoByPageIndex";
	}

	@RequestMapping("/userMessagedetails")
	public String toUserMenssagedetails() {
		return "user_messagedetails";
	}

	@RequestMapping("/userData")
	public String toUserData(Model model, HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");

		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		PrintWriter pw = response.getWriter();
		if (user == null) {
			pw.print("<script type='text/javascript'> alert('请先登录再进行操作！'); location.href='login' </script>");
			return null;
		}

		// 城市
		List<City> cities = cityService.selectByPrimaryKey();
		// 一级菜单
		List<TypeOfCommodity> commodities = commodityService
				.queryParentIdIsNull();
		// 一二级菜单
		List<TypeOfCommodity> commodities2 = commodityService
				.queryTypeOfCommodityById(commodities.size());

		// 城市
		request.setAttribute("cities", cities);
		// 一级菜单
		model.addAttribute("commodities", commodities);
		// 一二级菜单
		model.addAttribute("commodities2", commodities2);

		return "user_data";
	}

	@RequestMapping("/CommodityDetails")
	public String toCommodityDetails() {
		return "commodityDetails";
	}

	@RequestMapping("/userOrder")
	public String toUserOrder(Model model, HttpServletRequest request,
			HttpServletResponse response) throws IOException {

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");

		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		PrintWriter pw = response.getWriter();
		if (user == null) {
			pw.print("<script type='text/javascript'> alert('请先登录再进行操作！'); location.href='login' </script>");
			return null;
		}

		// 城市
		List<City> cities = cityService.selectByPrimaryKey();
		// 一级菜单
		List<TypeOfCommodity> commodities = commodityService
				.queryParentIdIsNull();
		// 一二级菜单
		List<TypeOfCommodity> commodities2 = commodityService
				.queryTypeOfCommodityById(commodities.size());

		// 城市
		request.setAttribute("cities", cities);
		// 一级菜单
		model.addAttribute("commodities", commodities);
		// 一二级菜单
		model.addAttribute("commodities2", commodities2);

		return "user_order";
	}

	@RequestMapping("/confirmOrder")
	public String toConfirmOrder() {
		return "confirmOrder";
	}

	@RequestMapping("/user_vipIntegral")
	public String toUserVipIntegral(Model model, HttpServletRequest request,
			HttpServletResponse response) {

		// 城市
		List<City> cities = cityService.selectByPrimaryKey();
		// 一级菜单
		List<TypeOfCommodity> commodities = commodityService
				.queryParentIdIsNull();
		// 一二级菜单
		List<TypeOfCommodity> commodities2 = commodityService
				.queryTypeOfCommodityById(commodities.size());

		// 城市
		request.setAttribute("cities", cities);
		// 一级菜单
		model.addAttribute("commodities", commodities);
		// 一二级菜单
		model.addAttribute("commodities2", commodities2);

		return "user_vipIntegral";
	}

	@RequestMapping("/RetrievePwd")
	public String toRetrievePwd() {
		return "RetrievePwd";
	}

	@RequestMapping("/userAppointment")
	public String toUserAppointment() {
		return "user_appointment";
	}

	@RequestMapping("/Bookmark")
	public String toBookmark(Model model, HttpServletRequest request,
			HttpServletResponse response) {

		// 城市
		List<City> cities = cityService.selectByPrimaryKey();
		// 一级菜单
		List<TypeOfCommodity> commodities = commodityService
				.queryParentIdIsNull();
		// 一二级菜单
		List<TypeOfCommodity> commodities2 = commodityService
				.queryTypeOfCommodityById(commodities.size());

		// 城市
		request.setAttribute("cities", cities);
		// 一级菜单
		model.addAttribute("commodities", commodities);
		// 一二级菜单
		model.addAttribute("commodities2", commodities2);

		return "Bookmark";
	}

	@RequestMapping("/userOrderCollect")
	public String toUserOrderCollect() {
		return "user_order_collect";
	}

	@RequestMapping("/PurchaseRecord")
	public String toPurchaseRecord(Model model, HttpServletRequest request,
			HttpServletResponse response) {

		// 城市
		List<City> cities = cityService.selectByPrimaryKey();
		// 一级菜单
		List<TypeOfCommodity> commodities = commodityService
				.queryParentIdIsNull();
		// 一二级菜单
		List<TypeOfCommodity> commodities2 = commodityService
				.queryTypeOfCommodityById(commodities.size());

		// 城市
		request.setAttribute("cities", cities);
		// 一级菜单
		model.addAttribute("commodities", commodities);
		// 一二级菜单
		model.addAttribute("commodities2", commodities2);

		return "PurchaseRecord";
	}

	@RequestMapping("/userBrowseRecords")
	public String toUserBrowseRecords(Model model, HttpServletRequest request,
			HttpServletResponse response) {
		// 城市
		List<City> cities = cityService.selectByPrimaryKey();
		// 一级菜单
		List<TypeOfCommodity> commodities = commodityService
				.queryParentIdIsNull();
		// 一二级菜单
		List<TypeOfCommodity> commodities2 = commodityService
				.queryTypeOfCommodityById(commodities.size());

		// 城市
		request.setAttribute("cities", cities);
		// 一级菜单
		model.addAttribute("commodities", commodities);
		// 一二级菜单
		model.addAttribute("commodities2", commodities2);
		return "user_BrowseRecords";
	}

	@RequestMapping("/BusinessShop")
	public String toBusinessShop() {
		return "BusinessShop";
	}

	@RequestMapping("/IntegralMall")
	public String toIntegralMall() {
		return "IntegralMall";
	}

	@RequestMapping("/ConfirmOrderIntergral")
	public String toConfirmOrderIntergral() {
		return "confirmOrderIntergral";
	}

	@RequestMapping("/AboutUs")
	public String toAboutUs() {
		return "aboutUs";
	}

	@RequestMapping("/userAddress")
	public String touserAddress(Model model, HttpServletRequest request,
			HttpServletResponse response) {
		// 城市
		List<City> cities = cityService.selectByPrimaryKey();
		// 一级菜单
		List<TypeOfCommodity> commodities = commodityService
				.queryParentIdIsNull();
		// 一二级菜单
		List<TypeOfCommodity> commodities2 = commodityService
				.queryTypeOfCommodityById(commodities.size());

		// 城市
		request.setAttribute("cities", cities);
		// 一级菜单
		model.addAttribute("commodities", commodities);
		// 一二级菜单
		model.addAttribute("commodities2", commodities2);

		return "user_address";
	}

	@RequestMapping("/SecondhandMarket")
	public String toSecondhandMarket() {
		return "SecondhandMarket";
	}

	@RequestMapping("/SearchListBrand")
	public String toSearchListBrand() {
		return "SearchList_Brand";
	}

	@RequestMapping("/ServiceAgreement")
	public String toServiceAgreement() {
		return "ServiceAgreement";
	}

	@RequestMapping("/CommonProblem")
	public String toCommonProblem() {
		return "CommonProblem";
	}

	@RequestMapping("/ShoppingFlow")
	public String toShoppingFlow() {
		return "shopping_flow";
	}

	@RequestMapping("/Furniture")
	public String toFurniture() {
		return "furniture";
	}

	@RequestMapping("/Education")
	public String toEducation() {
		return "education";
	}

	@RequestMapping("/Housekeeping")
	public String toHousekeeping() {
		return "housekeeping";
	}

	@RequestMapping("/login")
	public String toLogin() {
		return "login";
	}

	@RequestMapping("/Beautyworld")
	public String toBeautyworld() {
		return "beautyWorld";
	}

	@RequestMapping("/DistributionFee")
	public String toDistributionFee() {
		return "distributionFee";
	}

	@RequestMapping("/CarProperty")
	public String toCarProperty() {
		return "CarProperty";
	}

	@RequestMapping("/Register")
	public String toRegister() {
		return "register";
	}

	@RequestMapping("/Restaurant_main")
	public String toRestaurant_main() {
		return "Restaurant_main";
	}

	@RequestMapping("/MallActivity")
	public String toMallActivity() {
		return "MallActivity";
	}

	@RequestMapping("/SpecialTopicOfMallActivity")
	public String toSpecialTopicOfMallActivity() {
		return "SpecialTopicOfMallActivity";
	}

	@RequestMapping("/MerchantShop")
	public String toMerchantShop() {
		return "MerchantShop";
	}

	@RequestMapping("/CommodityDetailsRummery")
	public String toCommodityDetailsRummery() {
		return "CommodityDetailsRummery";
	}

	@RequestMapping("/ShoppingCar")
	public String toShoppingCar(HttpServletRequest request,
			HttpServletResponse response) throws IOException {

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");

		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		PrintWriter pw = response.getWriter();
		if (user == null) {
			pw.print("<script type='text/javascript'> alert('请先登录再进行操作！'); location.href='login' </script>");
			return null;
		}
		return "shoppingcar";
	}

	@RequestMapping("/SearchListSearchForMerchants")
	public String toSearchListSearchForMerchants() {
		return "SearchListSearchForMerchants";
	}

	@RequestMapping("/GeneralPrinciplesOfReturnAndExchangePolicy")
	public String toGeneralPrinciplesOfReturnAndExchangePolicy() {
		return "GeneralPrinciplesOfReturnAndExchangePolicy";
	}

	@RequestMapping("/IWantToEvaluate")
	public String toIWantToEvaluate() {
		return "IWantToEvaluate";
	}

	@RequestMapping("/userOrderFavorite")
	public String toUserOrderFavorite() {
		return "user_orderFavorite";
	}

	@RequestMapping("/ReservationInterface")
	public String toReservationInterface() {
		return "ReservationInterface";
	}

	@RequestMapping("/OnlineMallHome")
	public String toOnlineMallHome() {
		return "OnlineMallHome";
	}

	@RequestMapping("/OnlinePayment")
	public String toOnlinePayment() {
		return "OnlinePayment";
	}

	@Autowired
	private CommodityDetailsService commodityDetailsService;
	@Autowired
	private OrderForGoodsService forGoodsService;
	@Autowired
	private OprderDetailsService detailsService;
	@Autowired
	private ShoppingCartService cartService;

	@RequestMapping("/PaymentSuccess")
	public String toPaymentSuccess(HttpServletRequest request,
			HttpServletResponse response) {
		HttpSession session = request.getSession();
		List<OprderDetails> oprderDetails = (List<OprderDetails>) session
				.getAttribute("oprderDetails");
		User user = (User) session.getAttribute("user");
		String[] sids = (String[]) session.getAttribute("sids");

		int result = 0;
		for (OprderDetails oprderDetails2 : oprderDetails) {
			// 订单详情表
			OprderDetails details = new OprderDetails();
			// 订单表
			OrderForGoods forGoods = new OrderForGoods();
			// 订单表
			forGoods.setGid(oprderDetails2.getGid());
			forGoods.setUid(user.getUid());
			forGoodsService.addorderForGoods(forGoods);
			int oid = forGoods.getOid();

			// 订单详情表
			details.setOid(oid);
			details.setNumber_of_commodities(oprderDetails2
					.getNumber_of_commodities());
			details.setUnit_price_of_goods(oprderDetails2
					.getUnit_price_of_goods());
			details.setTotal_amount(oprderDetails2.getTotal_amount());
			long time = System.currentTimeMillis();
			details.setOrdernumber(time + "");
			Date day = new Date();
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
			details.setOrder_date(df.format(day));
			result = detailsService.addOrder(details);
		}

		// 城市
		List<City> cities = cityService.selectByPrimaryKey();
		// 一级菜单
		List<TypeOfCommodity> commodities = commodityService
				.queryParentIdIsNull();
		// 一二级菜单
		List<TypeOfCommodity> commodities2 = commodityService
				.queryTypeOfCommodityById(commodities.size());
		// 城市
		request.setAttribute("cities", cities);
		// 一级菜单
		request.setAttribute("commodities", commodities);
		// 一二级菜单
		request.setAttribute("commodities2", commodities2);

		if (result > 0) {
			if (sids != null) {
				cartService.deleteSome(sids);
			}
			return "PaymentSuccess";
		} else {
			return "PayFailure";
		}
	}

	@RequestMapping("/PaymentIinterfaceOne")
	public String toPaymentIinterface(Integer nums, Integer gid,
			HttpServletRequest request, HttpServletResponse response) {
		List<OprderDetails> olist = new ArrayList<OprderDetails>();
		double originalCost = 0.00;
		if (nums > 0 && gid > 0) {
			originalCost = commodityDetailsService.queryOriginalCost(gid);
			OprderDetails s = new OprderDetails();
			s.setGid(gid);
			s.setNumber_of_commodities(nums);
			s.setUnit_price_of_goods(originalCost);
			s.setTotal_amount(originalCost * nums);
			olist.add(s);
		}
		HttpSession session = request.getSession();
		session.setAttribute("oprderDetails", olist);

		// 调用支付宝
		AlipayClient alipayClient = new DefaultAlipayClient(
				AlipayConfig.gatewayUrl, AlipayConfig.app_id,
				AlipayConfig.merchant_private_key, "json",
				AlipayConfig.charset, AlipayConfig.alipay_public_key,
				AlipayConfig.sign_type);

		// 设置请求参数
		AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();
		alipayRequest.setReturnUrl(AlipayConfig.return_url);
		alipayRequest.setNotifyUrl(AlipayConfig.notify_url);

		long time = System.currentTimeMillis();

		// 商户订单号，商户网站订单系统中唯一订单号，必填
		String out_trade_no = new String(time + "");
		// 付款金额，必填
		double zongjia = originalCost * nums;
		double total_amount = (double) Math.round(zongjia * 100) / 100;
		System.out.println(total_amount);
		// 订单名称，必填
		String subject = new String("Test");
		// 商品描述，可空
		String body = new String("");

		request.getSession().setAttribute("out_trade_no", out_trade_no);
		request.getSession().setAttribute("total_amount", total_amount);

		return "alipay.trade.page.pay";
	}

	@RequestMapping("/PaymentIinterfaceTwo")
	public String PaymentIinterfaceTwo(String[] gwcgid, String[] gwctotal,
			String[] gwcdj, String[] gwcsid, String[] gwcnum,
			HttpServletRequest request, HttpServletResponse response)
			throws AlipayApiException, IOException, URISyntaxException {
		List<OprderDetails> oprderDetails = new ArrayList<OprderDetails>();
		String[] sids = gwcsid;
		// 总价不对 需要乘数量 订单时间穿过去

		double zongjia = 0;

		for (int i = 0; i < gwcnum.length; i++) {
			OprderDetails details = new OprderDetails();
			details.setGid(Integer.parseInt(gwcgid[i]));
			details.setNumber_of_commodities(Integer.parseInt(gwcnum[i]));
			details.setUnit_price_of_goods(Double.parseDouble(gwcdj[i]));
			zongjia += Double.parseDouble(gwcdj[i])
					* Double.parseDouble(gwcnum[i]);
			details.setTotal_amount(Double.parseDouble(gwctotal[i]));
			oprderDetails.add(details);
		}
		HttpSession session = request.getSession();
		session.setAttribute("oprderDetails", oprderDetails);
		session.setAttribute("sids", sids);

		// 调用支付宝
		AlipayClient alipayClient = new DefaultAlipayClient(
				AlipayConfig.gatewayUrl, AlipayConfig.app_id,
				AlipayConfig.merchant_private_key, "json",
				AlipayConfig.charset, AlipayConfig.alipay_public_key,
				AlipayConfig.sign_type);

		// 设置请求参数
		AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();
		alipayRequest.setReturnUrl(AlipayConfig.return_url);
		alipayRequest.setNotifyUrl(AlipayConfig.notify_url);

		long time = System.currentTimeMillis();

		// 商户订单号，商户网站订单系统中唯一订单号，必填
		String out_trade_no = new String(time + "");
		// 付款金额，必填
		double total_amount = (double) Math.round(zongjia * 100) / 100;
		System.out.println(total_amount);
		// 订单名称，必填
		String subject = new String("Test");
		// 商品描述，可空
		String body = new String("");

		request.getSession().setAttribute("out_trade_no", out_trade_no);
		request.getSession().setAttribute("total_amount", total_amount);

		return "alipay.trade.page.pay";
	}

	@RequestMapping("/PayFailure")
	public String toPayFailure(HttpServletRequest request,
			HttpServletResponse response) {
		// 城市
		List<City> cities = cityService.selectByPrimaryKey();
		// 城市
		request.setAttribute("cities", cities);
		return "PayFailure";
	}

	@RequestMapping("/ReturnDetails")
	public String toReturnDetails() {
		return "ReturnDetails";
	}

}

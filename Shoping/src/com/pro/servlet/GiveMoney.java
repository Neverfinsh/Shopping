package com.pro.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pro.biz.DingdanBiz;
import com.pro.biz.DingdanBizImpl;
import com.pro.biz.GoodsBiz;
import com.pro.biz.GoodsBizImpl;
import com.pro.biz.ShopBiz;
import com.pro.biz.ShopBizImpl;
import com.pro.entity.Dingdan;
import com.pro.entity.Goods;
import com.pro.entity.Shop;
import com.pro.entity.Users;
import com.pro.utils.DBUtils;

public class GiveMoney extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		try {
			
			HttpSession session = req.getSession();
		Map<Integer, Goods> map = (Map<Integer, Goods>) session
				.getAttribute("car");
	              Users user=(Users) session.getAttribute("user");
		Set<Integer> set = map.keySet();
		List<Goods> list = new ArrayList<Goods>();
		Goods goods=new Goods();
		for (Integer integer : set) {
			  goods= map.get(integer);
			  list.add(goods);
		}
		//上面是从购物车中将对象传过来
		GoodsBiz goodsBiz=new GoodsBizImpl();
        ShopBiz shopBiz=new ShopBizImpl();
        DingdanBiz dingdanBiz=new DingdanBizImpl();
	    Shop shop=new Shop(user, new Date().toLocaleString(), 0);
	    shop.setId(8);
	    shopBiz.addShop(shop);
	    System.out.println(shop.getId());
		for (Goods goods1 : list) {
			if(goodsBiz.downByGoods(goods1.getId(), goods1.getCount())>0){
			    Dingdan  dingdan=new Dingdan();
			    dingdan.setCount(goods1.getCount());
			    dingdan.setGoodsname(goods1.getGoodsname());
			    dingdan.setGoodsprice(goods1.getPrice());
			    dingdan.setShop(shop);
			    dingdanBiz.addDingdan(dingdan);
			}else{
			System.out.println("修改失败");
			}
	       }
		   resp.sendRedirect("index.jsp");
		
		} catch (Exception e) {
			e.printStackTrace();
		}}

}

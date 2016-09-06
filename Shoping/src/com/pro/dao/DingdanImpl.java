package com.pro.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.pro.entity.Dingdan;
import com.pro.entity.Shop;
import com.pro.utils.DBUtils;

public class DingdanImpl implements DingdanDao {

	@Override
	public int addDingdan(Dingdan dingdan) throws Exception {
		Connection conn = DBUtils.getConnection();
		String sql = "insert into dingdan(goodsname,goodsprice,count,shopid) value(?,?,?,?)";
		PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1, dingdan.getGoodsname());
        ps.setDouble(2, dingdan.getGoodsprice());
        ps.setInt(3, dingdan.getCount());
        System.out.println(dingdan.getShop().getId());
	    ps.setInt(4, dingdan.getShop().getId());
        return ps.executeUpdate();
	}
	
	public static void main(String[] args) {
		DingdanImpl dingdanImpl=new DingdanImpl();
		Shop shop=new Shop();
		shop.setId(6);
		Dingdan dingdan=new Dingdan(3, "asd", 33.3, 20,shop);
		try {
			dingdanImpl.addDingdan(dingdan);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	}

}

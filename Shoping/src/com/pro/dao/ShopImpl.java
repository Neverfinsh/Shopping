package com.pro.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.pro.entity.Shop;
import com.pro.utils.DBUtils;

public class ShopImpl  implements ShopDao{

	@Override
	public int addShop(Shop shop) throws Exception {
		Connection conn = DBUtils.getConnection();
		String sql = "insert into Shop(userid,date) value(?,?)";
		PreparedStatement ps = conn.prepareStatement(sql);
        ps.setInt(1, shop.getUser().getId());
        ps.setString(2, shop.getDate());
		return ps.executeUpdate();
	 }

}

package com.pro.biz;

import com.pro.dao.DingdanDao;
import com.pro.dao.DingdanImpl;
import com.pro.entity.Dingdan;
import com.pro.servlet.deleteUser;

public class DingdanBizImpl implements DingdanBiz {
    private DingdanDao DingdanDao=new DingdanImpl();
	@Override
	public int addDingdan(Dingdan dingdan) throws Exception {
		// TODO Auto-generated method stub
		return DingdanDao.addDingdan(dingdan);
	}

}

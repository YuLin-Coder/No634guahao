package com.action;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.dao.TKeshiDAO;
import com.dao.TYiyuanDAO;
import com.dao.TZhuanjiaDAO;
import com.model.TZhuanjia;
import com.opensymphony.xwork2.ActionSupport;

public class zhuanjiaAction extends ActionSupport
{
	private Integer id;
	private int yiyuanId;
	private int keshiId;
	private String xingming;
	
	private String xingbie;
	private Integer nianling;
	private String shanchang;
	private String leixing;//专家门诊--普通门诊
	
	private String fujian;
	private String del;
	
	private TZhuanjiaDAO zhuanjiaDAO;
	private TKeshiDAO keshiDAO;
	private TYiyuanDAO yiyuanDAO;
	
	public String zhuanjiaAdd()
	{
		TZhuanjia zhuanjia=new TZhuanjia();
		
		//zhuanjia.setId(0);]
		zhuanjia.setYiyuanId(yiyuanId);
		zhuanjia.setKeshiId(keshiId);
		zhuanjia.setXingming(xingming);
		
		zhuanjia.setXingbie(xingbie);
		zhuanjia.setNianling(nianling);
		zhuanjia.setShanchang(shanchang);
		zhuanjia.setLeixing(leixing);
		
		zhuanjia.setFujian(fujian);
		zhuanjia.setDel("no");
		
		zhuanjiaDAO.save(zhuanjia);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("msg", "信息添加完毕");
		return "msg";
	}
	
	
	public String zhuanjiaMana()
	{
		String sql="from TZhuanjia where del='no' order by yiyuanId,keshiId";
		List zhuanjiaList =zhuanjiaDAO.getHibernateTemplate().find(sql);
		for(int i=0;i<zhuanjiaList.size();i++)
		{
			TZhuanjia zhuanjia=(TZhuanjia)zhuanjiaList.get(i);
			zhuanjia.setKeshi(keshiDAO.findById(zhuanjia.getKeshiId()));
			zhuanjia.setYiyuan(yiyuanDAO.findById(zhuanjia.getYiyuanId()));
		}
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("zhuanjiaList", zhuanjiaList);
		return ActionSupport.SUCCESS;
	}
	
	public String zhuanjiaDel()
	{   
		String sql="update TZhuanjia set del='yes' where id="+id;
		zhuanjiaDAO.getHibernateTemplate().bulkUpdate(sql);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("msg", "信息删除完毕");
		return "msg";
	}
	
	
	public String zhuanjiaAllByYiyuan()
	{
		String sql="from TZhuanjia where del='no' and yiyuanId="+yiyuanId;
		List zhuanjiaList =zhuanjiaDAO.getHibernateTemplate().find(sql);
		for(int i=0;i<zhuanjiaList.size();i++)
		{
			TZhuanjia zhuanjia=(TZhuanjia)zhuanjiaList.get(i);
			zhuanjia.setKeshi(keshiDAO.findById(zhuanjia.getKeshiId()));
			zhuanjia.setYiyuan(yiyuanDAO.findById(zhuanjia.getYiyuanId()));
		}
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("zhuanjiaList", zhuanjiaList);
		return ActionSupport.SUCCESS;
	}
	
	
	public String zhuanjiaDetailQian()
	{
		TZhuanjia zhuanjia=zhuanjiaDAO.findById(id);
		zhuanjia.setKeshi(keshiDAO.findById(zhuanjia.getKeshiId()));
		zhuanjia.setYiyuan(yiyuanDAO.findById(zhuanjia.getYiyuanId()));
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("zhuanjia", zhuanjia);
		return ActionSupport.SUCCESS;
	}

	
	public String zhuanjiaRes()
	{
		StringBuffer sql=new StringBuffer("from TZhuanjia where del='no' and yiyuanId="+yiyuanId);
		sql.append(" and keshiId="+keshiId);
		sql.append(" and leixing like '%"+leixing.trim()+"%'");
		sql.append(" and xingming like '%"+xingming.trim()+"%'");
		
		List zhuanjiaList =zhuanjiaDAO.getHibernateTemplate().find(sql.toString());
		
		
		for(int i=0;i<zhuanjiaList.size();i++)
		{
			TZhuanjia zhuanjia=(TZhuanjia)zhuanjiaList.get(i);
			zhuanjia.setKeshi(keshiDAO.findById(zhuanjia.getKeshiId()));
			zhuanjia.setYiyuan(yiyuanDAO.findById(zhuanjia.getYiyuanId()));
		}
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("zhuanjiaList", zhuanjiaList);
		return ActionSupport.SUCCESS;
	}

	public Integer getId()
	{
		return id;
	}


	public void setId(Integer id)
	{
		this.id = id;
	}


	public int getYiyuanId()
	{
		return yiyuanId;
	}


	public void setYiyuanId(int yiyuanId)
	{
		this.yiyuanId = yiyuanId;
	}


	public int getKeshiId()
	{
		return keshiId;
	}


	public void setKeshiId(int keshiId)
	{
		this.keshiId = keshiId;
	}


	public String getXingming()
	{
		return xingming;
	}


	public void setXingming(String xingming)
	{
		this.xingming = xingming;
	}


	public String getXingbie()
	{
		return xingbie;
	}


	public void setXingbie(String xingbie)
	{
		this.xingbie = xingbie;
	}


	public Integer getNianling()
	{
		return nianling;
	}


	public void setNianling(Integer nianling)
	{
		this.nianling = nianling;
	}


	public String getShanchang()
	{
		return shanchang;
	}


	public void setShanchang(String shanchang)
	{
		this.shanchang = shanchang;
	}


	public String getLeixing()
	{
		return leixing;
	}


	public void setLeixing(String leixing)
	{
		this.leixing = leixing;
	}


	public String getFujian()
	{
		return fujian;
	}


	public void setFujian(String fujian)
	{
		this.fujian = fujian;
	}


	public String getDel()
	{
		return del;
	}


	public void setDel(String del)
	{
		this.del = del;
	}


	public TZhuanjiaDAO getZhuanjiaDAO()
	{
		return zhuanjiaDAO;
	}


	public void setZhuanjiaDAO(TZhuanjiaDAO zhuanjiaDAO)
	{
		this.zhuanjiaDAO = zhuanjiaDAO;
	}


	public TKeshiDAO getKeshiDAO()
	{
		return keshiDAO;
	}


	public void setKeshiDAO(TKeshiDAO keshiDAO)
	{
		this.keshiDAO = keshiDAO;
	}


	public TYiyuanDAO getYiyuanDAO()
	{
		return yiyuanDAO;
	}


	public void setYiyuanDAO(TYiyuanDAO yiyuanDAO)
	{
		this.yiyuanDAO = yiyuanDAO;
	}

}

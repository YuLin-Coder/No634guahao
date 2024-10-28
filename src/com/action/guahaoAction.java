package com.action;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.dao.TGuahaoDAO;
import com.dao.TZhuanjiaDAO;
import com.model.TGuahao;
import com.model.TUser;
import com.model.TZhuanjia;
import com.opensymphony.xwork2.ActionSupport;

public class guahaoAction extends ActionSupport
{
	private Integer id;
	private Integer zhuanjiaId;
	private Integer userId;
	private String riqi;

	private String jibing;
	private String xingming;
	private String lianxi;
	
	private String message;
	private String path;
	
	private TGuahaoDAO guahaoDAO;
	private TZhuanjiaDAO zhuanjiaDAO;
	
	public String guahaoAdd()
	{
		HttpServletRequest request=ServletActionContext.getRequest();
		HttpSession session=request.getSession();
		TUser user=(TUser)session.getAttribute("user");
		
		
		TGuahao guahao=new TGuahao();
		
		guahao.setZhuanjiaId(zhuanjiaId);
		guahao.setUserId(user.getUserId());
		guahao.setRiqi(riqi);
		guahao.setJibing(jibing);
		
		guahao.setXingming(xingming);
		guahao.setLianxi(lianxi);
		
		guahaoDAO.save(guahao);
		
		
		this.setMessage("成功挂号");
		this.setPath("index.action");
		return "succeed";
	}
	
	
	public String guahaoDel()
	{   
		HttpServletRequest request=ServletActionContext.getRequest();
		
		TGuahao guahao=guahaoDAO.findById(id);
		guahaoDAO.delete(guahao);
		
		request.setAttribute("msg", "成功取消挂号");
		return "msg";
	}
	
	

	public String guahaoMana_user()
	{
		HttpServletRequest request=ServletActionContext.getRequest();
		HttpSession session=request.getSession();
		TUser user=(TUser)session.getAttribute("user");
		
		String sql="from TGuahao where userId="+user.getUserId();
		List guahaoList =guahaoDAO.getHibernateTemplate().find(sql);
		for(int i=0;i<guahaoList.size();i++)
		{
			TGuahao guahao=(TGuahao)guahaoList.get(i);
			guahao.setZhuanjia(zhuanjiaDAO.findById(guahao.getZhuanjiaId()));
		}
		
		request.setAttribute("guahaoList", guahaoList);
		return ActionSupport.SUCCESS;
	}
	
	
	
	public String guahaoMana_zhuanjia()
	{
		HttpServletRequest request=ServletActionContext.getRequest();
		HttpSession session=request.getSession();
		TZhuanjia zhuanjia=(TZhuanjia)session.getAttribute("zhuanjia");
		
		String sql="from TGuahao where zhuanjiaId="+zhuanjia.getId();
		List guahaoList =guahaoDAO.getHibernateTemplate().find(sql);
		for(int i=0;i<guahaoList.size();i++)
		{
			TGuahao guahao=(TGuahao)guahaoList.get(i);
			guahao.setZhuanjia(zhuanjiaDAO.findById(guahao.getZhuanjiaId()));
		}
		
		request.setAttribute("guahaoList", guahaoList);
		return ActionSupport.SUCCESS;
	}
	
	
	public TGuahaoDAO getGuahaoDAO()
	{
		return guahaoDAO;
	}


	public void setGuahaoDAO(TGuahaoDAO guahaoDAO)
	{
		this.guahaoDAO = guahaoDAO;
	}


	public TZhuanjiaDAO getZhuanjiaDAO()
	{
		return zhuanjiaDAO;
	}


	public String getMessage()
	{
		return message;
	}


	public void setMessage(String message)
	{
		this.message = message;
	}


	public String getPath()
	{
		return path;
	}


	public void setPath(String path)
	{
		this.path = path;
	}


	public void setZhuanjiaDAO(TZhuanjiaDAO zhuanjiaDAO)
	{
		this.zhuanjiaDAO = zhuanjiaDAO;
	}


	public Integer getId()
	{
		return id;
	}


	public void setId(Integer id)
	{
		this.id = id;
	}


	public String getJibing()
	{
		return jibing;
	}


	public void setJibing(String jibing)
	{
		this.jibing = jibing;
	}


	public String getLianxi()
	{
		return lianxi;
	}


	public void setLianxi(String lianxi)
	{
		this.lianxi = lianxi;
	}


	

	public String getRiqi()
	{
		return riqi;
	}


	public void setRiqi(String riqi)
	{
		this.riqi = riqi;
	}


	public Integer getUserId()
	{
		return userId;
	}


	public void setUserId(Integer userId)
	{
		this.userId = userId;
	}


	public String getXingming()
	{
		return xingming;
	}


	public void setXingming(String xingming)
	{
		this.xingming = xingming;
	}


	public Integer getZhuanjiaId()
	{
		return zhuanjiaId;
	}


	public void setZhuanjiaId(Integer zhuanjiaId)
	{
		this.zhuanjiaId = zhuanjiaId;
	}

}

package com.dao;

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.model.TZhuanjia;

/**
 * Data access object (DAO) for domain model class TZhuanjia.
 * 
 * @see com.model.TZhuanjia
 * @author MyEclipse Persistence Tools
 */

public class TZhuanjiaDAO extends HibernateDaoSupport
{
	private static final Log log = LogFactory.getLog(TZhuanjiaDAO.class);

	protected void initDao()
	{
		// do nothing
	}

	public void save(TZhuanjia transientInstance)
	{
		log.debug("saving TZhuanjia instance");
		try
		{
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re)
		{
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(TZhuanjia persistentInstance)
	{
		log.debug("deleting TZhuanjia instance");
		try
		{
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re)
		{
			log.error("delete failed", re);
			throw re;
		}
	}

	public TZhuanjia findById(java.lang.Integer id)
	{
		log.debug("getting TZhuanjia instance with id: " + id);
		try
		{
			TZhuanjia instance = (TZhuanjia) getHibernateTemplate().get(
					"com.model.TZhuanjia", id);
			return instance;
		} catch (RuntimeException re)
		{
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(TZhuanjia instance)
	{
		log.debug("finding TZhuanjia instance by example");
		try
		{
			List results = getHibernateTemplate().findByExample(instance);
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re)
		{
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value)
	{
		log.debug("finding TZhuanjia instance with property: " + propertyName
				+ ", value: " + value);
		try
		{
			String queryString = "from TZhuanjia as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re)
		{
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findAll()
	{
		log.debug("finding all TZhuanjia instances");
		try
		{
			String queryString = "from TZhuanjia";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re)
		{
			log.error("find all failed", re);
			throw re;
		}
	}

	public TZhuanjia merge(TZhuanjia detachedInstance)
	{
		log.debug("merging TZhuanjia instance");
		try
		{
			TZhuanjia result = (TZhuanjia) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re)
		{
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(TZhuanjia instance)
	{
		log.debug("attaching dirty TZhuanjia instance");
		try
		{
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re)
		{
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(TZhuanjia instance)
	{
		log.debug("attaching clean TZhuanjia instance");
		try
		{
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re)
		{
			log.error("attach failed", re);
			throw re;
		}
	}

	public static TZhuanjiaDAO getFromApplicationContext(ApplicationContext ctx)
	{
		return (TZhuanjiaDAO) ctx.getBean("TZhuanjiaDAO");
	}
}
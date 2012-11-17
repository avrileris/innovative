package com.dd4.common.jpa.criteria;

import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.persistence.Query;


/**
 * <tt>CriteriaQuery</tt> is a simplified API for retrieving entities by composing
 * <tt>Criterion</tt> objects. This is a very convenient approach for
 * functionality like "search" screens where there is a variable number of
 * conditions to be placed upon the result set.<br>
 * <br>
 * The <tt>Session</tt> is a factory for <tt>CriteriaQuery</tt>. <tt>Criterion</tt>
 * instances are usually obtained via the factory methods on
 * <tt>Restrictions</tt>. eg.
 * 
 */
public interface CriteriaQuery<T> {

	String getAlias();

	CriteriaQuery addProjection(Projection projection);

	CriteriaQuery addRestriction(Criterion criterion);

	CriteriaQuery addOrder(Order order);

	CriteriaQuery createAlias(String associationPath, String alias);

	CriteriaQuery addJoin(Join join);

	String getJpaValue(Object value);

	Class<?> getEntityClass();

	String getAliasedPropertyName(String propertyName);

	ProjectionList clearProjections();

	Query createQuery(EntityManager entityManager);

	void addSubCriteria(CriteriaQuery subCriteria);

	Map<String, Object> getQueryParameters();

	CriteriaQuery getParentCriteria();

	List<String> getIncludedAliases();

	void setParentCriteria(CriteriaQuery parentCriteria);
}
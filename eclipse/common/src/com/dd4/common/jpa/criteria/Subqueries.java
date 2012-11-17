package com.dd4.common.jpa.criteria;

import org.apache.xmlbeans.impl.xb.xsdschema.RestrictionDocument.Restriction;


/**
 * Factory class for criterion instances that represent expressions
 * involving subqueries.
 * 
 * @see Restriction
 * @see Projection
 * @see org.CriteriaQuery.Criteria
 */
public class Subqueries {
		
	public static Criterion exists(CriteriaQuery subCriteria) {
		return new ExistsSubqueryExpression("EXISTS", subCriteria);
	}
	
	public static Criterion notExists(CriteriaQuery subCriteria) {
		return new ExistsSubqueryExpression("NOT EXISTS", subCriteria);
	}
	
	public static Criterion propertyEqAll(String propertyName, CriteriaQuery subCriteria) {
		return new PropertySubqueryExpression(propertyName, "=", "ALL", subCriteria);
	}
	
	public static Criterion propertyIn(String propertyName, CriteriaQuery subCriteria) {
		return new PropertySubqueryExpression(propertyName, "IN", null, subCriteria);
	}
	
	public static Criterion propertyNotIn(String propertyName, CriteriaQuery subCriteria) {
		return new PropertySubqueryExpression(propertyName, "NOT IN", null, subCriteria);
	}
	
	public static Criterion propertyEq(String propertyName, CriteriaQuery subCriteria) {
		return new PropertySubqueryExpression(propertyName, "=", null, subCriteria);
	}
	
	public static Criterion propertyNe(String propertyName, CriteriaQuery subCriteria) {
		return new PropertySubqueryExpression(propertyName, "<>", null, subCriteria);
	}
	
	public static Criterion propertyGt(String propertyName, CriteriaQuery subCriteria) {
		return new PropertySubqueryExpression(propertyName, ">", null, subCriteria);
	}
	
	public static Criterion propertyLt(String propertyName, CriteriaQuery subCriteria) {
		return new PropertySubqueryExpression(propertyName, "<", null, subCriteria);
	}
	
	public static Criterion propertyGe(String propertyName, CriteriaQuery subCriteria) {
		return new PropertySubqueryExpression(propertyName, ">=", null, subCriteria);
	}
	
	public static Criterion propertyLe(String propertyName, CriteriaQuery subCriteria) {
		return new PropertySubqueryExpression(propertyName, "<=", null, subCriteria);
	}
	
	public static Criterion propertyGtAll(String propertyName, CriteriaQuery subCriteria) {
		return new PropertySubqueryExpression(propertyName, ">", "ALL", subCriteria);
	}
	
	public static Criterion propertyLtAll(String propertyName, CriteriaQuery subCriteria) {
		return new PropertySubqueryExpression(propertyName, "<", "ALL", subCriteria);
	}
	
	public static Criterion propertyGeAll(String propertyName, CriteriaQuery subCriteria) {
		return new PropertySubqueryExpression(propertyName, ">=", "ALL", subCriteria);
	}
	
	public static Criterion propertyLeAll(String propertyName, CriteriaQuery subCriteria) {
		return new PropertySubqueryExpression(propertyName, "<=", "ALL", subCriteria);
	}
	
	public static Criterion propertyGtSome(String propertyName, CriteriaQuery subCriteria) {
		return new PropertySubqueryExpression(propertyName, ">", "SOME", subCriteria);
	}
	
	public static Criterion propertyLtSome(String propertyName, CriteriaQuery subCriteria) {
		return new PropertySubqueryExpression(propertyName, "<", "SOME", subCriteria);
	}
	
	public static Criterion propertyGeSome(String propertyName, CriteriaQuery subCriteria) {
		return new PropertySubqueryExpression(propertyName, ">=", "SOME", subCriteria);
	}
	
	public static Criterion propertyLeSome(String propertyName, CriteriaQuery subCriteria) {
		return new PropertySubqueryExpression(propertyName, "<=", "SOME", subCriteria);
	}
	
	public static Criterion eqAll(Object value, CriteriaQuery subCriteria) {
		return new SimpleSubqueryExpression(value, "=", "ALL", subCriteria);
	}
	
	public static Criterion in(Object value, CriteriaQuery subCriteria) {
		return new SimpleSubqueryExpression(value, "IN", null, subCriteria);
	}
	
	public static Criterion notIn(Object value, CriteriaQuery subCriteria) {
		return new SimpleSubqueryExpression(value, "NOT IN", null, subCriteria);
	}
	
	public static Criterion eq(Object value, CriteriaQuery subCriteria) {
		return new SimpleSubqueryExpression(value, "=", null, subCriteria);
	}
	
	public static Criterion gt(Object value, CriteriaQuery subCriteria) {
		return new SimpleSubqueryExpression(value, ">", null, subCriteria);
	}
	
	public static Criterion lt(Object value, CriteriaQuery subCriteria) {
		return new SimpleSubqueryExpression(value, "<", null, subCriteria);
	}
	
	public static Criterion ge(Object value, CriteriaQuery subCriteria) {
		return new SimpleSubqueryExpression(value, ">=", null, subCriteria);
	}
	
	public static Criterion le(Object value, CriteriaQuery subCriteria) {
		return new SimpleSubqueryExpression(value, "<=", null, subCriteria);
	}
	
	public static Criterion ne(Object value, CriteriaQuery subCriteria) {
		return new SimpleSubqueryExpression(value, "<>", null, subCriteria);
	}
	
	public static Criterion gtAll(Object value, CriteriaQuery subCriteria) {
		return new SimpleSubqueryExpression(value, ">", "ALL", subCriteria);
	}
	
	public static Criterion ltAll(Object value, CriteriaQuery subCriteria) {
		return new SimpleSubqueryExpression(value, "<", "ALL", subCriteria);
	}
	
	public static Criterion geAll(Object value, CriteriaQuery subCriteria) {
		return new SimpleSubqueryExpression(value, ">=", "ALL", subCriteria);
	}
	
	public static Criterion leAll(Object value, CriteriaQuery subCriteria) {
		return new SimpleSubqueryExpression(value, "<=", "ALL", subCriteria);
	}
	
	public static Criterion gtSome(Object value, CriteriaQuery subCriteria) {
		return new SimpleSubqueryExpression(value, ">", "SOME", subCriteria);
	}
	
	public static Criterion ltSome(Object value, CriteriaQuery subCriteria) {
		return new SimpleSubqueryExpression(value, "<", "SOME", subCriteria);
	}
	
	public static Criterion geSome(Object value, CriteriaQuery subCriteria) {
		return new SimpleSubqueryExpression(value, ">=", "SOME", subCriteria);
	}
	
	public static Criterion leSome(Object value, CriteriaQuery subCriteria) {
		return new SimpleSubqueryExpression(value, "<=", "SOME", subCriteria);
	}

}

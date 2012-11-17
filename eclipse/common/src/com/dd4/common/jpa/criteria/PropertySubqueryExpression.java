package com.dd4.common.jpa.criteria;

/**
 * A comparison between a property value in the outer query and the result of a
 * subquery
 * 
 */
public class PropertySubqueryExpression extends SubqueryExpression {
	
	private String propertyName;

	protected PropertySubqueryExpression(String propertyName, String op, String quantifier, CriteriaQuery subCriteria) {
		super(op, quantifier, subCriteria);
		this.propertyName = propertyName;
	}

	@Override
	protected String toLeftJpqlString(CriteriaQuery criteriaQuery) {

		return criteriaQuery.getAliasedPropertyName(propertyName);
	}

}

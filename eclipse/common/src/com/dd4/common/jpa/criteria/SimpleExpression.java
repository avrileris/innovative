package com.dd4.common.jpa.criteria;


/**
 * superclass for "simple" comparisons (with SQL binary operators)
 * 
 */
public class SimpleExpression extends AbstractPropertyBasedCriterion {

	private final Object value;
	private boolean ignoreCase;
	private final String op;

	public SimpleExpression(String propertyName, Object value, String op) {
		super(propertyName);
		this.value = value;
		this.op = op;
	}

	public SimpleExpression(String propertyName, Object value, String op, boolean ignoreCase) {
		super(propertyName);
		this.value = value;
		this.ignoreCase = ignoreCase;
		this.op = op;
	}

	public SimpleExpression ignoreCase() {
		ignoreCase = true;
		return this;
	}

	public String toString() {
		return propertyName + getOp() + value;
	}

	protected final String getOp() {
		return op;
	}

	@Override
	public String toJpql(CriteriaQuery criteriaQuery) {

		String queryPropertyName = criteriaQuery.getAliasedPropertyName(propertyName);
		String queryValue = criteriaQuery.getJpaValue(value);

		if (ignoreCase) {
			queryPropertyName = "LOWER(" + criteriaQuery.getAliasedPropertyName(propertyName) + ")";
			queryValue = queryValue.toLowerCase();
		}

		return queryPropertyName + getOp() + queryValue;
	}

}

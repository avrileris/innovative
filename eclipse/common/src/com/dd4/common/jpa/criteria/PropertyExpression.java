package com.dd4.common.jpa.criteria;


/**
 * superclass for comparisons between two properties (with SQL binary operators)
 * 
 */
public class PropertyExpression extends AbstractPropertyBasedCriterion {

	private final String otherPropertyName;
	private final String op;

	protected PropertyExpression(String propertyName, String otherPropertyName, String op) {
		super(propertyName);
		this.otherPropertyName = otherPropertyName;
		this.op = op;
	}

	public String toString() {
		return propertyName + getOp() + otherPropertyName;
	}

	public String getOp() {
		return op;
	}

	@Override
	public String toJpql(CriteriaQuery criteriaQuery) {
		return criteriaQuery.getAliasedPropertyName(propertyName) + getOp()
				+ criteriaQuery.getAliasedPropertyName(otherPropertyName);
	}

}

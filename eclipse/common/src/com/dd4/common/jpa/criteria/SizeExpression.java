package com.dd4.common.jpa.criteria;


public class SizeExpression implements Criterion {

	private final String propertyName;
	private final int size;
	private final String op;

	protected SizeExpression(String propertyName, int size, String op) {
		this.propertyName = propertyName;
		this.size = size;
		this.op = op;
	}

	public String toString() {
		return propertyName + ".size" + op + size;
	}

	@Override
	public String toJpql(CriteriaQuery criteriaQuery) {
		return criteriaQuery.getAliasedPropertyName(propertyName) + ".size" + op + size;
	}

}

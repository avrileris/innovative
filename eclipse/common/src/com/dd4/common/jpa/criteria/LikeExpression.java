package com.dd4.common.jpa.criteria;


/**
 * A criterion representing a "like" expression
 * 
 */
public class LikeExpression extends SimpleExpression {

	private final Character escapeChar;

	public LikeExpression(String propertyName, String value, Character escapeChar, boolean ignoreCase) {
		super(propertyName, value, " LIKE ", ignoreCase);
		this.escapeChar = escapeChar;
	}

	public LikeExpression(String propertyName, String value) {
		this(propertyName, value, null, false);
	}

	public LikeExpression(String propertyName, String value, MatchMode matchMode) {
		this(propertyName, matchMode.toMatchString(value));
	}

	public LikeExpression(String propertyName, String value, MatchMode matchMode, Character escapeChar) {
		this(propertyName, value, matchMode, escapeChar, false);
	}
	
	public LikeExpression(String propertyName, String value, MatchMode matchMode, Character escapeChar,
			boolean ignoreCase) {
		this(propertyName, matchMode.toMatchString(value), escapeChar, ignoreCase);
	}

	@Override
	public String toJpql(CriteriaQuery criteriaQuery) {

		String escapeClause = (escapeChar != null) ? (" ESCAPE '" + escapeChar + "'") : "";

		return super.toJpql(criteriaQuery) + escapeClause;
	}

}

package com.dd4.common.jpa.criteria;


/**
 * Constrains a property to between two values
 * 
 */
public class BetweenExpression extends AbstractPropertyBasedCriterion {

	private final Object lo;
	private final Object hi;

	protected BetweenExpression(String propertyName, Object lo, Object hi) {
		super(propertyName);
		this.lo = lo;
		this.hi = hi;
	}

	public String toString() {
		return propertyName + " between " + lo + " and " + hi;
	}

	@Override
	public String toJpql(CriteriaQuery criteriaQuery) {
		return criteriaQuery.getAliasedPropertyName(propertyName) + " BETWEEN " + criteriaQuery.getJpaValue(lo) + " AND "
				+ criteriaQuery.getJpaValue(hi);
	}

}

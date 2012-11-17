package com.dd4.common.jpa.criteria;


/**
 * A count
 * 
 */
public class CountProjection extends AggregateProjection {

	private boolean distinct;

	protected CountProjection(String prop) {
		super("COUNT", prop);
	}

	public String toString() {
		if (distinct) {
			return "distinct " + super.toString();
		} else {
			return super.toString();
		}
	}

	public CountProjection setDistinct() {
		distinct = true;
		return this;
	}

	@Override
	public String toJpql(CriteriaQuery criteriaQuery, int position) {
		if (!distinct) {
			return super.toJpql(criteriaQuery, position);
		} else {
			return "COUNT(DISTINCT " + criteriaQuery.getAliasedPropertyName(propertyName) + ")";
		}
	}
}

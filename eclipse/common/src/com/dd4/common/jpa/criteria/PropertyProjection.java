package com.dd4.common.jpa.criteria;


/**
 * A property value, or grouped property value
 * 
 */
public class PropertyProjection extends SimpleProjection {

	private String propertyName;
	private boolean grouped;

	protected PropertyProjection(String prop, boolean grouped) {
		this.propertyName = prop;
		this.grouped = grouped;
	}

	protected PropertyProjection(String prop) {
		this(prop, false);
	}

	public String getPropertyName() {
		return propertyName;
	}

	public String toString() {
		return propertyName;
	}

	public boolean isGrouped() {
		return grouped;
	}

	@Override
	public String toJpql(CriteriaQuery criteriaQuery, int position) {
		return criteriaQuery.getAliasedPropertyName(propertyName);
	}

	@Override
	public String toGroupJpql(CriteriaQuery criteriaQuery) {
		return criteriaQuery.getAliasedPropertyName(propertyName);
	}
}

package com.dd4.common.jpa.criteria;


/**
 * Constrains a property to be non-null
 * 
 */
public class NotNullExpression extends AbstractPropertyBasedCriterion {

	protected NotNullExpression(String propertyName) {
		super(propertyName);
	}

	public String toString() {
		return propertyName + " is not null";
	}

	@Override
	public String toJpql(CriteriaQuery criteriaQuery) {
		return criteriaQuery.getAliasedPropertyName(propertyName) + " IS NOT NULL";
	}

}

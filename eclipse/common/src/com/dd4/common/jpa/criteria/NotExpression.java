package com.dd4.common.jpa.criteria;


/**
 * Negates another criterion
 * 
 */
public class NotExpression implements Criterion {

	private Criterion criterion;

	protected NotExpression(Criterion criterion) {
		this.criterion = criterion;
	}

	public String toString() {
		return "not " + criterion.toString();
	}

	@Override
	public String toJpql(CriteriaQuery criteriaQuery) {
		return "NOT " + criterion.toJpql(criteriaQuery);
	}

}

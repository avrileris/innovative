package com.dd4.common.jpa.criteria;


public abstract class SubqueryExpression implements Criterion {

	private String quantifier;
	private String op;

	private CriteriaQuery subCriteria;

	protected SubqueryExpression(String op, String quantifier, CriteriaQuery subCriteria) {

		this.quantifier = quantifier;
		this.op = op;

		this.subCriteria = subCriteria;
		if (subCriteria.getParentCriteria() == null) {
			throw new IllegalArgumentException("The subCriteria provided must have a parentCriteria");
		}
	}

	@Override
	public String toJpql(CriteriaQuery criteriaQuery) {

		StringBuilder sb = new StringBuilder();

		String leftJpqlString = toLeftJpqlString(criteriaQuery);
		if (leftJpqlString != null) {
			sb.append(leftJpqlString);
			if (op != null) {
				sb.append(' ').append(op).append(' ');
			} else {
				throw new IllegalStateException("An operator must be provided for a non-null leftJpqlString");
			}
		}

		if (quantifier != null) {
			sb.append(quantifier).append(' ');
		}

		sb.append("(").append(subCriteria.toString()).append(")");

		return sb.toString();
	}

	protected String toLeftJpqlString(CriteriaQuery criteriaQuery) {
		return null;
	}

}

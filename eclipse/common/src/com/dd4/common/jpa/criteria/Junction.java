package com.dd4.common.jpa.criteria;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;


/**
 * A sequence of a logical expressions combined by some associative logical
 * operator
 * 
 */
public class Junction implements Criterion {

	private final List<Criterion> subCriteria = new ArrayList<Criterion>();
	private final String op;

	protected Junction(String op) {
		this.op = op;
	}

	public Junction add(Criterion criterion) {
		subCriteria.add(criterion);
		return this;
	}

	public String getOp() {
		return op;
	}

	/**
	 * @see java.lang.Object#toString()
	 */
	public String toString() {

		StringBuilder sb = new StringBuilder().append('(');
		Iterator<Criterion> iter = subCriteria.iterator();
		while (iter.hasNext()) {
			sb.append(((Criterion) iter.next()).toString());
			if (iter.hasNext())
				sb.append(' ').append(op).append(' ');
		}
		return sb.append(')').toString();
	}

	@Override
	public String toJpql(CriteriaQuery criteriaQuery) {

		if (subCriteria.size() == 0) {
			return "1=1";
		}

		StringBuilder sb = new StringBuilder().append('(');
		Iterator<Criterion> iter = subCriteria.iterator();
		while (iter.hasNext()) {
			sb.append(((Criterion) iter.next()).toJpql(criteriaQuery));
			if (iter.hasNext())
				sb.append(' ').append(op).append(' ');
		}
		return sb.append(')').toString();

	}

}

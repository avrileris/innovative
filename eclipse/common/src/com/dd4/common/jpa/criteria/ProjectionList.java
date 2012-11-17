package com.dd4.common.jpa.criteria;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;


public class ProjectionList implements Projection {

	private List<Projection> elements = new ArrayList<Projection>();

	protected ProjectionList() {
	}

	public ProjectionList create() {
		return new ProjectionList();
	}

	public ProjectionList add(Projection proj) {
		elements.add(proj);
		return this;
	}

	public ProjectionList add(Projection projection, String alias) {
		return add(Projections.alias(projection, alias));
	}

	public String[] getAliases() {

		ArrayList<String> result = new ArrayList<String>(getLength());

		for (int i = 0; i < getLength(); i++) {
			String[] aliases = getProjection(i).getAliases();
			result.addAll(Arrays.asList(aliases));
		}

		return result.toArray(new String[] {});
	}

	public Projection getProjection(int i) {
		return (Projection) elements.get(i);
	}

	public int getLength() {
		return elements.size();
	}

	public String toString() {
		return elements.toString();
	}

	public boolean isGrouped() {
		for (int i = 0; i < getLength(); i++) {
			if (getProjection(i).isGrouped())
				return true;
		}
		return false;
	}

	@Override
	public String toJpql(CriteriaQuery criteriaQuery, int position) {

		StringBuffer buf = new StringBuffer();

		for (int i = 0; i < getLength(); i++) {
			Projection proj = getProjection(i);
			buf.append(proj.toJpql(criteriaQuery, ++position));
			if (i < elements.size() - 1)
				buf.append(", ");
		}

		return buf.toString();
	}

	@Override
	public String toGroupJpql(CriteriaQuery criteriaQuery) {

		StringBuilder sb = new StringBuilder();

		for (int i = 0; i < getLength(); i++) {
			Projection proj = getProjection(i);
			if (proj.isGrouped()) {
				sb.append(proj.toGroupJpql(criteriaQuery)).append(", ");
			}
		}

		if (sb.length() > 2) {
			sb.setLength(sb.length() - 2); // pull off the last ", "
		}

		return sb.toString();
	}
}

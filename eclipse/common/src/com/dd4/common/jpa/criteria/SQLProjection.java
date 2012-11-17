package com.dd4.common.jpa.criteria;


/**
 * A SQL fragment. The string {alias} will be replaced by the alias of the root
 * entity.
 */
public class SQLProjection implements Projection {

	private final String sql;
	private final String groupBy;
	private String[] aliases;
	private boolean grouped;

	public String toString() {
		return sql;
	}

	protected SQLProjection(String sql, String[] columnAliases) {
		this(sql, null, columnAliases);
	}

	protected SQLProjection(String sql, String groupBy, String[] columnAliases) {
		this.sql = sql;
		this.aliases = columnAliases;
		this.grouped = groupBy != null;
		this.groupBy = groupBy;
	}

	public SQLProjection(String sql) {
		this.sql = sql;
		this.groupBy = null;
		this.grouped = groupBy != null;
	}

	public SQLProjection(String sql, String groupBy) {
		this.sql = sql;
		this.groupBy = groupBy;
		this.grouped = groupBy != null;
	}

	public String[] getAliases() {
		return aliases;
	}

	public boolean isGrouped() {
		return grouped;
	}

	// TODO c2jpql alias?
	@Override
	public String toJpql(CriteriaQuery criteriaQuery, int position) {
		return sql.replaceAll("\\{alias\\}", criteriaQuery.getAlias());
	}

	@Override
	public String toGroupJpql(CriteriaQuery criteriaQuery) {
		return groupBy.replaceAll("\\{alias\\}", criteriaQuery.getAlias());
	}
}

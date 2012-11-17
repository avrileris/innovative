package com.dd4.common.jpa.criteria;

import java.io.Serializable;


/**
 * An object-oriented representation of a query result set projection in a
 * {@link CriteriaQuery} query. Built-in projection types are provided by the
 * {@link Projections} factory class. This interface might be implemented by
 * application classes that define custom projections.
 * 
 * @see Projections
 * @see CriteriaQuery
 */
public interface Projection extends Serializable {

	/**
	 * Render the SQL fragment to be used in the <tt>SELECT</tt> clause.
	 * 
	 * @param criteriaQuery
	 *            The local criteria to which this project is attached (for
	 *            resolution).
	 * @param position
	 *            The number of columns rendered in the <tt>SELECT</tt> clause
	 *            before this projection. Generally speaking this is useful to
	 *            ensure uniqueness of the individual columns aliases.
	 * @param criteriaQuery
	 *            The overall criteria query instance.
	 * @return The SQL fragment to plug into the <tt>SELECT</tt>
	 * @throws HibernateException
	 *             Indicates a problem performing the rendering
	 */
//	public String toSqlString(CriteriaQuery criteria, int position, CriteriaQuery criteriaQuery) throws HibernateException;

	public String toJpql(CriteriaQuery criteriaQuery, int position);

	public String toGroupJpql(CriteriaQuery criteriaQuery);
	
	/**
	 * Render the SQL fragment to be used in the <tt>GROUP BY</tt> clause
	 * 
	 * @param criteria
	 *            The local criteria to which this project is attached (for
	 *            resolution).
	 * @param criteriaQuery
	 *            The overall criteria query instance.
	 * @return The SQL fragment to plug into the <tt>GROUP BY</tt>
	 * @throws HibernateException
	 *             Indicates a problem performing the rendering
	 */
//	public String toGroupSqlString(CriteriaQuery criteria, CriteriaQuery criteriaQuery) throws HibernateException;

	/**
	 * Types returned by the rendered SQL {@link #toSqlString fragment}. In
	 * other words what are the types that would represent the values this
	 * projection asked to be pulled into the result set?
	 * 
	 * @param criteria
	 *            The local criteria to which this project is attached (for
	 *            resolution).
	 * @param criteriaQuery
	 *            The overall criteria query instance.
	 * @return The return types.
	 * @throws HibernateException
	 *             Indicates a problem resolving the types
	 */
//	public Type[] getTypes(CriteriaQuery criteria, CriteriaQuery criteriaQuery) throws HibernateException;

	/**
	 * Get the return types for a particular user-visible alias.
	 * <p/>
	 * Differs from {@link #getTypes(org.hibernate.Criteria, CriteriaQuery)} in
	 * that here we are only interested in the types related to the given
	 * criteria-level alias.
	 * 
	 * @param alias
	 *            The criteria-level alias for which to find types.
	 * @param criteria
	 *            The local criteria to which this project is attached (for
	 *            resolution).
	 * @param criteriaQuery
	 *            The overall criteria query instance.
	 * @return The return types; expected to return null if this projection does
	 *         not understand this alias.
	 * @throws HibernateException
	 *             Indicates a problem resolving the types
	 */
//	public Type[] getTypes(String alias, CriteriaQuery criteria, CriteriaQuery criteriaQuery) throws HibernateException;

	/**
	 * Get the SQL column aliases used by this projection for the columns it
	 * writes for inclusion into the <tt>SELECT</tt> clause (
	 * {@link #toSqlString}. Hibernate always uses column aliases to extract
	 * data from the JDBC {@link java.sql.ResultSet}, so it is important that
	 * these be implemented correctly in order for Hibernate to be able to
	 * extract these val;ues correctly.
	 * 
	 * @param position
	 *            Just as in {@link #toSqlString}, represents the number of
	 *            <b>columns</b> rendered prior to this projection.
	 * @return The columns aliases.
	 */
//	public String[] getColumnAliases(int position);

	/**
	 * Get the SQL column aliases used by this projection for the columns it
	 * writes for inclusion into the <tt>SELECT</tt> clause (
	 * {@link #toSqlString} <i>for a particular criteria-level alias</i>.
	 * 
	 * @param alias
	 *            The criteria-level alias
	 * @param position
	 *            Just as in {@link #toSqlString}, represents the number of
	 *            <b>columns</b> rendered prior to this projection.
	 * @return The columns aliases pertaining to a particular criteria-level
	 *         alias; expected to return null if this projection does not
	 *         understand this alias.
	 */
//	public String[] getColumnAliases(String alias, int position);

	/**
	 * Get the criteria-level aliases for this projection (ie. the ones that
	 * will be passed to the {@link org.hibernate.transform.ResultTransformer})
	 * 
	 * @return The aliases
	 */
	public String[] getAliases();

	/**
	 * Is this projection fragment (<tt>SELECT</tt> clause) also part of the
	 * <tt>GROUP BY</tt>
	 * 
	 * @return True if the projection is also part of the <tt>GROUP BY</tt>;
	 *         false otherwise.
	 */
	public boolean isGrouped();

}

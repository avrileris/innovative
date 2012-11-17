package com.dd4.common.jpa.criteria;

import com.dd4.common.jpa.criteria.AssociationJoin.JoinType;

public class Joins {

	public static <T> Join inner(Class<T> c, String associationPath, String alias) {
		return new AssociationJoin<T>(c,associationPath, alias, JoinType.INNER);
	}

	public static <T> Join innerFetch(Class<T> c, String associationPath, String alias) {
		return new AssociationJoin<T>(c,associationPath, alias, JoinType.FETCH_INNER);
	}

	public static <T> Join outer(Class<T> c, String associationPath, String alias) {
		return new AssociationJoin<T>(c,associationPath, alias, JoinType.OUTER);
	}

	public static <T> Join outerFetch(Class<T> c, String associationPath, String alias) {
		return new AssociationJoin<T>(c,associationPath, alias, JoinType.FETCH_OUTER);
	}

//	public static Join inner(String associationPath) {
//		return new AssociationJoin(associationPath, null, JoinType.INNER);
//	}
//
//	public static Join innerFetch(String associationPath) {
//		return new AssociationJoin(associationPath, null, JoinType.FETCH_INNER);
//	}
//
//	public static Join outer(String associationPath) {
//		return new AssociationJoin(associationPath, null, JoinType.OUTER);
//	}
//
//	public static Join outerFetch(String associationPath) {
//		return new AssociationJoin(associationPath, null, JoinType.FETCH_OUTER);
//	}

}

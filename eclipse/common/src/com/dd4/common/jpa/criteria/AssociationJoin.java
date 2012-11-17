package com.dd4.common.jpa.criteria;

import java.lang.reflect.Method;
import java.util.ArrayList;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;


public class AssociationJoin<T> implements Join {

	private final String associationPath;
	private final String alias;
	private final JoinType joinType;
	private final Class<T> c;

	protected AssociationJoin(Class<T> c, String associationPath, String alias, JoinType joinType) {
		this.associationPath = associationPath;
		this.alias = alias;
		this.joinType = joinType;
		this.c=c;
	}

	public String toJpql(CriteriaQuery criteriaQuery) {//c.getAnnotation(Table.class).name()//
		String swl = joinType.getKeyword() + " " + c.getAnnotation(Table.class).name()//criteriaQuery.getAliasedPropertyName(associationPath)
				+ ((alias != null) ? (" " + alias) : "" + " on ");
		
		ArrayList<Object> values = new ArrayList<Object>();
		for(Method m:c.getMethods()){
			Id id = m.getAnnotation(Id.class);
			if(id!=null){
				if(values.size()!=0)
					swl+=" AND ";
				swl+=" on "+alias+"."+m.getAnnotation(Column.class).name()+"=o."+m.getAnnotation(Column.class).name();
				values.add(swl);
			}
		}
		return swl;
	}

	public enum JoinType {

		INNER("INNER JOIN"), OUTER("LEFT OUTER JOIN"), FETCH_INNER("INNER JOIN FETCH"), FETCH_OUTER(
				"LEFT OUTER JOIN FETCH"), ENTITY("");

		private final String keyword;

		public String getKeyword() {
			return keyword;
		}

		private JoinType(String keyword) {
			this.keyword = keyword;

		}
	}

	@Override
	public String getAlias() {
		return alias;
	}

}

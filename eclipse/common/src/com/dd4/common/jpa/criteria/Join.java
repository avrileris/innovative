package com.dd4.common.jpa.criteria;

public interface Join {

	String toJpql(CriteriaQuery criteriaQuery);

	String getAlias();
}
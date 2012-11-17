package com.dd4.common.jpa.criteria;

import java.lang.reflect.Field;
import java.lang.reflect.Method;

import javax.persistence.Id;

public class JPAUtils {

	public static String findEntityIdProperty(Class<?> entityClass) {

		if((entityClass == null) || entityClass.equals(Object.class)){
			return null;
		}
		
		Field[] fields = entityClass.getDeclaredFields();
		for (Field field : fields) {
			if (field.isAnnotationPresent(Id.class)) {
				return field.getName();
			}
		}

		Method[] methods = entityClass.getDeclaredMethods();
		for (Method method : methods) {
			if (method.isAnnotationPresent(Id.class)) {
				String methodName = method.getName();
				String fieldName = null;
				if (methodName.startsWith("get")) {
					fieldName = methodName.substring(3);
				} else if (methodName.startsWith("is")) {
					fieldName = methodName.substring(2);
				}
				fieldName = Character.toLowerCase(fieldName.charAt(0)) + fieldName.substring(1);
				
				return fieldName;
			}
		}
		
		Class<?> superClass = entityClass.getSuperclass();
		
		return findEntityIdProperty(superClass);
	}
}

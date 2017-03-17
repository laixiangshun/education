package com.foxera.util;


/**
 * 单项查询条件封装类
 * @author fox
 *  
 */
public class  QueryProperty<T> {
	
	private String name;//属性名
	private String value;//属性值
	private String aliaName;//实体别名
	private String comparesymbol;//比较运算符
	private String logicSymbol;//逻辑运算符
	private T currclass;//当前查询实体类型
	private String orderby;//排序方式

	public QueryProperty(Class<T> classz) throws InstantiationException, IllegalAccessException {
		currclass = classz.newInstance();
	}
	
	public static final String EQUALS="=";
	public static final String NOTEQUAL="!=";
	public static final String LIKE="like";
	public static final String LESS="<";
	public static final String LESSOREQUAL="<=";
	public static final String GREATER=">";
	public static final String GREATEROREQUAL=">=";
	public static final String BETWEEN="between";
	public static final String AND="and";
	public static final String OR="or";
	public static final String DESC="desc";
	public static final String ASC="asc";
	/**
	 * 实体属性名
	 */
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * 实体属性的值
	 */
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	/**
	 * 实体别名
	 */
	public String getAliaName() {
		return aliaName;
	}
	public void setAliaName(String aliaName) {
		this.aliaName = aliaName;
	}
	/**
	 * 比较运算符
	 */
	public String getComparesymbol() {
		return comparesymbol;
	}
	public void setComparesymbol(String comparesymbol) {
		this.comparesymbol = comparesymbol;
	}
	/**
	 * 逻辑运算符
	 */
	public String getLogicSymbol() {
		return logicSymbol;
	}
	public void setLogicSymbol(String logicSymbol) {
		this.logicSymbol = logicSymbol;
	}
	/**
	 * 当前实体类型
	 */
	public T getCurrclass() {
		return currclass;
	}
	public void setCurrclass(T currclass) {
		this.currclass = currclass;
	}
	/**
	 * 排序方式
	 */
	public String getOrderby() {
		return orderby;
	}
	public void setOrderby(String orderby) {
		this.orderby = orderby;
	}
	
}

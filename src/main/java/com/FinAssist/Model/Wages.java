package com.FinAssist.Model;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class Wages {
	public String _id;
	public String income;
	public String daysWorked;
	public String name;
	
	public String dateTimeStamp;

	public Wages() {

	}

	public Wages(String _id, String income, String daysWorked, String items, String dateTimeStamp) {
		super();

		this.income = income;
		this.daysWorked = daysWorked;
		this.name = name;
	
		this.dateTimeStamp = dateTimeStamp;
	}

	@Override
	public String toString() {
		return "Products [_id=" + _id + ", income=" + income + ", daysWorked=" + daysWorked + ", name=" + name
				+  ", dateTimeStamp=" + dateTimeStamp + "]";
	}

	public Map<String, Object> toMap() {

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("income", income);
		map.put("daysWorked", daysWorked);
		map.put("name", name);
		
		map.put("dateTimeStamp", new Date());

		return map;

	}

	
}
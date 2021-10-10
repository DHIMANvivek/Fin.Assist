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

	public Wages(String _id, String income, String daysWorked, String items, String dateTimeStamp, String name) {
		super();

		this.income = income;
		this.daysWorked = daysWorked;
		this.name = name;
	
		this.dateTimeStamp = dateTimeStamp;
	}
	
	

	public String get_id() {
		return _id;
	}

	public void set_id(String _id) {
		this._id = _id;
	}

	public String getIncome() {
		return income;
	}

	public void setIncome(String income) {
		this.income = income;
	}

	public String getDaysWorked() {
		return daysWorked;
	}

	public void setDaysWorked(String daysWorked) {
		this.daysWorked = daysWorked;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDateTimeStamp() {
		return dateTimeStamp;
	}

	public void setDateTimeStamp(String dateTimeStamp) {
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
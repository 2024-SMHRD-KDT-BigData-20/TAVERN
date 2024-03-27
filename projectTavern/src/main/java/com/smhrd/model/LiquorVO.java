package com.smhrd.model;

import java.math.BigDecimal;

public class LiquorVO {
	private String liq_idx;
	private String liq_name;
	private String liq_category;
	private BigDecimal liq_alcohol;
	private String tasty;
	private String smell;
	private String body;
	private BigDecimal sugar;
	private String food;
	private String liq_type;

	public String getLiq_idx() {
		return liq_idx;
	}

	public String getLiq_name() {
		return liq_name;
	}

	public String getLiq_category() {
		return liq_category;
	}

	public BigDecimal getLiq_alcohol() {
		return liq_alcohol;
	}

	public String getTasty() {
		return tasty;
	}

	public String getSmell() {
		return smell;
	}

	public String getBody() {
		return body;
	}

	public BigDecimal getSugar() {
		return sugar;
	}

	public String getFood() {
		return food;
	}

	public String getLiq_type() {
		return liq_type;
	}

	public LiquorVO(String liq_idx, String liq_type) {
		super();
		this.liq_idx = liq_idx;
		this.liq_type = liq_type;
	}

	public LiquorVO(String liq_name) {
		this.liq_name = liq_name;
	}

	public LiquorVO(String liq_name, String liq_category, BigDecimal liq_alcohol, String tasty,
			String smell, String body, BigDecimal sugar, String food, String liq_type) {
		this.liq_name = liq_name;
		this.liq_category = liq_category;
		this.liq_alcohol = liq_alcohol;
		this.tasty = tasty;
		this.smell = smell;
		this.body = body;
		this.sugar = sugar;
		this.food = food;
		this.liq_type = liq_type;
	}

	@Override
	public String toString() {
		return "LiquorVO [liq_idx=" + liq_idx + ", liq_name=" + liq_name + ", liq_category=" + liq_category
				+ ", liq_alcohol=" + liq_alcohol + ", tasty=" + tasty + ", smell=" + smell + ", body=" + body
				+ ", sugar=" + sugar + ", food=" + food + ", liq_type=" + liq_type + "]";
	}
	
	

}

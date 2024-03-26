package com.smhrd.model;

public class LiquorVO {
	private String liq_idx;
	private String liq_name;
	private String liq_category;
	private String liq_alcohol;
	private String tasty;
	private String smell;
	private String body;
	private String sugar;
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

	public String getLiq_alcohol() {
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

	public String getSugar() {
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



}

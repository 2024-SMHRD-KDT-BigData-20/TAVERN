package com.smhrd.model;

import java.math.BigDecimal;
import java.util.Locale.Category;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;
import lombok.ToString;
import lombok.NonNull;


public class PostVO {
	
	// 글 식별자
    private BigDecimal POST_IDX;

    // 글 제목
    
    private String POST_TITLE;

    // 글 내용
    
    private String POST_CONTENT;


    // 글 작성일자 
    private String CREATED_AT;

    // 글 작성자 
    private String ID;
    
    // 글 카테고리
    private String POST_CATEGORY;

	public BigDecimal getPOST_IDX() {
		return POST_IDX;
	}

	public void setPOST_IDX(BigDecimal pOST_IDX) {
		POST_IDX = pOST_IDX;
	}

	public String getPOST_TITLE() {
		return POST_TITLE;
	}

	public void setPOST_TITLE(String pOST_TITLE) {
		POST_TITLE = pOST_TITLE;
	}

	public String getPOST_CONTENT() {
		return POST_CONTENT;
	}

	public void setPOST_CONTENT(String pOST_CONTENT) {
		POST_CONTENT = pOST_CONTENT;
	}

	public String getCREATED_AT() {
		return CREATED_AT;
	}

	public void setCREATED_AT(String cREATED_AT) {
		CREATED_AT = cREATED_AT;
	}

	public String getID() {
		return ID;
	}

	public void setID(String iD) {
		ID = iD;
	}

	public String getPOST_CATEGORY() {
		return POST_CATEGORY;
	}

	public void setPOST_CATEGORY(String pOST_CATEGORY) {
		POST_CATEGORY = pOST_CATEGORY;
	}


    
}

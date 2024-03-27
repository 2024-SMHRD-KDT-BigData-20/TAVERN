package com.smhrd.model;

import java.util.Locale.Category;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;
import lombok.ToString;
import lombok.NonNull;

@AllArgsConstructor // 모든 파라미터 담는 생성자
@NoArgsConstructor // 기본 생성자
@RequiredArgsConstructor // 필요 파라미터 담는 생성자
@Getter
@ToString
public class PostVO {
	
	// 글 식별자
    private Double POST_IDX;

    // 글 제목
    @NonNull
    private String POST_TITLE;

    // 글 내용
    @NonNull
    private String POST_CONTENT;

    // 글 첨부파일 
    private String POST_FILE;

    // 글 작성일자 
    private String CREATED_AT;

    // 글 조회수 
    private Double POST_VIEWS;

    // 글 좋아요수 
    private Double POST_LIKES;

    // 글 작성자 
    private String ID;
    
    // 글 카테고리
    private Category POST_CATEGORY;
    
    
}

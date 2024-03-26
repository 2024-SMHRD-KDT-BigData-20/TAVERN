package com.smhrd.model;

public class PostVO {
	private int post_idx;
    private String post_title;
    private String post_content;
    private String post_File;
    private String created_at;
    private int post_views;
    private int post_likes;
    private String id;
    
    
	public int getPost_idx() {
		return post_idx;
	}
	public void setPost_idx(int post_idx) {
		this.post_idx = post_idx;
	}
	public String getPost_title() {
		return post_title;
	}
	public void setPost_title(String post_title) {
		this.post_title = post_title;
	}
	public String getPost_content() {
		return post_content;
	}
	public void setPost_content(String post_content) {
		this.post_content = post_content;
	}
	public String getPost_File() {
		return post_File;
	}
	public void setPost_File(String post_File) {
		this.post_File = post_File;
	}
	public String getCreated_at() {
		return created_at;
	}
	public void setCreated_at(String created_at) {
		this.created_at = created_at;
	}
	public int getPost_views() {
		return post_views;
	}
	public void setPost_views(int post_views) {
		this.post_views = post_views;
	}
	public int getPost_likes() {
		return post_likes;
	}
	public void setPost_likes(int post_likes) {
		this.post_likes = post_likes;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public PostVO(int post_idx, String post_title, String post_content, String post_File, String created_at,
			int post_views, int post_likes, String id) {
		super();
		this.post_idx = post_idx;
		this.post_title = post_title;
		this.post_content = post_content;
		this.post_File = post_File;
		this.created_at = created_at;
		this.post_views = post_views;
		this.post_likes = post_likes;
		this.id = id;
	}
	@Override
	public String toString() {
		return "PostVO [post_idx=" + post_idx + ", post_title=" + post_title + ", post_content=" + post_content
				+ ", post_File=" + post_File + ", created_at=" + created_at + ", post_views=" + post_views
				+ ", post_likes=" + post_likes + ", id=" + id + "]";
	}
    
    
    
}

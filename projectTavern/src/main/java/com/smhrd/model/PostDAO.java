package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class PostDAO {
	// DB에서 연결고리를 만들어 놓고 가져다 쓸 수 있게 sqlSession생성
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	// 글 작성 저장
	public int insertpost(PostVO postin) {
		int cnt = 0;
		try (SqlSession sqlSession = sqlSessionFactory.openSession(true)) {
			cnt = sqlSession.insert("com.smhrd.db.PostMapper.insertpost", postin);
		}
		return cnt;
	} // 글 작성 저장 끝

	// 게시글리스트 구현
	public List<PostVO> selectAll() {
		List<PostVO> postlist = null;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		// sql문 실행할때 조건 넣어줄 값이 없으므로 id값만 적어줌
		postlist = sqlSession.selectList("com.smhrd.db.PostMapper.postlist");
		sqlSession.close();
		return postlist;
	}// 게시글리스트 끝

	// 카테고리별 게시글 가져오기
	public List<PostVO> getPostsByCategories(List<String> post_categories) {
	    List<PostVO> postList = null;
	    try (SqlSession sqlSession = sqlSessionFactory.openSession(true)) {
	        postList = sqlSession.selectList("com.smhrd.db.PostMapper.postCateIn", post_categories);
	    }
	    return postList;
	}
}// 카테고리별 게시글 가져오기 끝

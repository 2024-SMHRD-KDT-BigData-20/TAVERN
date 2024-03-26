package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class LiquorDAO {
	// DB에서 연결고리를 만들어 놓고 가져다 쓸 수 있게 sqlSession생성
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	// 위스키

	public List<LiquorVO> liqName(String liq_type) {
		List<LiquorVO> liqname = null;

		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		liqname = sqlSession.selectList("com.smhrd.db.LiquorMapper.liqName", liq_type);
		sqlSession.close();

		return liqname;
	}// 위스키 끝

	// 술정보 찾기
	public LiquorVO getLiquorDetails(String liqName) {
		LiquorVO liquorDetails = null;

		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		liquorDetails = sqlSession.selectOne("com.smhrd.db.LiquorMapper.liqAll", liqName);
		sqlSession.close();

		return liquorDetails;
	}

}
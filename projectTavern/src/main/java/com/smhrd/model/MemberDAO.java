package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class MemberDAO {

	// DB에서 연결고리를 만들어 놓고 가져다 쓸 수 있게 sqlSession생성
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	// 로그인 기능구현
	public MemberVO selectMember(MemberVO login) {
		MemberVO loginMember = null;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		loginMember = sqlSession.selectOne("com.smhrd.db.MemberMapper.selectMember", login);
		sqlSession.close();
		return loginMember;

	} // selectMember 끝

	// 회원가입 기능 구현
	public int insertMember(MemberVO joinMember) {
		int cnt = 0;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		cnt = sqlSession.insert("com.smhrd.db.MemberMapper.insertMember", joinMember);
		sqlSession.close();

		return cnt;
	}// insertMember 끝

	// 회원정보수정 기능구현
	public int updateMember(MemberVO update) {
		int cnt = 0;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		cnt = sqlSession.update("com.smhrd.db.MemberMapper.updateMember", update);
		sqlSession.close();
		return cnt;
	}// updateMember 끝
	
	// 아이디 찾기 구현
	
	public String idsearch(String email) {
        String id = null;
        SqlSession sqlSession = sqlSessionFactory.openSession(true);
        id = sqlSession.selectOne("com.smhrd.db.MemberMapper.idsearch", email);
        sqlSession.close();
        return id;
	}// 아이디 찾기 끝
        
	// 비밀번호 찾기 구현
	

}

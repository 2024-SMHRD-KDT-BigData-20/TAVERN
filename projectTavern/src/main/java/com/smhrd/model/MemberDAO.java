package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class MemberDAO {

	// DB에서 연결고리를 만들어 놓고 가져다 쓸 수 있게 sqlSession생성
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	// 회원가입 기능구현
	public int join(MemberVO joinMember) {
		// 실행 된 레코드 수 반환
		int cnt = 0;
		// auto commit : 데이터베이스의 변화를 주는 구문(DML)
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		// insert(어떤 sql문 실행시킬지 sql태그의 id, 매개변수)
		// sql문 태그 id 중복없이 만들었다면 id만 작성
		// id가 속한 namespace도 작성
		cnt = sqlSession.insert("com.smhrd.db.MemberMapper.join", joinMember);
		// DB연결고리 반납
		// 한 페이지에서 DB여러번 쓰는 경우 close때문에 오류
		sqlSession.close();

		return cnt;
	}// join 끝

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

}

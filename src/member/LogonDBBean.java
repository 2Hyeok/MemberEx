package member;

import mybatis.SqlMapClient;

public class LogonDBBean implements LogonDao {
	
	
	// 회원가입
	public int insertMember(LogonDataBean dto) {
		return SqlMapClient.getSession().insert("Member.insertMember", dto);
			
	}


	// 중복확인 부분
	public int check(String id) {
		return SqlMapClient.getSession().selectOne("Member.checkId", id);
	}
	
	// 로그인 부분
	public int check(String id, String passwd) {
		int result = 0;
		int count = check(id); // 중복 체크 부분에 던져주고 유무 확인
		
		if(count == 1) {
			// 아이디가 있다
			// 비밀번호도 체크도 getMember를 호출하면됨
			LogonDataBean dto = getMember(id);
			if(dto.getPasswd().equals(passwd)) {// db에서 꺼내온 passwd 와 넘겨온 passwd
				// 비밀번호 같음
				result = 1;
			} else {
				// 비밀번호 다름
				result = 0;
			}
		} else {
			// 아이디가 없다
			result = -1;
		}
		return result;
	}
	
	
	// 회원탈퇴
	public int deleteMember(String id) {
		return SqlMapClient.getSession().delete("Member.deleteMember", id);
	}

	
	
	public LogonDataBean getMember( String id ) {
		return SqlMapClient.getSession().selectOne("Member.getMember", id);
	}
	
	

	// 회원 정보 수정
	public int modifyMember(LogonDataBean dto) {
		return SqlMapClient.getSession().update("Member.modifyMember", dto);
			
	}

}// class
// DAO 처리빈
package member;

public interface LogonDao {
	
	// dao : DB를 사용해 데이터를 조회하거나 조작하는 기능을 전담하도록 만든 객체
	public int check(String id, String passwd); // 로그인 실행
	public int check(String id); // 아이디 중복체크
	public LogonDataBean getMember(String id);
	public int insertMember(LogonDataBean dto); // 회원가입
	public int deleteMember(String id); // 회원탈퇴
	public int modifyMember(LogonDataBean dto); //회원 정보 수정
}

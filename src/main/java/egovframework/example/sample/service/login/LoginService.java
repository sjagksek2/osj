package egovframework.example.sample.service.login;



public interface LoginService {

	public LoginVO authenticate(String id, String pw) throws Exception ;	
	
	void insertmemberSample(LoginVO vo) throws Exception;
}

package egovframework.example.sample.service.impl;

import javax.naming.AuthenticationException;

import org.springframework.stereotype.Repository;

import egovframework.example.sample.service.login.LoginVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("loginDAO")
public class LoginDAO extends EgovAbstractDAO{
	public LoginVO authenticate(String id, String pw) throws Exception {
		LoginVO loginVO = new LoginVO();
		loginVO.setId(id);
		loginVO.setPw(pw);
		
		// return (Account)select("Employee.authenticate",account);

		if (!("admin".equalsIgnoreCase(id) && "1".equalsIgnoreCase(pw))) {

			throw new AuthenticationException();
		}
		return loginVO;

	}
	/** 글 등록 **/
	
	public String insertmemberSample(LoginVO vo) throws Exception{
		return (String) insert("LoginDAO.insertSample", vo);
		
	}
}

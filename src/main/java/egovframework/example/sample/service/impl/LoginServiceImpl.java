package egovframework.example.sample.service.impl;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import egovframework.example.sample.service.AlioBogoseoVO;
import egovframework.example.sample.service.AlioCYVO;
import egovframework.example.sample.service.login.LoginService;
import egovframework.example.sample.service.login.LoginVO;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;


@Service("LoginService")
public class LoginServiceImpl extends EgovAbstractServiceImpl implements LoginService {

	@Autowired
	private LoginDAO loginDao;
	
	public LoginVO authenticate(String id, String pw) throws Exception {
		return loginDao.authenticate(id, pw);
	}

	/** 글 등록 **/
	@Override
	public void insertmemberSample(LoginVO vo) throws Exception {
		loginDao.insertmemberSample(vo);
	}
}

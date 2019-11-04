package egovframework.example.sample.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.example.sample.service.AlioCYVO;
import egovframework.example.sample.service.SampleDefaultVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("alioCYDAO")
public class AlioCYDAO extends EgovAbstractDAO {

	/**
	 * 글 목록을 조회한다.
	 * @param searchMap - 조회할 정보가 담긴 Map
	 * @return 글 목록
	 * @exception Exception
	 */
	public List<?> selectAlioCYList(SampleDefaultVO searchVO) throws Exception {
		return list("alioCYDAO.selectAlioCYList", searchVO);
	}

	/**
	 * 글 총 갯수를 조회한다.
	 * @param searchMap - 조회할 정보가 담긴 Map
	 * @return 글 총 갯수
	 * @exception
	 */
	public int selectAlioCYTotCnt(SampleDefaultVO searchVO) {
		return (Integer) select("alioCYDAO.selectAlioCYTotCnt", searchVO);
	}
	
	/**
	 * 글을 조회한다.
	 * 
	 * @param vo
	 *            - 조회할 정보가 담긴 SampleVO
	 * @return 조회한 글
	 * @exception Exception
	 */
	
	public AlioCYVO selectAlioCYView(AlioCYVO vo) throws Exception {
		return (AlioCYVO) select("alioCYDAO.selectAlioCYView", vo);
	}
	
	/** 글 등록 **/
	
	public String insertSample(AlioCYVO vo) throws Exception{
		return (String) insert("alioCYDAO.insertSample", vo);
		
	}
	
	/** 글 수정 **/
	
	public void updateSample(AlioCYVO vo) throws Exception {
		update("alioCYDAO.updateSample", vo);
	}
	
	/** 글 삭제 **/
	
	public void deleteSample(AlioCYVO vo) throws Exception {
		delete("alioCYDAO.deleteSample", vo);
	}
}
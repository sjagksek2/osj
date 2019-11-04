package egovframework.example.sample.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.example.sample.service.AlioBogoseoVO;
import egovframework.example.sample.service.SampleDefaultVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("alioBogoseoDAO")
public class AlioBogoseoDAO extends EgovAbstractDAO {

	/**
	 * 글 목록을 조회한다.
	 * @param searchMap - 조회할 정보가 담긴 Map
	 * @return 글 목록
	 * @exception Exception
	 */
	public List<?> selectAlioBogoseoList(SampleDefaultVO searchVO) throws Exception {
		return list("alioBogoseoDAO.selectAlioBogoseoList", searchVO);
	}

	/**
	 * 글 총 갯수를 조회한다.
	 * @param searchMap - 조회할 정보가 담긴 Map
	 * @return 글 총 갯수
	 * @exception
	 */
	public int selectAlioBogoseoListTotCnt(SampleDefaultVO searchVO) {
		return (Integer) select("alioBogoseoDAO.selectAlioBogoseoListTotCnt", searchVO);
	}
	
	/**
	 * 글을 조회한다.
	 * 
	 * @param vo
	 *            - 조회할 정보가 담긴 SampleVO
	 * @return 조회한 글
	 * @exception Exception
	 */
	
	public AlioBogoseoVO selectAlioBogoseoView(AlioBogoseoVO vo) throws Exception {
		return (AlioBogoseoVO) select("alioBogoseoDAO.selectAlioBogoseoView", vo);
	}
	
	/** 글 등록 **/
	
	public String insertSample(AlioBogoseoVO vo) throws Exception{
		return (String) insert("alioBogoseoDAO.insertSample", vo);
		
	}
	
	/** 글 수정 **/
	
	public void updateSample(AlioBogoseoVO vo) throws Exception {
		update("alioBogoseoDAO.updateSample", vo);
	}
	
	/** 글 삭제 **/
	
	public void deleteSample(AlioBogoseoVO vo) throws Exception {
		delete("alioBogoseoDAO.deleteSample", vo);
	}
}

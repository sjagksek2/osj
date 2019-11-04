package egovframework.example.sample.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.example.sample.service.SampleDefaultVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("alioTongGaeDAO")
public class AlioTongGaeDAO extends EgovAbstractDAO {

	/**
	 * 글 목록을 조회한다.
	 * @param searchMap - 조회할 정보가 담긴 Map
	 * @return 글 목록
	 * @exception Exception
	 */
	public List<?> selectAlioTongGaeList(SampleDefaultVO searchVO) throws Exception {
		return list("alioTongGaeDAO.selectAlioTongGaeList", searchVO);
	}

	/**
	 * 글 총 갯수를 조회한다.
	 * @param searchMap - 조회할 정보가 담긴 Map
	 * @return 글 총 갯수
	 * @exception
	 */
	public int selectAlioTongGaeListTotCnt(SampleDefaultVO searchVO) {
		return (Integer) select("alioTongGaeDAO.selectAlioTongGaeListTotCnt", searchVO);
	}
}

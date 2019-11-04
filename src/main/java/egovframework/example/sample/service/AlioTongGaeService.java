package egovframework.example.sample.service;

import java.util.List;

public interface AlioTongGaeService  {
	/**
	    * 글 목록을 조회한다.
	    * @param searchVO - 조회할 정보가 담긴 VO
	    * @return 글 목록
	    * @exception Exception
	    */
	   List<?> selectAlioTongGaeList(SampleDefaultVO searchVO) throws Exception;

	   /**
	    * 글 총 갯수를 조회한다.
	    * @param searchVO - 조회할 정보가 담긴 VO
	    * @return 글 총 갯수
	    * @exception
	    */
	   int selectAlioTongGaeListTotCnt(SampleDefaultVO searchVO);
}

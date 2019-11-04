package egovframework.example.sample.service;

import java.util.List;

public interface AlioCYService  {
	/**
	    * 글 목록을 조회한다.
	    * @param searchVO - 조회할 정보가 담긴 VO
	    * @return 글 목록
	    * @exception Exception
	    */
	   List<?> selectAlioCYList(SampleDefaultVO searchVO) throws Exception;
	   
	   /**
	    * 글 총 갯수를 조회한다.
	    * @param searchVO - 조회할 정보가 담긴 VO
	    * @return 글 총 갯수
	    * @exception
	    */
	   int selectAlioCYListTotCnt(SampleDefaultVO searchVO);
	   
	   /**
			 * 글을 조회한다.
			 * @param vo - 조회할 정보가 담긴 SampleVO
			 * @return 조회한 글
			 * @exception Exception
			 */

		AlioCYVO selectAlioCYView(AlioCYVO vo) throws Exception;
		
		void insertSample(AlioCYVO vo) throws Exception;
		
		void updateSample(AlioCYVO vo)throws Exception;
		
		void deleteSample(AlioCYVO vo)throws Exception;

}
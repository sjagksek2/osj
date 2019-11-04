package egovframework.example.sample.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import egovframework.example.sample.service.AlioCYService;
import egovframework.example.sample.service.AlioCYVO;
import egovframework.example.sample.service.SampleDefaultVO;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Service("alioCYService")
public class AlioCYServiceImpl extends EgovAbstractServiceImpl implements AlioCYService {

	private static final Logger LOGGER = LoggerFactory.getLogger(EgovSampleServiceImpl.class);

	   /** SampleDAO */
	   // TODO ibatis 사용
	   @Resource(name = "alioCYDAO")
	   private AlioCYDAO alioCYDAO;
	   // TODO mybatis 사용
	   //  @Resource(name="sampleMapper")
	   //   private SampleMapper sampleDAO;

	   /** ID Generation */
	   @Resource(name = "egovIdGnrService")
	   private EgovIdGnrService egovIdGnrService;

	   
	   /**
	    * 글 목록을 조회한다.
	    * @param searchVO - 조회할 정보가 담긴 VO
	    * @return 글 목록
	    * @exception Exception
	    */
	   @Override
	   public List<?> selectAlioCYList(SampleDefaultVO searchVO) throws Exception {
	      return alioCYDAO.selectAlioCYList(searchVO);
	   }
	   /**
	    * 글 총 갯수를 조회한다.
	    * @param searchVO - 조회할 정보가 담긴 VO
	    * @return 글 총 갯수
	    * @exception
	    */
	   @Override
	   public int selectAlioCYListTotCnt(SampleDefaultVO searchVO) {
	      return alioCYDAO.selectAlioCYTotCnt(searchVO);
	   }
	   
	   /**
	 		 * 글을 조회한다.
	 		 * @param vo - 조회할 정보가 담긴 SampleVO
	 		 * @return 조회한 글
	 		 * @exception Exception
	 		 */		
	 		
	 	@Override
	 	public AlioCYVO selectAlioCYView(AlioCYVO vo) throws Exception {
	 		AlioCYVO resultVO = alioCYDAO.selectAlioCYView(vo);
 			return resultVO;
	 	}
	 	
		/** 글 등록 **/
		
		@Override
		public void insertSample(AlioCYVO vo) throws Exception {
			/*
			LOGGER.debug(vo.toString());

			*//** ID Generation Service *//*
			String deptno = egovIdGnrService.getNextStringId();
			vo.setDeptno(deptno);
			LOGGER.debug(vo.toString());
	*/
			alioCYDAO.insertSample(vo);
			
		}
		
		@Override
		public void updateSample(AlioCYVO vo) throws Exception {
			alioCYDAO.updateSample(vo);
		}
		
		@Override
		public void deleteSample(AlioCYVO vo) throws Exception {
			alioCYDAO.deleteSample(vo);
			
		}
}
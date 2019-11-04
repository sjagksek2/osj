package egovframework.example.sample.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import egovframework.example.sample.service.AlioBogoseoService;
import egovframework.example.sample.service.AlioBogoseoVO;
import egovframework.example.sample.service.SampleDefaultVO;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;

@Service("alioBogoseoService")
public class AlioBogoseoServiceImpl extends EgovAbstractServiceImpl implements AlioBogoseoService {

	private static final Logger LOGGER = LoggerFactory.getLogger(EgovSampleServiceImpl.class);

	   /** SampleDAO */
	   // TODO ibatis 사용
	   @Resource(name = "alioBogoseoDAO")
	   private AlioBogoseoDAO alioBogoseoDAO;
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
	   public List<?> selectAlioBogoseoList(SampleDefaultVO searchVO) throws Exception {
	      return alioBogoseoDAO.selectAlioBogoseoList(searchVO);
	   }

	   /**
	    * 글 총 갯수를 조회한다.
	    * @param searchVO - 조회할 정보가 담긴 VO
	    * @return 글 총 갯수
	    * @exception
	    */
	   @Override
	   public int selectAlioBogoseoListTotCnt(SampleDefaultVO searchVO) {
	      return alioBogoseoDAO.selectAlioBogoseoListTotCnt(searchVO);
	   }
	   
	   /**
		 * 글을 조회한다.
		 * @param vo - 조회할 정보가 담긴 SampleVO
		 * @return 조회한 글
		 * @exception Exception
		 */		
		
		@Override
		public AlioBogoseoVO selectAlioBogoseoView(AlioBogoseoVO vo) throws Exception {
			AlioBogoseoVO resultVO = alioBogoseoDAO.selectAlioBogoseoView(vo);
			return resultVO;
		}

		/** 글 등록 **/
		
		@Override
		public void insertSample(AlioBogoseoVO vo) throws Exception {
			/*
			LOGGER.debug(vo.toString());

			*//** ID Generation Service *//*
			String deptno = egovIdGnrService.getNextStringId();
			vo.setDeptno(deptno);
			LOGGER.debug(vo.toString());
	*/
			alioBogoseoDAO.insertSample(vo);
			
		}
		
		@Override
		public void updateSample(AlioBogoseoVO vo) throws Exception {
			alioBogoseoDAO.updateSample(vo);
		}
		
		@Override
		public void deleteSample(AlioBogoseoVO vo) throws Exception {
			alioBogoseoDAO.deleteSample(vo);
			
		}
}

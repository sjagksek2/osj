package egovframework.example.sample.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import egovframework.example.sample.service.AlioGongSiService;
import egovframework.example.sample.service.AlioTongGaeService;
import egovframework.example.sample.service.SampleDefaultVO;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Service("alioGongSiService")
public class AlioGongSiServiceImpl extends EgovAbstractServiceImpl implements AlioGongSiService {

	private static final Logger LOGGER = LoggerFactory.getLogger(EgovSampleServiceImpl.class);

	   /** SampleDAO */
	   // TODO ibatis 사용
	   @Resource(name = "alioGongSiDAO")
	   private AlioGongSiDAO alioGongSiDAO;
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
	   public List<?> selectAlioGongSiList(SampleDefaultVO searchVO) throws Exception {
	      return alioGongSiDAO.selectAlioGongSiList(searchVO);
	   }
	   /**
	    * 글 총 갯수를 조회한다.
	    * @param searchVO - 조회할 정보가 담긴 VO
	    * @return 글 총 갯수
	    * @exception
	    */
	   @Override
	   public int selectAlioGongSiListTotCnt(SampleDefaultVO searchVO) {
	      return alioGongSiDAO.selectAlioGongSiTotCnt(searchVO);
	   }


}
/*
 * Copyright 2008-2009 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package egovframework.example.sample.web;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springmodules.validation.commons.DefaultBeanValidator;

import egovframework.example.sample.service.AlioBogoseoService;
import egovframework.example.sample.service.AlioBogoseoVO;
import egovframework.example.sample.service.AlioCYService;
import egovframework.example.sample.service.AlioCYVO;
import egovframework.example.sample.service.AlioGongSiService;
import egovframework.example.sample.service.AlioTongGaeService;
import egovframework.example.sample.service.AlioVO;
import egovframework.example.sample.service.EgovFileMngService;
import egovframework.example.sample.service.EgovFileMngUtil;
import egovframework.example.sample.service.EgovSampleService;
import egovframework.example.sample.service.FileVO;
import egovframework.example.sample.service.SampleDefaultVO;
import egovframework.example.sample.service.SampleVO;
import egovframework.rte.fdl.property.EgovPropertyService;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

@Controller
public class AlioController {
	

   /** EgovPropertyService */
   @Resource(name = "alioTongGaeService")
   protected AlioTongGaeService alioTongGaeService;
   
   /** EgovPropertyService */
   @Resource(name = "alioGongSiService")
   protected AlioGongSiService alioGongSiService;
   
   /** EgovPropertyService */
   @Resource(name = "alioBogoseoService")
   protected AlioBogoseoService alioBogoseoService;

   /** EgovPropertyService */
   @Resource(name = "alioCYService")
   protected AlioCYService alioCYService;
   
   /** EgovPropertyService */
   @Resource(name = "propertiesService")
   protected EgovPropertyService propertiesService;
   
   /** Validator */
   @Resource(name = "beanValidator")
   protected DefaultBeanValidator beanValidator;
   
   @Resource(name = "EgovFileMngService")
	private EgovFileMngService fileMngService;
	
   @Resource(name = "EgovFileMngUtil")
   private EgovFileMngUtil fileUtil;
	
		
		/** 홈 화면 **/
	
	@RequestMapping(value = "/alioHome.do")
	public String alioHome() throws Exception {
		return "sample/alioHome";
	}
	
	
	/** 기관별 경영공시 **/
	
	@RequestMapping(value = "/alioGongSi.do")
	public String alioGongSi() throws Exception {
		return "sample/alioGongSi";
	}
	
	/** 일반현황 **/
	   @RequestMapping(value = "/alioGongSiIB.do")
	   public String alioGongSiIB(@ModelAttribute("searchVO") SampleDefaultVO searchVO, ModelMap model) throws Exception {
	      
	      //** EgovPropertyService.sample *//*
	         searchVO.setPageUnit(propertiesService.getInt("pageUnit"));
	         searchVO.setPageSize(propertiesService.getInt("pageSize"));
	   
	         //** pageing setting *//*
	         PaginationInfo paginationInfo = new PaginationInfo();
	         paginationInfo.setCurrentPageNo(searchVO.getPageIndex());
	         paginationInfo.setRecordCountPerPage(searchVO.getPageUnit());
	         paginationInfo.setPageSize(searchVO.getPageSize());
	   
	         searchVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
	         searchVO.setLastIndex(paginationInfo.getLastRecordIndex());
	         searchVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());
	   
	         List<?> sampleList = alioGongSiService.selectAlioGongSiList(searchVO);
	         model.addAttribute("resultList", sampleList);
	   
	         int totCnt = alioGongSiService.selectAlioGongSiListTotCnt(searchVO);
	         paginationInfo.setTotalRecordCount(totCnt);
	         model.addAttribute("paginationInfo", paginationInfo);
	      
	      return "sample/alioGongSiList";
	   }
	
	/** 주요통계 **/
	
	@RequestMapping(value = "/alioTongGae.do")
	public String alioTongGae(@ModelAttribute("searchVO") SampleDefaultVO searchVO, ModelMap model) throws Exception {
		
		//** EgovPropertyService.sample *//*
	      searchVO.setPageUnit(propertiesService.getInt("pageUnit"));
	      searchVO.setPageSize(propertiesService.getInt("pageSize"));
	
	      //** pageing setting *//*
	      PaginationInfo paginationInfo = new PaginationInfo();
	      paginationInfo.setCurrentPageNo(searchVO.getPageIndex());
	      paginationInfo.setRecordCountPerPage(searchVO.getPageUnit());
	      paginationInfo.setPageSize(searchVO.getPageSize());
	
	      searchVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
	      searchVO.setLastIndex(paginationInfo.getLastRecordIndex());
	      searchVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());
	
	      List<?> sampleList = alioTongGaeService.selectAlioTongGaeList(searchVO);
	      model.addAttribute("resultList", sampleList);
	
	      int totCnt = alioTongGaeService.selectAlioTongGaeListTotCnt(searchVO);
	      paginationInfo.setTotalRecordCount(totCnt);
	      model.addAttribute("paginationInfo", paginationInfo);
		
		return "sample/alioTongGae";
	}
	
	/** 중견기업 지정 현황 **/
	@RequestMapping(value = "/alioJiJung.do")
	public String alioJiJung() throws Exception {
		return "sample/alioJiJung";
	}
	
	/** 보고서 **/
	@RequestMapping(value = "/alioBogoseo.do")
	public String alioBogoseo(@ModelAttribute("searchVO") SampleDefaultVO searchVO, ModelMap model) throws Exception {
				
		//** EgovPropertyService.sample *//*
	      searchVO.setPageUnit(propertiesService.getInt("pageUnit"));
	      searchVO.setPageSize(propertiesService.getInt("pageSize"));
	
	      //** pageing setting *//*
	      PaginationInfo paginationInfo = new PaginationInfo();
	      paginationInfo.setCurrentPageNo(searchVO.getPageIndex());
	      paginationInfo.setRecordCountPerPage(searchVO.getPageUnit());
	      paginationInfo.setPageSize(searchVO.getPageSize());
	
	      searchVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
	      searchVO.setLastIndex(paginationInfo.getLastRecordIndex());
	      searchVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());
	
	      List<?> sampleList = alioBogoseoService.selectAlioBogoseoList(searchVO);
	      model.addAttribute("resultList", sampleList);
	
	      int totCnt = alioBogoseoService.selectAlioBogoseoListTotCnt(searchVO);
	      paginationInfo.setTotalRecordCount(totCnt);
	      model.addAttribute("paginationInfo", paginationInfo);
	      
		
		return "sample/alioBogoseo";
	}
	
	/** 보고서 등록 화면을 보여준다 **/
	
	@RequestMapping(value = "/addAlioSampleView.do")
	public String addSampleView(@ModelAttribute("searchVO") SampleDefaultVO searchVO, Model model) throws Exception {
		model.addAttribute("alioBogoseoVO", new AlioBogoseoVO());
		return "sample/alioSampleRegister";
		
	}
	
	/** 보고서 글을 등록한다 **/
	
	@RequestMapping(value = "/addAlioSample.do")
	public String addSample(final MultipartHttpServletRequest multiRequest, AlioBogoseoVO alioBogoseoVO/*@ModelAttribute("searchVO") SampleDefaultVO searchVO, AlioBogoseoVO alioBogoseoVO, BindingResult bindingResult, Model model, SessionStatus status*/)
			throws Exception {
		
		List<FileVO> result = null;
		int atchFileId = 0;

		final Map<String, MultipartFile> files = multiRequest.getFileMap();
		
		if (!files.isEmpty()) {
			result = fileUtil.parseFileInf(files, "BBS_", 0, 0, "");
			atchFileId = fileMngService.insertFileInfs(result);
		}
		
		alioBogoseoVO.setAtchFileId(atchFileId);
		
		alioBogoseoService.insertSample(alioBogoseoVO);
		
		return "forward:/alioBogoseo.do";
		
	}
	
	@RequestMapping("/updateAlioSampleView.do")
	public String updateSampleView(@RequestParam("selectedId") String id, @ModelAttribute("searchVO") SampleDefaultVO searchVO, Model model/*@RequestParam("bogoseo_id") String id, @ModelAttribute("searchVO") SampleDefaultVO searchVO, Model model*/) throws Exception {
		
		AlioBogoseoVO alioBogoseoVO = new AlioBogoseoVO();
		alioBogoseoVO.setBogoseo_id(id);
		
		AlioBogoseoVO deptResult = alioBogoseoService.selectAlioBogoseoView(alioBogoseoVO);
		
		String fileLoaction = "";
				
		//file id가 0이 아니면 = file이 있으면 실행
		if(deptResult.getAtchFileId() != 0){
			FileVO vo = new FileVO();
			vo.setAtchFileId(deptResult.getAtchFileId());
			vo.setFileSn("0");
			FileVO fvo = fileMngService.selectFileInf(vo);
	
			fileLoaction = "/images/file/"+ fvo.getStreFileNm();
			//fileLoaction = fvo.getFileStreCours().replace("\\", "/");
			//fileLoaction = fileLoaction +"/"+ fvo.getStreFileNm();
		}
		
		model.addAttribute("result", deptResult);
		model.addAttribute("fileLoaction", fileLoaction);
		
		return "sample/alioBogoseo2";
		
	
		
	}
	
	@RequestMapping("/updateAlioSample.do")
	public String updateSample(@ModelAttribute("searchVO") SampleDefaultVO searchVO, AlioBogoseoVO alioBogoseoVO, BindingResult bindingResult, Model model, SessionStatus status)
			throws Exception {

		beanValidator.validate(alioBogoseoVO, bindingResult);

		if (bindingResult.hasErrors()) {
			model.addAttribute("alioBogoseoVO", alioBogoseoVO);
			return "sample/alioSampleRegister";
		}

		alioBogoseoService.updateSample(alioBogoseoVO);
		status.setComplete();
		return "forward:/alioBogoseo.do";
	}
	
	@RequestMapping("/deleteAlioSample.do")
	public String deleteSample(AlioBogoseoVO alioBogoseoVO, @ModelAttribute("searchVO") SampleDefaultVO searchVO, SessionStatus status) throws Exception {
		alioBogoseoService.deleteSample(alioBogoseoVO);
		status.setComplete();
		return "forward:/alioBogoseo.do";
	}
	
	/** 보고서2 **/
	   @RequestMapping(value = "/alioBogoseo2.do")
	   public String alioBogoseo2(@ModelAttribute("searchVO") AlioBogoseoVO alioBogoseoVO, ModelMap model) throws Exception {
		   
		   /**
			 * 글을 조회한다.
			 * @param sampleVO - 조회할 정보가 담긴 VO
			 * @param searchVO - 목록 조회조건 정보가 담긴 VO
			 * @param status
			 * @return @ModelAttribute("sampleVO") - 조회한 정보
			 * @exception Exception
			 */  
		   
		   	AlioBogoseoVO bogoseoView = alioBogoseoService.selectAlioBogoseoView(alioBogoseoVO);
		    model.addAttribute("alioBogoseoVO", bogoseoView);
		      
		      
	      return "sample/alioBogoseo2";
	   }
	   

	
	   /** 채용정보 **/
	   @RequestMapping(value = "/alioChaeYong.do")
	   public String alioChaeYong(@ModelAttribute("searchVO") SampleDefaultVO searchVO, ModelMap model) throws Exception {
	      
	      //** EgovPropertyService.sample *//*
	         searchVO.setPageUnit(propertiesService.getInt("pageUnit"));
	         searchVO.setPageSize(propertiesService.getInt("pageSize"));
	   
	         //** pageing setting *//*
	         PaginationInfo paginationInfo = new PaginationInfo();
	         paginationInfo.setCurrentPageNo(searchVO.getPageIndex());
	         paginationInfo.setRecordCountPerPage(searchVO.getPageUnit());
	         paginationInfo.setPageSize(searchVO.getPageSize());
	   
	         searchVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
	         searchVO.setLastIndex(paginationInfo.getLastRecordIndex());
	         searchVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());
	   
	         List<?> sampleList = alioCYService.selectAlioCYList(searchVO);
	         model.addAttribute("resultList", sampleList);
	   
	         int totCnt = alioCYService.selectAlioCYListTotCnt(searchVO);
	         paginationInfo.setTotalRecordCount(totCnt);
	         model.addAttribute("paginationInfo", paginationInfo);
	         
	         return "sample/alioChaeYong";
	   }
	   
	   @RequestMapping(value = "/addAlioCYSampleView.do")
	      public String addAlioSampleView(@ModelAttribute("searchVO") SampleDefaultVO searchVO, Model model) throws Exception {
	         model.addAttribute("alioCYVO", new AlioCYVO());
	         return "sample/alioChaeYoungRegister";
	         
	      }
	      
	      @RequestMapping(value = "/addAlioCYSample.do")
	      public String addAlioSample(@ModelAttribute("searchVO") SampleDefaultVO searchVO, AlioCYVO alioCYVO, BindingResult bindingResult, Model model, SessionStatus status)
	            throws Exception {
	         // Server-Side Validation
	         beanValidator.validate(alioCYVO, bindingResult);
	         if (bindingResult.hasErrors()) {
	            model.addAttribute("alioCYVO", alioCYVO);
	            return "sample/alioChaeYoungRegister";
	         }
	         alioCYService.insertSample(alioCYVO);
	         status.setComplete();
	         return "forward:/alioChaeYong.do";
	      }
	      
	      @RequestMapping("/updateAlioCYSampleView.do")
	      public String updateAlioSampleView(@RequestParam("cy_id") String id, @ModelAttribute("searchVO") SampleDefaultVO searchVO, Model model) throws Exception {
	         AlioCYVO alioCYVO = new AlioCYVO();
	         alioCYVO.setCy_id(id);
	         // 변수명은 CoC 에 따라 sampleVO
	         model.addAttribute(selectSample(alioCYVO, searchVO));
	         return "sample/alioChaeYoungRegister";
	      }


	      public AlioCYVO selectSample(AlioCYVO alioCYVO, @ModelAttribute("searchVO") SampleDefaultVO searchVO) throws Exception {
	         return alioCYService.selectAlioCYView(alioCYVO);
	      }
	      
	      @RequestMapping("/updateAlioCYSample.do")
	      public String updateAlioSample(@ModelAttribute("searchVO") SampleDefaultVO searchVO, AlioCYVO alioCYVO, BindingResult bindingResult, Model model, SessionStatus status)
	            throws Exception {

	         beanValidator.validate(alioCYVO, bindingResult);

	         if (bindingResult.hasErrors()) {
	            model.addAttribute("alioCYVO", alioCYVO);
	            return "sample/alioChaeYoungRegister";
	         }

	         alioCYService.updateSample(alioCYVO);
	         status.setComplete();
	         return "forward:/alioChaeYong.do";
	      }
	      
	      @RequestMapping("/deleteAlioCYSample.do")
	      public String deleteSample(AlioCYVO alioCYVO, @ModelAttribute("searchVO") SampleDefaultVO searchVO, SessionStatus status) throws Exception {
	         alioCYService.deleteSample(alioCYVO);
	         status.setComplete();
	         return "forward:/alioChaeYong.do";
	      }
	   
	   /** 채용정보2 **/
	      @RequestMapping(value = "/alioChaeYong2.do")
	      public String alioChaeYong2(@ModelAttribute("searchVO") AlioCYVO alioCYVO, ModelMap model) throws Exception {
	         
	         /**
	          * 글을 조회한다.
	          * @param sampleVO - 조회할 정보가 담긴 VO
	          * @param searchVO - 목록 조회조건 정보가 담긴 VO
	          * @param status
	          * @return @ModelAttribute("sampleVO") - 조회한 정보
	          * @exception Exception
	          */  
	         
	            AlioCYVO chaeyoungView = alioCYService.selectAlioCYView(alioCYVO);
	          model.addAttribute("alioCYVO", chaeyoungView);
	            
	            
	         return "sample/alioChaeYong2";
	      }

}
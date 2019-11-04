package egovframework.example.sample.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.example.sample.service.EgovFileMngService;
import egovframework.example.sample.service.FileVO;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;

@Service("EgovFileMngService")
public class EgovFileMngServiceImpl extends EgovAbstractServiceImpl implements EgovFileMngService {

    @Resource(name = "FileManageDAO")
    private FileManageDAO fileMngDAO;

    /**
     * atchFileId 생성
     * @throws Exception
     */
    @Override
	public int nextStringId() throws Exception {
    	
    	fileMngDAO.addStringId();
    	
    	return fileMngDAO.nextStringId();
    }
    
    /**
     * 여러 개의 파일을 삭제한다.
     *
     * @see egovframework.com.cmm.service.EgovFileMngService#deleteFileInfs(java.util.List)
     */
    @Override
    public void deleteFileInfs(List<?> fvoList) throws Exception {
	fileMngDAO.deleteFileInfs(fvoList);
    }

    /**
     * 하나의 파일에 대한 정보(속성 및 상세)를 등록한다.
     *
     * @see egovframework.com.cmm.service.EgovFileMngService#insertFileInf(egovframework.com.cmm.service.FileVO)
     */
    @Override
	public int insertFileInf(FileVO fvo) throws Exception {
	int atchFileId = fvo.getAtchFileId();

	fileMngDAO.insertFileInf(fvo);

	return atchFileId;
    }

    /**
     * 여러 개의 파일에 대한 정보(속성 및 상세)를 등록한다.
     *
     * @see egovframework.com.cmm.service.EgovFileMngService#insertFileInfs(java.util.List)
     */
    @Override
    public int insertFileInfs(List<?> fvoList) throws Exception {
	int atchFileId = 0;

	if (fvoList.size() != 0) {
	    atchFileId = fileMngDAO.insertFileInfs(fvoList);
	}
	if(atchFileId == 0){
		atchFileId = 0;
	}
	return atchFileId;
    }

    /**
     * 파일에 대한 목록을 조회한다.
     *
     * @see egovframework.com.cmm.service.EgovFileMngService#selectFileInfs(egovframework.com.cmm.service.FileVO)
     */
    @Override
	public List<FileVO> selectFileInfs(FileVO fvo) throws Exception {
	return fileMngDAO.selectFileInfs(fvo);
    }

    /**
     * 여러 개의 파일에 대한 정보(속성 및 상세)를 수정한다.
     *
     * @see egovframework.com.cmm.service.EgovFileMngService#updateFileInfs(java.util.List)
     */
    @Override
	public void updateFileInfs(List<?> fvoList) throws Exception {
	//Delete & Insert
	fileMngDAO.updateFileInfs(fvoList);
    }

    /**
     * 하나의 파일을 삭제한다.
     *
     * @see egovframework.com.cmm.service.EgovFileMngService#deleteFileInf(egovframework.com.cmm.service.FileVO)
     */
    @Override
	public void deleteFileInf(FileVO fvo) throws Exception {
	fileMngDAO.deleteFileInf(fvo);
    }

    /**
     * 파일에 대한 상세정보를 조회한다.
     *
     * @see egovframework.com.cmm.service.EgovFileMngService#selectFileInf(egovframework.com.cmm.service.FileVO)
     */
    @Override
	public FileVO selectFileInf(FileVO fvo) throws Exception {
	return fileMngDAO.selectFileInf(fvo);
    }

    /**
     * 파일 구분자에 대한 최대값을 구한다.
     *
     * @see egovframework.com.cmm.service.EgovFileMngService#getMaxFileSN(egovframework.com.cmm.service.FileVO)
     */
    @Override
	public int getMaxFileSN(FileVO fvo) throws Exception {
	return fileMngDAO.getMaxFileSN(fvo);
    }

    /**
     * 전체 파일을 삭제한다.
     *
     * @see egovframework.com.cmm.service.EgovFileMngService#deleteAllFileInf(egovframework.com.cmm.service.FileVO)
     */
    @Override
	public void deleteAllFileInf(FileVO fvo) throws Exception {
	fileMngDAO.deleteAllFileInf(fvo);
    }

    /**
     * 파일명 검색에 대한 목록을 조회한다.
     *
     * @see egovframework.com.cmm.service.EgovFileMngService#selectFileListByFileNm(egovframework.com.cmm.service.FileVO)
     */
    @Override
	public Map<String, Object> selectFileListByFileNm(FileVO fvo) throws Exception {
	List<FileVO>  result = fileMngDAO.selectFileListByFileNm(fvo);
	int cnt = fileMngDAO.selectFileListCntByFileNm(fvo);

	Map<String, Object> map = new HashMap<String, Object>();

	map.put("resultList", result);
	map.put("resultCnt", Integer.toString(cnt));

	return map;
    }

    /**
     * 이미지 파일에 대한 목록을 조회한다.
     *
     * @see egovframework.com.cmm.service.EgovFileMngService#selectImageFileList(egovframework.com.cmm.service.FileVO)
     */
    @Override
	public List<FileVO> selectImageFileList(FileVO vo) throws Exception {
	return fileMngDAO.selectImageFileList(vo);
    }
}

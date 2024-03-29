package member.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import member.vo.FileVO;

public interface IFileService {
	
		/**
		 * 첨부파일 목록을 저장하기 위한 메서드
		 * @param req
		 * @param memId 
		 * @return
		 */
		public FileVO saveFileList(HttpServletRequest req, String memId);
		/**
		 * 첨부파일 목록 조회하기
		 * @param FileVO
		 * @return
		 */
		public List<FileVO> getFileList(String memId);
		/**
		 * 첨부파일 세부정보 조회하기
		 * @param FileVO
		 * @return
		 */
		public FileVO getFileDetail(FileVO FileVO);
		
		
		public int setProfile(FileVO atchFileVO);
		
		public FileVO getProfile(String memId);
		
		public int deleteFileList(String memId);
		
		public List<FileVO> get3FileList(String memId);
}

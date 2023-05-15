package member.dao;

import java.util.List;

import dao.MyBatisDao;
import member.service.FileServiceImpl;
import member.service.IFileService;
import member.vo.FileVO;

public class FileDaoImpl extends MyBatisDao implements IFileDao  {
private static IFileDao fileDao;
		
	private  FileDaoImpl() {
	
	} 
	
	public static IFileDao getInstance() {
		if(fileDao == null) {
			fileDao = new FileDaoImpl();
		}
		return fileDao;
	}
	
	
	@Override
	public int insertFile(FileVO FileVO) {
		
		return insert("File.insertFile",FileVO);
	}

	@Override
	public int insertFileDetail(FileVO FileVO) {
		// TODO Auto-generated method stub
		return insert("File.insertFileDetail",FileVO);
	}

	@Override
	public List<FileVO> getFileList(String memId) {
		// TODO Auto-generated method stub
		return selectList("File.getFileList", memId);
	}

	@Override
	public FileVO getFileDetail(FileVO FileVO) {
		// TODO Auto-generated method stub
		return selectOne("File.getFileDetail", FileVO);
	}

	@Override
	public int setProfile(FileVO atchFileVO) {
		// TODO Auto-generated method stub
		return update("File.setProfile", atchFileVO);
	}

	@Override
	public FileVO getProfile(String memId) {
		// TODO Auto-generated method stub
		return selectOne("File.getProfile",memId);
	}

	@Override
	public int deleteFileList(String memId) {
		// TODO Auto-generated method stub
		return delete("File.deleteFileList",memId);
	}

	@Override
	public List<FileVO> get3FileList(String memId) {
	 List<FileVO> flist =	selectList("File.getFileList", memId);
	 IFileService fileservice = FileServiceImpl.getInstance();
	 
	 FileVO Img = new FileVO();
	 Img.setFileNo(0);
	 Img.setFileSn(0);
	 FileVO baseImg2 = fileservice.getFileDetail(Img);
	 
	 if(flist.get(0)==null) {
		 flist.add(0,baseImg2);
	 }
	 
	 if(flist.get(1)==null) {
		 flist.add(1,baseImg2);
	 }
	 if(flist.get(2)==null) {
		 flist.add(2,baseImg2);
	 
	 }
	
	 
		
		
		return flist.subList(0,3);
	}
	
}

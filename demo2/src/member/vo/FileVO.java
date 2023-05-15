package member.vo;

import java.sql.Date;

public class FileVO {
	private long fileNo = -1; // 첨부파일ID
	private int fileSn = 1; // 파일순번
	private String fileStre; // 파일저장경로
	private String fileNm; // 저장파일명
	private String fileOgnm; // 원본파일명
	private String fileExt; // 파일확장자
	private String fileCn; // 파일내용
	private long fileSize = 0; // 파일크기
	private Date fileDate; //생성일시
	private String fileUse; //사용여부
	private String memId;
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public long getFileNo() {
		return fileNo;
	}
	public void setFileNo(long fileNo) {
		this.fileNo = fileNo;
	}
	public int getFileSn() {
		return fileSn;
	}
	public void setFileSn(int fileSn) {
		this.fileSn = fileSn;
	}
	public String getFileStre() {
		return fileStre;
	}
	public void setFileStre(String fileStre) {
		this.fileStre = fileStre;
	}
	public String getFileNm() {
		return fileNm;
	}
	public void setFileNm(String fileNm) {
		this.fileNm = fileNm;
	}
	public String getFileOgnm() {
		return fileOgnm;
	}
	public void setFileOgnm(String fileOgnm) {
		this.fileOgnm = fileOgnm;
	}
	public String getFileExt() {
		return fileExt;
	}
	public void setFileExt(String fileExt) {
		this.fileExt = fileExt;
	}
	public String getFileCn() {
		return fileCn;
	}
	public void setFileCn(String fileCn) {
		this.fileCn = fileCn;
	}
	public long getFileSize() {
		return fileSize;
	}
	public void setFileSize(long fileSize) {
		this.fileSize = fileSize;
	}
	public Date getFileDate() {
		return fileDate;
	}
	public void setFileDate(Date fileDate) {
		this.fileDate = fileDate;
	}
	public String getFileUse() {
		return fileUse;
	}
	public void setFileUse(String fileUse) {
		this.fileUse = fileUse;
	}
	@Override
	public String toString() {
		return "FileVO [fileNo=" + fileNo + ", fileSn=" + fileSn + ", fileStre=" + fileStre + ", fileNm=" + fileNm
				+ ", fileOgnm=" + fileOgnm + ", fileExt=" + fileExt + ", fileCn=" + fileCn + ", fileSize=" + fileSize
				+ ", fileDate=" + fileDate + ", fileUse=" + fileUse + ", memId=" + memId + "]";
	}
	
    
	
	
	
	
	
	
}

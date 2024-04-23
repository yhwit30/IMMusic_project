package com.example.demo.vo;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class GenFile {
	private int id;
	private String regDate;
	private String updateDate;
	private boolean delStatus;
	private String delDate;
	private String typeCode;
	private String type2Code;
	private String relTypeCode;
	private int relId;
	private String fileExtTypeCode;
	private String fileExtType2Code;
	private int fileSize;
	private int fileNo;
	private String fileExt;
	private String fileDir;
	private String originFileName;
	
	@JsonIgnore
	public String getFilePath(String genFileDirPath) {
		return genFileDirPath + getBaseFileUri();
	}

	@JsonIgnore
	private String getBaseFileUri() {
		return "/" + relTypeCode + "/" + fileDir + "/" + getFileName();
	}

	public String getFileName() {
		
		String GenFileName[] = originFileName.split(fileExt);
		String NewGenFileName = GenFileName[0].substring(0, GenFileName[0].length()-1);
		
		return id + "_" + NewGenFileName + "." + fileExt;
	}

	public String getForPrintUrl() {
		return "/gen" + getBaseFileUri() + "?updateDate=" + updateDate;
	}

	public String getDownloadUrl() {
		return "/common/genFile/doDownload?id=" + id;
	}

	public String getMediaHtml() {
		return "<img src=\"" + getForPrintUrl() + "\">";
	}
}
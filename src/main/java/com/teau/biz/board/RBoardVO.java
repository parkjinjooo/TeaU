package com.teau.biz.board;

import java.sql.Date;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlTransient;

import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnore;

@XmlAccessorType(XmlAccessType.FIELD)
// 랭킹게시글 
public class RBoardVO {

    // 게시판 번호 
    private int boardId;

    // 게시글 작성자 
    private String boardWriter;

    // 게시글 제목 
    private String boardTitle;

    // 게시글 내용 
    private String boardContent;

    // 좋아요 갯수 
    private int boardLike;

    // 게시글 조회수 
    private int boardHit;

    // 게시글 날짜 
    private Date boardRegdate;

    // 썸네일 사진 디비에 이미지는 링크로 넣기
    private String boardImgm;

    // 메인이미지 디비에 이미지는 링크로 넣기
    private String boardImg1;
    
    @XmlTransient
	private MultipartFile uploadFile;

    public int getBoardId() {
        return boardId;
    }

    public void setBoardId(int boardId) {
        this.boardId = boardId;
    }

    public String getBoardWriter() {
        return boardWriter;
    }

    public void setBoardWriter(String boardWriter) {
        this.boardWriter = boardWriter;
    }

    public String getBoardTitle() {
        return boardTitle;
    }

    public void setBoardTitle(String boardTitle) {
        this.boardTitle = boardTitle;
    }

    public String getBoardContent() {
        return boardContent;
    }

    public void setBoardContent(String boardContent) {
        this.boardContent = boardContent;
    }

    public int getBoardLike() {
        return boardLike;
    }

    public void setBoardLike(int boardLike) {
        this.boardLike = boardLike;
    }

    public int getBoardHit() {
        return boardHit;
    }

    public void setBoardHit(int boardHit) {
        this.boardHit = boardHit;
    }

    public Date getBoardRegdate() {
        return boardRegdate;
    }

    public void setBoardRegdate(Date boardRegdate) {
        this.boardRegdate = boardRegdate;
    }

    public String getBoardImgm() {
        return boardImgm;
    }

    public void setBoardImgm(String boardImgm) {
        this.boardImgm = boardImgm;
    }

    public String getBoardImg1() {
        return boardImg1;
    }

    public void setBoardImg1(String boardImg1) {
        this.boardImg1 = boardImg1;
    }
    
	@JsonIgnore
	public MultipartFile getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}

    @Override
    public String toString() {
        return "RBoardVO [boardId=" + boardId + ", boardWriter=" + boardWriter + ", boardTitle=" + boardTitle
                + ", boardContent=" + boardContent + ", boardLike=" + boardLike + ", boardHit=" + boardHit
                + ", boardRegdate=" + boardRegdate + ", boardImgm=" + boardImgm + ", boardImg1=" + boardImg1 + "]";
    }
}

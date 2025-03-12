package kr.co.farmstory.service;

import java.util.List;

import kr.co.farmstory.dao.CommentDAO;
import kr.co.farmstory.dto.CommentDTO;

public enum CommentService {
	
	INSTANCE;
	private CommentDAO dao = CommentDAO.getInstance();
	
	public CommentDTO registerComment(CommentDTO dto) {
		
		int generatedKey = dao.insertComment(dto);
		return dao.selectComment(generatedKey);
	}
	
	public CommentDTO findComment(int cno) {
		return dao.selectComment(cno);
	}
	
	public List<CommentDTO> findAllComment(String parent) {
		return dao.selectAllComment(parent);
	}
	
	public void modifyComment(CommentDTO dto) {
		dao.updateComment(dto);
	}
	
	public void deleteComment(int cno) {
		dao.deleteComment(cno);
	}
}



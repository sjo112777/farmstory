package kr.co.farmstory.controller.comment;

import java.io.IOException;
import java.io.PrintWriter;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.farmstory.dto.CommentDTO;
import kr.co.farmstory.service.CommentService;

@WebServlet("/comment/write.do")
public class WriteController extends HttpServlet {
	private static final long serialVersionUID = -7924097624078436862L;
	
	private CommentService service = CommentService.INSTANCE;
	private Logger logger = LoggerFactory.getLogger(this.getClass());

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 데이터 수신
		String parent = req.getParameter("parent");
		String content = req.getParameter("content");
		String writer = req.getParameter("writer");
		String regip = req.getRemoteAddr();
		
		// DTO 생성
		CommentDTO dto = new CommentDTO();
		dto.setParent(parent);
		dto.setContent(content);
		dto.setWriter(writer);
		dto.setRegip(regip);
		logger.debug(dto.toString());
		
		// 서비스 호출
		CommentDTO savedCommentDTO = service.registerComment(dto);
		
		// 리다이렉트 이동(폼태그를 이용해서 데이터를 전송할때)
		//resp.sendRedirect("/farmstory/community/view.do?no="+parent);
		
		// JSON 출력(Javascript fetch함수로 데이터를 전송할때)
		PrintWriter printWriter = resp.getWriter();
				
		Gson gson = new Gson();
		String json = gson.toJson(savedCommentDTO);
		printWriter.println(json);
		
		//이동
		//resp.sendRedirect("/farmstory/community/recipe-sharing.do");
	}
}
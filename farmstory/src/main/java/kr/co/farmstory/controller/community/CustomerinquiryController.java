package kr.co.farmstory.controller.community;

import java.io.IOException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.farmstory.dto.CommunityDTO;
import kr.co.farmstory.dto.FileDTO;
import kr.co.farmstory.service.CommunityService;
import kr.co.farmstory.service.FileService;

@WebServlet("/community/customer-inquiry.do")
public class CustomerinquiryController extends HttpServlet{
	
private static final long serialVersionUID = 6702814985301369938L;

private CommunityService service = CommunityService.INSTANCE;
private FileService fileService = FileService.INSTANCE;

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String no = req.getParameter("no");

		req.setAttribute("no", no);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/community/customer-inquiry.jsp");
		dispatcher.forward(req, resp);
	} 
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
				// 클라이언트 데이터 수신 
				String no = req.getParameter("no");
				String title = req.getParameter("title");
				String content = req.getParameter("content");
				String regip = req.getRemoteAddr();
				
				// 파일 업로드 서비스 호
				List<FileDTO> files = fileService.uploadFile(req);
				
				// DTO 생성                                           
				CommunityDTO dto = new CommunityDTO();
				dto.setNo(no);
				dto.setTitle(title);
				dto.setContent(content);
				dto.setFile(files.size());
				dto.setRegip(regip);
				
				
				// 서비스 호출 
				int count = service.modifyCommunity(dto);
				
				// 파일 등록 서비스 호출
				for(FileDTO fileDTO : files) {
					fileDTO.setAno(count);
					fileService.registeFile(fileDTO);
				}

				
				req.setAttribute("count", count);
				
				RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/community/customer-inquiry.jsp");
				dispatcher.forward(req, resp);

	}
}

	
	



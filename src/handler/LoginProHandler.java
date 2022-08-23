package handler;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import member.LogonDao;

@Controller
public class LoginProHandler implements CommandHandler{
	
	@Resource
	private LogonDao logonDao; // 싱글톤 객체
	
	@RequestMapping("/loginPro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse respones) throws Throwable {

		String id = request.getParameter( "id" );
		String passwd = request.getParameter( "passwd" );

		int result = logonDao.check(id, passwd); // 변수 생성후 이렇게 만들어줌
		
		request.setAttribute("result", result);
		request.setAttribute("id", id);
		   
		return new ModelAndView("loginPro");
	}

}

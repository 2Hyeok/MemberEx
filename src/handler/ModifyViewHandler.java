package handler;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import member.LogonDBBean;
import member.LogonDao;
import member.LogonDataBean;

@Controller
public class ModifyViewHandler implements CommandHandler{
	
	@Resource
	private LogonDao logonDao;
	
	@RequestMapping("/modifyView")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse respones) throws Throwable {
		
		String id = (String) request.getSession().getAttribute("memId");
		String passwd = request.getParameter("passwd");

		int result = logonDao.check(id, passwd);
		
		request.setAttribute("result", result);
		
		if(result != 0) {
			LogonDataBean dto = logonDao.getMember(id);
			request.setAttribute("dto", dto);
		}
		
		return new ModelAndView("modifyView");
	}

}

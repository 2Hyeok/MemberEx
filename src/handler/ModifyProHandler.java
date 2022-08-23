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
public class ModifyProHandler implements CommandHandler{
	
	@Resource
	private LogonDao logonDao;
	
	@RequestMapping("/modifyPro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse respones) throws Throwable {
		
		LogonDataBean dto = new LogonDataBean();
		dto.setPasswd(request.getParameter("passwd"));
		
		/* 자바 형식으로 바꿔주어야함
		<jsp:useBean id="dto" class="member.LogonDataBean"/>
		<jsp:setProperty name="dto" property="*"/>
		<!-- passwd -->
		 */
				
		dto.setId ((String) request.getSession().getAttribute("memId"));

		String tel = null;
		String tel1 = request.getParameter("tel1");
		String tel2 = request.getParameter("tel2");
		String tel3 = request.getParameter("tel3");
		
		if( ! tel1.equals("")&& ! tel2.equals("") && ! tel3.equals("")){
			tel = tel1 + "-" + tel2 + "-" + tel3;
		}
		dto.setTel(tel);

		String email = null;
		String email1 = request.getParameter("email1");
		String email2 = request.getParameter("email2");
		
		if(! email1.equals("") && ! email2.equals("")){
			email = email1 + "@" + email2;
		}
		dto.setEmail(email);

		int result = logonDao.modifyMember(dto);
		
		request.setAttribute("result", result);
		
		return new ModelAndView("modifyPro");
	}

}

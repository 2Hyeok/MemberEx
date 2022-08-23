package handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

public interface CommandHandler {
	public ModelAndView process(HttpServletRequest request, HttpServletResponse respones)
		throws Throwable;
}

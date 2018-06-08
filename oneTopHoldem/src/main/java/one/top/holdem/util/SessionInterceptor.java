package one.top.holdem.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class SessionInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)throws Exception {
		try {
			if (request.getSession().getAttribute("grade") == null) {
				String parameter = ""; 
				String path = request.getRequestURI().substring(request.getRequestURI().lastIndexOf("/")+1);
				//System.out.println("path : "+path);
				String url = request.getRequestURL().append('?').append(request.getQueryString()).toString();
				//System.out.println("url : " + url);
				parameter = url.substring(url.indexOf("?")+1);
				//System.out.println("parameter : " + parameter);
				if(parameter.equals("null") || parameter == null || parameter.equals("")){
					
				}else{
					path = path +"?"+parameter;
				}
				//System.out.println("final path : " + path);
				response.sendRedirect(request.getContextPath()+"/adlogin?path="+path);
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return true;
	}
}
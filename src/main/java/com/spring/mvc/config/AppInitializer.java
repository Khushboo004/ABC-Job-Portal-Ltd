//package com.spring.mvc.config;
//
//import javax.servlet.ServletContext;
//import javax.servlet.ServletException;
//import javax.servlet.ServletRegistration;
//
//import org.springframework.web.WebApplicationInitializer;
//import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
//import org.springframework.web.servlet.DispatcherServlet;
//
//
//
//public class AppInitializer  implements WebApplicationInitializer {
//	public void onStartup(ServletContext servletContext) throws ServletException {
//		
//		AnnotationConfigWebApplicationContext appContext = new AnnotationConfigWebApplicationContext();
//		appContext.register(WebMvcConfig.class);
//		ServletRegistration.Dynamic dispatcher = servletContext.addServlet("SpringDispatcher",
//				new DispatcherServlet(appContext));
//		dispatcher.setLoadOnStartup(1);
//		dispatcher.addMapping("/");
//	}
//}
///* extends AbstractAnnotationConfigDispatcherServletInitializer{
//
//	@Override
//	protected Class<?>[] getRootConfigClasses() {
//		return new Class[]{AppContext.class};
//	}
//
//	@Override
//	protected Class<?>[] getServletConfigClasses() {
//		return new Class[]{WebMvcConfig.class};
//	}
//
//	@Override
//	protected String[] getServletMappings() {
//		// TODO Auto- method stub
//		return new String[]{"/"};
//	}
//}*/
//

//package com.spring.mvc.config;
//
//
//import java.util.Properties;
//
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.ComponentScan;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.mail.javamail.JavaMailSender;
//import org.springframework.mail.javamail.JavaMailSenderImpl;
//import org.springframework.web.servlet.config.annotation.EnableWebMvc;
//import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
//import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
//import org.springframework.web.servlet.view.InternalResourceViewResolver;
//import org.springframework.web.servlet.view.JstlView;
//
//
//
//
//@Configuration
//@EnableWebMvc
//@ComponentScan(basePackages = {"com.spring.mvc"})
//public class WebMvcConfig implements WebMvcConfigurer{
//
//	@Bean
//	public InternalResourceViewResolver viewResolver() {
//		InternalResourceViewResolver vr = new InternalResourceViewResolver();
//		vr.setViewClass(JstlView.class);
//		vr.setPrefix("/WEB-INF/views/");
//		vr.setSuffix(".jsp");
//		return vr;
//	}
//	
//	/*
//	 * @Bean public void addResourceHandlers(ResourceHandlerRegistry registry) {
//	 * registry.addResourceHandler("/WEB-INF/resources/**")
//	 * .addResourceLocations("/WEB-INF/resources/"); }
//	 */
//	
//	@Override
//	public void addResourceHandlers(ResourceHandlerRegistry registry) {
//		registry.addResourceHandler("/css/**")
//				.addResourceLocations("WEB-INF/resources/css/");
//		
//		registry.addResourceHandler("/js/**")
//				.addResourceLocations("WEB-INF/resources/js/");
//		
//		registry.addResourceHandler("/images/**")
//				.addResourceLocations("WEB-INF/resources/images/");
//
//	}
//	
//
//	@Bean("mailSender")
//	public JavaMailSender getJavaMailSender(){
//		JavaMailSenderImpl javaMailSenderImpl = new JavaMailSenderImpl();
//		javaMailSenderImpl.setHost("smtp.gmail.com");
//		javaMailSenderImpl.setUsername("rehnumakhushboo812@gmail.com");
//		javaMailSenderImpl.setPassword("drzaextkemqvcyfc");
//				
//		
//		Properties mailProperties = new Properties();
//		mailProperties.put("mail.smtp.auth",true);
//		mailProperties.put("mail.smtp.socketFactory.port", "465");
//		mailProperties.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
//		mailProperties.put("mail.smtp.port", "465");
//		javaMailSenderImpl.setJavaMailProperties(mailProperties);
//		return javaMailSenderImpl;
//	}
//	
//	
//}
//
//
//
//
//
//

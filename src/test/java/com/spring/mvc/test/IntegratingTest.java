//package com.spring.mvc.test;
//
//import javax.servlet.ServletContext;
//
//import org.junit.Assert;
//import org.junit.Before;
//import org.junit.Test;
//import org.junit.runner.RunWith;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.mock.web.MockServletContext;
//import org.springframework.test.context.ContextConfiguration;
//import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
//import org.springframework.test.context.web.WebAppConfiguration;
//import org.springframework.test.web.servlet.MockMvc;
//import org.springframework.test.web.servlet.setup.MockMvcBuilders;
//import org.springframework.web.context.WebApplicationContext;
//
//@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(locations = { "classpath:spring-config" })
//@WebAppConfiguration
//public class IntegratingTest {
//	@Autowired
//	private WebApplicationContext webApplicationContext;
//
//	protected MockMvc mockMvc;
//
//	@Before
//	public void setup() {
//		this.mockMvc = MockMvcBuilders.webAppContextSetup(this.webApplicationContext).build();
//	}
//
//
//	@Test
//	public void mainController() {
//		ServletContext servletContext = webApplicationContext.getServletContext();
//		Assert.assertNotNull(servletContext);
//		Assert.assertTrue(servletContext instanceof MockServletContext);
//		Assert.assertNotNull(webApplicationContext.getBean("mainController"));
//
//	}
//
//	@Test
//	public void LoginController() {
//		ServletContext servletContext = webApplicationContext.getServletContext();
//		Assert.assertNotNull(servletContext);
//		Assert.assertTrue(servletContext instanceof MockServletContext);
//		Assert.assertNotNull(webApplicationContext.getBean("loginController"));
//
//	}
//	
//
//
//}

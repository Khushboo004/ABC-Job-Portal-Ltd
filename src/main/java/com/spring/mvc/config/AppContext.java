//package com.spring.mvc.config;
//
//import java.util.Properties;
//
//import javax.sql.DataSource;
//
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.jdbc.core.JdbcTemplate;
//import org.springframework.jdbc.datasource.DriverManagerDataSource;
//import org.springframework.orm.hibernate5.HibernateTransactionManager;
//import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
//import org.springframework.transaction.annotation.EnableTransactionManagement;
//
//import com.spring.mvc.model.Admin;
//import com.spring.mvc.model.Jobs;
//import com.spring.mvc.model.User;
//
//@Configuration
//@EnableTransactionManagement
///* @PropertySource({ "classpath:database.properties" }) */
//public class AppContext {
////	@Autowired
////	private Environment environment;
//
//	
//	/*
//	 * @Bean public BasicDataSource dataSource() { BasicDataSource dataSource = new
//	 * BasicDataSource();
//	 * dataSource.setDriverClassName(environment.getRequiredProperty(
//	 * "jdbc.driverClass")); dataSource.setUrl(environment.getProperty("jdbc.url"));
//	 * dataSource.setUsername(environment.getProperty("jdbc.username"));
//	 * dataSource.setPassword(environment.getProperty("jdbc.password")); return
//	 * dataSource; }
//	 */
//	
//	 
//	@Bean
//	/* public DriverManagerDataSource getDataSource() { */
//	public DataSource getDataSource() {
//		DriverManagerDataSource ds = new DriverManagerDataSource();
//		ds.setDriverClassName("com.mysql.jdbc.Driver");
//		ds.setUrl("jdbc:mysql://localhost:3306/register");
//		ds.setUsername("root");
//		ds.setPassword("root");
//		return ds;
//	}
//
//	@Bean("jdbcTemplate")
//	public JdbcTemplate getTemplate() {
//		JdbcTemplate jdbcTemplate = new JdbcTemplate();
//		jdbcTemplate.setDataSource(getDataSource());
//		return jdbcTemplate;
//	}
//
//	@Bean("sessionFactory")
//	public LocalSessionFactoryBean getSessionFactory() {
//		LocalSessionFactoryBean sessionFactory = new LocalSessionFactoryBean();
//		sessionFactory.setDataSource(getDataSource());
//		Properties properties = new Properties();
//		properties.put("hibernate.dialect", "org.hibernate.dialect.MySQL57Dialect");
//		properties.put("hibernate.show_sql", "true");
//		/*
//		 * properties.put("hibernate.format_sql",
//		 * environment.getRequiredProperty("hibernate.format_sql"));
//		 */		properties.put("hibernate.hbm2ddl.auto", "update");
//		sessionFactory.setHibernateProperties(properties);
//		sessionFactory.setAnnotatedClasses(User.class,Admin.class, Jobs.class);
////		sessionFactory.setAnnotatedClasses(Admin.class);
////		sessionFactory.setAnnotatedClasses(Jobs.class);
//		return sessionFactory;
//	}
//
////	private Properties hibernateProperties() {
////		Properties properties = new Properties();
////		properties.put("hibernate.dialect", environment.getRequiredProperty("hibernate.dialect"));
////		properties.put("hibernate.show_sql", environment.getRequiredProperty("hibernate.show_sql"));
////		/*
////		 * properties.put("hibernate.format_sql",
////		 * environment.getRequiredProperty("hibernate.format_sql"));
////		 */		properties.put("hibernate.hbm2ddl.auto", environment.getRequiredProperty("hibernate.hbm2ddl.auto"));
////		return properties;
////	}
//
//	@Bean
//	public HibernateTransactionManager getTransactionManager() {
//		HibernateTransactionManager transactionManager = new HibernateTransactionManager();
//		transactionManager.setSessionFactory(getSessionFactory().getObject());
//		return transactionManager;
//
//	}
//
//
//	
//}
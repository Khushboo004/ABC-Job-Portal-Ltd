package com.spring.mvc.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCallback;
import org.springframework.jdbc.core.ResultSetExtractor;

import com.spring.mvc.model.User;

public class SearchDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;


	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	public List search(User user) {
		final List list = new ArrayList();
		String sql = "select * from users where  email ='"+user.getEmail()+"'";
		jdbcTemplate.query(sql, new ResultSetExtractor<User>() {

			public User extractData(ResultSet rs) throws SQLException, DataAccessException {
				while(rs.next()) {
					User user = new User();
					user.setId(rs.getInt(1));
					user.setFullName(rs.getString(2));
					user.setEmail(rs.getString(3));
					user.setPassword(rs.getString(4));
					user.setpNo(rs.getString(5));
					user.setCountry(rs.getString(6));
					user.setGender(rs.getString(7));
					user.setAddress(rs.getString(8));
					list.add(user);
		
				
					
				}
				
				
				return null;
			}
	
		});
		return list;
	}
	
	public List display() {
		final List list = new ArrayList();
		String sql = "select * from users";
		jdbcTemplate.query(sql, new ResultSetExtractor<User>() {
			public User extractData(ResultSet rs) throws SQLException , DataAccessException {
				while(rs.next()) {
					User user = new User();
					user.setId(rs.getInt(1));
					user.setFullName(rs.getString(2));
					user.setEmail(rs.getString(3));
					user.setPassword(rs.getString(4));
					user.setpNo(rs.getString(5));
					user.setCountry(rs.getString(6));
					user.setGender(rs.getString(7));
					user.setAddress(rs.getString(8));
					
					list.add(user);
				}
				return null;
			}
		});
		return list;
	}
	

	
	

public List update( final User user) {
	String sql="update users set password=? where email=?";
	jdbcTemplate.execute(sql,new PreparedStatementCallback<Boolean>() {

		public Boolean doInPreparedStatement(PreparedStatement ps) throws SQLException, DataAccessException {	
			ps.setString(1,user.getPassword());
			ps.setString(2,user.getEmail());

			
			return ps.execute();
		}
		
	});
	

	List list=display();
	return list;

}

}
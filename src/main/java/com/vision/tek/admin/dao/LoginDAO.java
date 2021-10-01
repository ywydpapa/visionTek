package com.vision.tek.admin.dao;

import java.sql.SQLException;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.vision.tek.admin.vo.AdminVO;

@Repository
public class LoginDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private final String NAMESPACE = "loginDAO.";

	public AdminVO selectAdminInfo(AdminVO vo) throws SQLException {
		return sqlSession.selectOne(NAMESPACE + "selectAdminInfo", vo);
	}
}

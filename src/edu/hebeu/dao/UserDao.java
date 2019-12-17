package edu.hebeu.dao;
import java.util.List;




import org.apache.ibatis.annotations.Param;

import edu.hebeu.po.Books;
import edu.hebeu.po.User;

/**
 *Customer接口文件 
 */
/**
 * 根据id查询客户信息
 * @author think
 *
 */
public interface UserDao {
    
//用户注册
	public void insertUser(User user);
	public User findUserByNameAndPwd(@Param("username")String username, @Param("password")String password);
	

	
}

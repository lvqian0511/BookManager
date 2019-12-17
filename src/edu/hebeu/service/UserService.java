package edu.hebeu.service;
import java.util.List;

/**
 *Customerservice接口文件
 
 */
import edu.hebeu.po.User;
/**
 * 根据id查询客户信息
 * @author think
 *
 */
public interface UserService {
	    //用户注册
		void regist(User user);
		//用户登录
		User login(String username, String password);
}

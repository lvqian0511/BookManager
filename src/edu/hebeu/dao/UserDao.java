package edu.hebeu.dao;
import java.util.List;




import org.apache.ibatis.annotations.Param;

import edu.hebeu.po.Books;
import edu.hebeu.po.User;

/**
 *Customer�ӿ��ļ� 
 */
/**
 * ����id��ѯ�ͻ���Ϣ
 * @author think
 *
 */
public interface UserDao {
    
//�û�ע��
	public void insertUser(User user);
	public User findUserByNameAndPwd(@Param("username")String username, @Param("password")String password);
	

	
}

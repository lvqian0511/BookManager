package edu.hebeu.service;
import java.util.List;

/**
 *Customerservice�ӿ��ļ�
 
 */
import edu.hebeu.po.User;
/**
 * ����id��ѯ�ͻ���Ϣ
 * @author think
 *
 */
public interface UserService {
	    //�û�ע��
		void regist(User user);
		//�û���¼
		User login(String username, String password);
}

package edu.hebeu.dao;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import edu.hebeu.po.Books;

/**
 *Books�ӿ��ļ� 
 */
/**
 * ����id��ѯ�ͻ���Ϣ
 * @author think
 *
 */
public interface BooksDao {
    
    public Books findBookById(int id);
	public List<Books> findBooksAll();
//	�����鼮
	boolean addBooks(Books Books);
//	ɾ������
	boolean deleteBookById(int id);
//	��������
    boolean updateBooks(Books Books);
    
    List<Books> findByName(@Param("bookName")String bookName);//����bookName�ֶ��������һ��ֵ����ģ����ѯ������¼
}

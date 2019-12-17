package edu.hebeu.service;
import java.util.List;




import org.apache.ibatis.annotations.Param;

/**
 *Customerservice�ӿ��ļ�
 
 */
import edu.hebeu.po.Books;
/**
 * ����id��ѯ�ͻ���Ϣ
 * @author think
 *
 */
public interface BooksService {
	public Books findBookById(int id);
    public List<Books> findBooksAll();
    void addBooks(Books Books);
    boolean deleteBookById(int BooksId);
    boolean updateBooks(Books Books);
    List<Books> findByName(@Param("bookName")String bookName);
}

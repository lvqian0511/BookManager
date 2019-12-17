package edu.hebeu.service;
import java.util.List;




import org.apache.ibatis.annotations.Param;

/**
 *Customerservice接口文件
 
 */
import edu.hebeu.po.Books;
/**
 * 根据id查询客户信息
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

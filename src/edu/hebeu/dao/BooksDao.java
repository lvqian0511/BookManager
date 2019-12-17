package edu.hebeu.dao;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import edu.hebeu.po.Books;

/**
 *Books接口文件 
 */
/**
 * 根据id查询客户信息
 * @author think
 *
 */
public interface BooksDao {
    
    public Books findBookById(int id);
	public List<Books> findBooksAll();
//	增加书籍
	boolean addBooks(Books Books);
//	删除数据
	boolean deleteBookById(int id);
//	更新数据
    boolean updateBooks(Books Books);
    
    List<Books> findByName(@Param("bookName")String bookName);//根据bookName字段里的任意一个值进行模糊查询整条记录
}

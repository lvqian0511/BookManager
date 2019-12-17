package edu.hebeu.service.impl;

import java.util.List;




import org.springframework.beans.factory.annotation.Autowired;


import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.hebeu.dao.BooksDao;
import edu.hebeu.po.Books;
import edu.hebeu.service.BooksService;
@Service
@Transactional
public class BooksServiceImpl implements BooksService {
	//注解注入customerDao
	@Autowired
	private BooksDao booksDao;
    //查询客户
	@Override
	public List<Books> findBooksAll() {
		
		return this.booksDao.findBooksAll();
	}
	@Override
	public void addBooks(Books Books) {
	this.booksDao.addBooks(Books);
		
	}
	@Override
	public boolean deleteBookById(int BooksId) {
		return this.booksDao.deleteBookById(BooksId);
		
	}
	@Override
	public boolean updateBooks(Books Books) {
		// TODO Auto-generated method stub
		return this.booksDao.updateBooks(Books);
	

	}
	@Override
	public Books findBookById(int id) {
		// TODO Auto-generated method stub
		return this.booksDao.findBookById(id);
	}
	@Override
	public List<Books> findByName(String bookName) {
		
		return this.booksDao.findByName(bookName);
	}
    
}

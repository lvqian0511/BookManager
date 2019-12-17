package edu.hebeu.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import edu.hebeu.po.Books;
import edu.hebeu.service.BooksService;

@Controller
public class BooksController {
	@Autowired
	private BooksService BooksService;

	@RequestMapping(value = "bookslist", method = { RequestMethod.POST,
			RequestMethod.GET })
	public String customer(Model model) {
		List<Books> Books = BooksService.findBooksAll();
		model.addAttribute("Books", Books);
		return ("bookslist");

	}

	@RequestMapping("/addbooks")
	public String addBook(ModelAndView mv, Books books) {
		// 新增图书
		BooksService.addBooks(books);
		// 置空book对象

		// 查询
		return "redirect:addBooks";
	}

	@RequestMapping("updataBooks")
	public String updataBooks(Books books) {
		return ("updataBooks");
	}

	@RequestMapping("addBooks")
	public String addBook1(Books books) {
		return ("addBooks");
	}

	@RequestMapping("data")
	public String data(Books books) {
		return ("data");
	}

	// /相当于是一个servlet的名字
	@RequestMapping("/delBook")
	public String deleteUser(int id, Model model) {
		model.addAttribute("Books", BooksService.deleteBookById(id));
		return "redirect:bookslist";
	}

	// 查询单本书籍
	@RequestMapping("/getBook")
	public String getBook(int id, Model model) {
		Books Books = BooksService.findBookById(id);
		model.addAttribute("Books", Books);
		return "updataBooks";
	}

	@RequestMapping(value = "/updateBook", method = { RequestMethod.POST,
			RequestMethod.GET })
	public String updateBooks(ModelAndView mv, Books Books) {
		System.out.println(Books.toString());
		// 保存修改的值
		BooksService.updateBooks(Books);
		System.out.println("已经更新好了");
		// 跳转到对应的list路由
		return "redirect:bookslist";
	}

	// 模糊查询书籍
	// return和redict的区别：return返回的是只满足这一条件的对象的封装
	// redict是一个新的请求,forward是会保留新的跟旧的请求
	//
	@RequestMapping("/findByName")
	public String findByName(String bookName, Model model) {
		List<Books> Books = BooksService.findByName(bookName);
		model.addAttribute("Books", Books);
		return "bookslist";
	}
}

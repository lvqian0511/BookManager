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
		// ����ͼ��
		BooksService.addBooks(books);
		// �ÿ�book����

		// ��ѯ
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

	// /�൱����һ��servlet������
	@RequestMapping("/delBook")
	public String deleteUser(int id, Model model) {
		model.addAttribute("Books", BooksService.deleteBookById(id));
		return "redirect:bookslist";
	}

	// ��ѯ�����鼮
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
		// �����޸ĵ�ֵ
		BooksService.updateBooks(Books);
		System.out.println("�Ѿ����º���");
		// ��ת����Ӧ��list·��
		return "redirect:bookslist";
	}

	// ģ����ѯ�鼮
	// return��redict������return���ص���ֻ������һ�����Ķ���ķ�װ
	// redict��һ���µ�����,forward�ǻᱣ���µĸ��ɵ�����
	//
	@RequestMapping("/findByName")
	public String findByName(String bookName, Model model) {
		List<Books> Books = BooksService.findByName(bookName);
		model.addAttribute("Books", Books);
		return "bookslist";
	}
}

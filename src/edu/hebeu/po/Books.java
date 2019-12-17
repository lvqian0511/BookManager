package edu.hebeu.po;

public class Books {
	private int bookId;
	private String bookName;
	private String author;
	private String price;
	private String publishTime;
	private String type;
	private String count;
	public int getBookId() {
		return bookId;
	}
	public void setBookId(int bookId) {
		this.bookId = bookId;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getPublishTime() {
		return publishTime;
	}
	public void setPublishTime(String publishTime) {
		this.publishTime = publishTime;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}	
	public String getCount() {
		return count;
	}
	public void setCount(String count) {
		this.count = count;
	}
	@Override
	public String toString() {
		return "Books [bookId=" + bookId + ", bookName=" + bookName
				+ ", author=" + author + ", price=" + price + ", publishTime="
				+ publishTime + ", type=" + type + ", count=" + count + "]";
	}
	

	
}

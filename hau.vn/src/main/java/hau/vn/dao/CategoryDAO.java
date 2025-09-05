package hau.vn.dao;

import java.util.List;

import hau.vn.controller.Category;

public interface CategoryDAO {
	Category get(String name);

	Category get(int id);

	List<Category> search(String keyword);

	List<Category> getAll();

	void insert(Category category);

	void edit(Category category);

	void delete(int id);
	List<Category> getByUserId(int userId);
}
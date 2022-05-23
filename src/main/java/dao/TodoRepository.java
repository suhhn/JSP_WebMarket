package dao;

import java.util.ArrayList;
import java.util.List;
import dto.Todo;

public class TodoRepository{
	private static long currentId = 0;
	
	private List<Todo> todos = new ArrayList<>();
	
	private static TodoRepository instance = new TodoRepository(); 
	
	public static TodoRepository getInstance() {
		return instance;
	}
	

	public List<Todo> getTodos() {
		return todos;
	}
	
	public void addTodo(Todo todo) {// 기능 추가
		todo.setId(currentId);
		currentId++;
		todos.add(todo);
	}
	
	public void toggle(long id) {
		for (Todo todo : todos) {
			if (todo.getId() == id) {
				todo.setDone(!todo.isDone());
				break;
			}
		}
	}
	
	 public void remove(long id) {
	        Todo removeTodo = null;
	        for (Todo todo : todos) {
	            if (todo.getId() == id) {
	                removeTodo = todo;
	                break;
	            }
	        }
	        todos.remove(removeTodo);
	    }
}
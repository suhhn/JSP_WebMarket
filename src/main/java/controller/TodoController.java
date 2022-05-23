package controller;

import java.io.IOException;

import dao.TodoRepository;
import dto.Todo;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

// 톰캣에 컨트롤러의 존재를 노출
@WebServlet(name = "TodoController", 
           urlPatterns = {"/addTodo.do","/toggleTodo.do","/removeTodo.do"})
public class TodoController extends HttpServlet{  //  get이나 post 동작을 중간에 가로채는 역할을 한다.
	private static final long serialVersionUID = -5789298759459019056L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doGet(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)  // 디버깅하고 싶으면 
			throws ServletException, IOException {
		// 요청 주소 (예를 들면, processAddTodo.do)
       String command = req.getRequestURI().substring(req.getContextPath().length());
       
       TodoRepository repository = TodoRepository.getInstance();
       
       
       if  (command.equals("/addTodo.do")) {
    	   String task = req.getParameter("task");
    	   Todo todo = new Todo(task);
    	   repository.addTodo(todo);
    	   
       
       }else if (command.equals("/toggleTodo.do")) {
    	   long id = Long.parseLong(req.getParameter("id"));
    	   repository.toggle(id);
    	   
       }else if (command.equals("/removeTodo.do")) {
    	   long id = Long.parseLong(req.getParameter("id"));
    	   repository.remove(id);
    	   
       }
       
       req.getSession().setAttribute("todos", repository.getTodos());
       
       // 리다이렉트하면서 주소창에는 노출 안 함. 
       req.getRequestDispatcher("todolist.jsp").forward(req, resp);
       
	}
	

}

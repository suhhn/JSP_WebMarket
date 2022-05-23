package dto;

public class Todo {
	private long id;
	private String task;
	private boolean isDone;
	
	public Todo(String task) {
		this.task = task;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getTask() {
		return task;
	}

	public void setTask(String task) {
		this.task = task;
	}

	public boolean isDone() {
		return isDone;
	}

	public void setDone(boolean isDone) {
		this.isDone = isDone;
	}

	@Override
	public String toString() {
		return "Todo [id=" + id + ", task=" + task + ", isDone=" + isDone + "]";
	}

	
	
	
	
	
	
}
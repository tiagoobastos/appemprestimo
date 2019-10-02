package br.edu.infnet.appemprestimo.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.edu.infnet.appemprestimo.app.model.Todo;

@Controller
public class TodoController {

	@Autowired
	private TodoService service;
	
	@RequestMapping(value = "/livros/list", method = RequestMethod.GET)
	public String list(Model model) {
		List<Todo> todos = service.getTodos();
		model.addAttribute("listaTodos", todos);
		return "livros/list";
	}
	
	@RequestMapping(value = "/livros/form" , method = RequestMethod.GET)
	public String viewForm(Model model) {
		return "livros/form";
	}
	
	
	@RequestMapping(value = "/livros/add", method = RequestMethod.POST)
	public String save(Model model, Todo todo) {
		service.persite(todo);
		return "redirect:/livros/list";
	}
	
	@RequestMapping(value = "/livros/edit/{id}", method = RequestMethod.GET)
	public String edit(@PathVariable("id") String id, Model model) {
		Todo todo = service.getTodo(id);
		model.addAttribute("todo", todo);
		return "livros/edit";
	}
	
	@RequestMapping(value = "/livros/update", method = RequestMethod.POST)
	public String update(Model model, Todo todo) {
		service.update(todo);
		return "redirect:/livros/list";
	}
	
	public TodoService getService() {
		return service;
	}

	public void setService(TodoService service) {
		this.service = service;
	}
	
}

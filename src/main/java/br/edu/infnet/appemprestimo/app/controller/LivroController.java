package br.edu.infnet.appemprestimo.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.edu.infnet.appemprestimo.app.model.Livro;

@Controller
public class LivroController {

	@Autowired
	private LivroService service;
	
	@RequestMapping(value = "/livros/list", method = RequestMethod.GET)
	public String list(Model model) {
		List<Livro> livros = service.getAllLivros();
		model.addAttribute("listaLivros", livros);
		return "livros/list";
	}
	
	@RequestMapping(value = "/livros/form" , method = RequestMethod.GET)
	public String viewForm(Model model) {
		return "livros/form";
	}
	
	
	@RequestMapping(value = "/livros/add", method = RequestMethod.POST)
	public String save(Model model, Livro livro) {
		service.persite(livro);
		return "redirect:/livros/list";
	}
	
	@RequestMapping(value = "/livros/edit/{id}", method = RequestMethod.GET)
	public String edit(@PathVariable("id") String id, Model model) {
		Livro livro = service.getLivro(id);
		model.addAttribute("livro", livro);
		return "livros/edit";
	}
	@RequestMapping(value = "/livros/delete/{id}", method = RequestMethod.GET)
	public String delete(@PathVariable("id") Integer id, Model model) {
	service.delete(id);
	return "redirect:/livros/list";
	}
	@RequestMapping(value = "/livros/update", method = RequestMethod.POST)
	public String update(Model model, Livro livro) {
		service.update(livro);
		return "redirect:/livros/list";
	}
	
	public LivroService getService() {
		return service;
	}

	public void setService(LivroService service) {
		this.service = service;
	}
	
}

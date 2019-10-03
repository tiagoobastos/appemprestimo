package br.edu.infnet.appemprestimo.app.controller;

import java.util.List;
import java.util.Objects;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import br.edu.infnet.appemprestimo.app.model.Livro;
import br.edu.infnet.appemprestimo.app.model.persistence.LivroDao;
import br.edu.infnet.appemprestimo.app.model.persistence.UsuarioDao;



@Service
public class LivroService {
 
	@Autowired
	private LivroDao dao;

	public LivroService() {
	}
	
	@Transactional(propagation = Propagation.NEVER)
	public List<Livro> getAllLivros() {
		return dao.getAll();
	}

	@Transactional(propagation = Propagation.REQUIRED)
	public void persite(Livro livro) {
		dao.salvar(livro);
	}

	@Transactional(propagation = Propagation.REQUIRED)
	public void update(Livro livro) {
		dao.editar(livro);
	}

	@Transactional(propagation = Propagation.REQUIRED)
	public void delete(Integer id) {
		dao.deletar(id);
	}

	@Transactional(propagation = Propagation.NEVER)
	public Livro getLivro(String id) {
		Objects.requireNonNull(id, "ID não pode ser nulo!");
		
		Integer integer = Integer.valueOf(id);
		return dao.findOne(integer);
	}

	public LivroDao getDao() {
		return dao;
	}

	public void setDao(LivroDao dao) {
		this.dao = dao;
	}

}

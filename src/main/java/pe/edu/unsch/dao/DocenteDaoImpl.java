package pe.edu.unsch.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import pe.edu.unsch.entities.Docente;

@Repository
public class DocenteDaoImpl implements IDocenteDao {

	@PersistenceContext
	private EntityManager em;
	
	@SuppressWarnings("unchecked")
	@Transactional(readOnly=true)
	@Override
	public List<Docente> retornarTodo() {
		// TODO Auto-generated method stub
		return em.createQuery("from Docente").getResultList();
	}

}

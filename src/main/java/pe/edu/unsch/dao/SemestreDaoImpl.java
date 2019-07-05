package pe.edu.unsch.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import pe.edu.unsch.entities.Semestre;

@Repository
public class SemestreDaoImpl implements ISemestreDao {

	@PersistenceContext
	private EntityManager em;
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Semestre> retornarTodo() {
		// TODO Auto-generated method stub
		return em.createQuery("from Semestre s join fetch s.docente c ").getResultList();
	}

}

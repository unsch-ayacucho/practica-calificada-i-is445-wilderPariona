package pe.edu.unsch.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import pe.edu.unsch.entities.Docente;

@Repository
public class ClienteDaoImpl implements DocenteDao {

	@PersistenceContext
	private EntityManager docente;
	
	@SuppressWarnings("unchecked")
	@Transactional(readOnly=true)
	@Override
	public List<Docente> listarPorDocentes() {
		// TODO Auto-generated method stub
		return docente.createQuery("from docente").getResultList();
	}

}

package pe.edu.unsch.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pe.edu.unsch.dao.ISemestreDao;
import pe.edu.unsch.entities.Semestre;

@Service
public class SemestreServiceImpl implements ISemestreService {

	@Autowired
	private ISemestreDao semestreDao;
	
	@Override
	@Transactional(readOnly=true)
	public List<Semestre> retornarTodo() {
		// TODO Auto-generated method stub
		return semestreDao.retornarTodo();
	}
	
}

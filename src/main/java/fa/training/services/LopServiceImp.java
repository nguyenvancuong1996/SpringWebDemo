package fa.training.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fa.training.entities.Lop;
import fa.training.repositories.LopReposotory;

@Service
public class LopServiceImp implements LopService{
	
	@Autowired 
	private LopReposotory lopReposotory;

	@Override
	public Lop save(Lop entity) {
		return lopReposotory.save(entity);
	}

	@Override
	public List<Lop> save(List<Lop> entities) {
		return (List<Lop>)lopReposotory.save(entities);
	}

	@Override
	public Lop findOne(String id) {
		return lopReposotory.findOne(id);
	}

	@Override
	public boolean exists(String id) {
		return lopReposotory.exists(id);
	}

	@Override
	public Iterable<Lop> findAll() {
		return lopReposotory.findAll();
	}

	@Override
	public Iterable<Lop> findAll(Iterable<String> ids) {
		return lopReposotory.findAll(ids);
	}

	@Override
	public long count() {
		return lopReposotory.count();
	}

	@Override
	public void delete(String id) {
		lopReposotory.delete(id);
	}

	@Override
	public void delete(Lop entity) {
		lopReposotory.delete(entity);
	}

	@Override
	public void delete(List<Lop> entities) {
		lopReposotory.delete(entities);
	}

	@Override
	public void deleteAll() {
		lopReposotory.deleteAll();
	}
	
	
	
	

}

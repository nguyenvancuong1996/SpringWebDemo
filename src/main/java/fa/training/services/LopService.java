package fa.training.services;

import java.util.List;

import fa.training.entities.Lop;

public interface LopService {

	void deleteAll();

	void delete(List<Lop> entities);

	void delete(Lop entity);

	void delete(String id);

	long count();

	Iterable<Lop> findAll(Iterable<String> ids);

	Iterable<Lop> findAll();

	boolean exists(String id);

	Lop findOne(String id);

	List<Lop> save(List<Lop> entities);

	Lop save(Lop entity);

}

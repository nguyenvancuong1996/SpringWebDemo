package fa.training.services;

import java.util.List;

import fa.training.entities.MulTiKeyTheoDoiVang;
import fa.training.entities.TheoDoiVang;
import fa.training.entities.Tre;

public interface TheoDoiVangService {

	void deleteAll();

	void delete(List<TheoDoiVang> entities);

	void delete(TheoDoiVang entity);

	void delete(MulTiKeyTheoDoiVang id);

	long count();

	Iterable<TheoDoiVang> findAll(Iterable<MulTiKeyTheoDoiVang> ids);

	Iterable<TheoDoiVang> findAll();

	boolean exists(MulTiKeyTheoDoiVang id);

	TheoDoiVang findOne(MulTiKeyTheoDoiVang id);

	List<TheoDoiVang> save(List<TheoDoiVang> entities);

	TheoDoiVang save(TheoDoiVang entity);

	List<Tre> findAllMay();

}

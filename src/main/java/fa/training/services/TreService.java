package fa.training.services;

import java.util.List;

import org.springframework.data.jpa.repository.Query;

import fa.training.entities.Tre;

public interface TreService {

	void deleteAll();

	void delete(List<Tre> entities);

	void delete(Tre entity);

	void delete(String id);

	long count();

	Iterable<Tre> findAll(Iterable<String> ids);

	Iterable<Tre> findAll();

	boolean exists(String id);

	Tre findOne(String id);

	List<Tre> save(List<Tre> entities);

	Tre save(Tre entity);

	List<Tre> findByHoTenTreLikeOrderByHoTenTre(String tenTre);
	@Query("select L,T from Lop as L left join L.tre as T")
	List<Object[]> getListResult();
	
	@Query("select L,T from Lop as L left join L.tre as T where month(L.ngayBeGiang) =:thang"
			+ "  AND year(L.ngayBeGiang) =:nam")
	List<Object[]> thongketheonam(int thang, int nam);

}

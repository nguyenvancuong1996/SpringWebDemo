package fa.training.repositories;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import fa.training.entities.Tre;

@Repository
public interface TreRepository extends CrudRepository<Tre, String> {

	List<Tre> findByHoTenTreLikeOrderByHoTenTre(String tenTre);

	@Query("select L,T from Lop as L left join L.tre as T")
	List<Object[]> getListResult();

	@Query("select L,T from Lop as L left join L.tre as T where month(L.ngayBeGiang) =:thang"
			+ "  AND year(L.ngayBeGiang) =:nam")
	List<Object[]> thongketheonam(@Param("thang") int thang, @Param("nam") int nam);

}

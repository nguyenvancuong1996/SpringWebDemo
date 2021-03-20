package fa.training.repositories;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;


import fa.training.entities.Lop;

@Repository
public interface LopReposotory extends CrudRepository<Lop, String>{
	
	List<Lop> findByTenLopLikeOrderByTenLop(String tenLop);

}

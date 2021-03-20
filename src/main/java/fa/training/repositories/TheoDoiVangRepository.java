package fa.training.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import fa.training.entities.MulTiKeyTheoDoiVang;
import fa.training.entities.TheoDoiVang;

@Repository
public interface TheoDoiVangRepository extends CrudRepository<TheoDoiVang, MulTiKeyTheoDoiVang>{

}

package fa.training.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Service;

import fa.training.entities.Tre;
import fa.training.repositories.TreRepository;

@Service
public class TreServiceImp implements TreService{

	@Autowired
	private TreRepository treRepository;

	@Override
	public List<Tre> findByHoTenTreLikeOrderByHoTenTre(String tenTre) {
		return treRepository.findByHoTenTreLikeOrderByHoTenTre(tenTre);
	}

	@Override
	public Tre save(Tre entity) {
		return treRepository.save(entity);
	}

	@Override
	public List<Tre> save(List<Tre> entities) {
		return (List<Tre>)treRepository.save(entities);
	}

	@Override
	public Tre findOne(String id) {
		return treRepository.findOne(id);
	}

	@Override
	public boolean exists(String id) {
		return treRepository.exists(id);
	}

	@Override
	public Iterable<Tre> findAll() {
		return treRepository.findAll();
	}

	@Override
	public Iterable<Tre> findAll(Iterable<String> ids) {
		return treRepository.findAll(ids);
	}

	@Override
	public long count() {
		return treRepository.count();
	}

	@Override
	public void delete(String id) {
		treRepository.delete(id);
	}

	@Override
	public void delete(Tre entity) {
		treRepository.delete(entity);
	}

	@Override
	public void delete(List<Tre> entities) {
		treRepository.delete(entities);
	}

	@Override
	public void deleteAll() {
		treRepository.deleteAll();
	}

	@Override
	@Query("select L,T from Lop as L left join L.tre as T")
	public List<Object[]> getListResult() {
		return treRepository.getListResult();
	}
	
	
	@Override
	@Query("select L,T from Lop as L left join L.tre as T where month(L.ngayBeGiang) =:thang"
			+ "  AND year(L.ngayBeGiang) =:nam")
	public List<Object[]> thongketheonam(int thang, int nam) {
		return treRepository.thongketheonam(thang, nam);
	}
	
	
}

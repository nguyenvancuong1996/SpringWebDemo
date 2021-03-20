package fa.training.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import fa.training.entities.MulTiKeyTheoDoiVang;
import fa.training.entities.TheoDoiVang;
import fa.training.entities.Tre;
import fa.training.repositories.TheoDoiVangRepository;
import fa.training.repositories.TreRepository;

@Service
public class TheoDoiVangServiceImp implements TheoDoiVangService {
	@Autowired
	private TheoDoiVangRepository theoDoiVangRepository;

	@Autowired
	private TreRepository treRepository;

	@Override
	public List<Tre> findAllMay() {
		return (List<Tre>) treRepository.findAll();
	}

	@Override
	public TheoDoiVang save(TheoDoiVang entity) {
		return theoDoiVangRepository.save(entity);
	}

	@Override
	public List<TheoDoiVang> save(List<TheoDoiVang> entities) {
		return (List<TheoDoiVang>) theoDoiVangRepository.save(entities);
	}

	@Override
	public TheoDoiVang findOne(MulTiKeyTheoDoiVang id) {
		return theoDoiVangRepository.findOne(id);
	}

	@Override
	public boolean exists(MulTiKeyTheoDoiVang id) {
		return theoDoiVangRepository.exists(id);
	}

	@Override
	public Iterable<TheoDoiVang> findAll() {
		return theoDoiVangRepository.findAll();
	}

	@Override
	public Iterable<TheoDoiVang> findAll(Iterable<MulTiKeyTheoDoiVang> ids) {
		return theoDoiVangRepository.findAll(ids);
	}

	@Override
	public long count() {
		return theoDoiVangRepository.count();
	}

	@Override
	public void delete(MulTiKeyTheoDoiVang id) {
		theoDoiVangRepository.delete(id);
	}

	@Override
	public void delete(TheoDoiVang entity) {
		theoDoiVangRepository.delete(entity);
	}

	@Override
	public void delete(List<TheoDoiVang> entities) {
		theoDoiVangRepository.delete(entities);
	}

	@Override
	public void deleteAll() {
		theoDoiVangRepository.deleteAll();
	}

}

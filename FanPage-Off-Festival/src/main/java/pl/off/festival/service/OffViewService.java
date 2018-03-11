package pl.off.festival.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import pl.off.festival.model.BandsFilter;
import pl.off.festival.model.Offview;
import pl.off.festival.repository.OffViewRepository;

@Service
public class OffViewService {
	
	private OffViewRepository offViewRepository;
	private EntityManager entityManager;
	
	@Autowired
	public OffViewService(OffViewRepository offViewRepository, EntityManager entityManager) {
		
		this.offViewRepository = offViewRepository;
		this.entityManager = entityManager;
		
	}
	
	public Page<Offview> getAll(Pageable pageable) {
		return offViewRepository.findAll(pageable);
	}

//	public Page<Offview> getByYear(Pageable pageable) {
//		
//		return offViewRepository.findByYear(2010, pageable);
//	}
	
	public Page<Offview> getByFilter(BandsFilter bandsFilter, Pageable pageable) {

		CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();
		CriteriaQuery<Offview> query = criteriaBuilder.createQuery(Offview.class);
		Root<Offview> offQ = query.from(Offview.class);

		List<Predicate> criteria = new ArrayList<Predicate>();

		Optional.ofNullable(bandsFilter.getYear()).filter(year -> !year.isEmpty())
		.ifPresent(year -> criteria.add(criteriaBuilder.like(offQ.get("year"), year)));
		

		CriteriaQuery<Offview> select = query.select(offQ).where(criteria.toArray(new Predicate[criteria.size()]));

		TypedQuery<Offview> typedQuery = entityManager.createQuery(select);
		typedQuery.setFirstResult(pageable.getPageNumber());
		typedQuery.setMaxResults(pageable.getPageSize());

		List<Offview> resultOff = typedQuery.getResultList();

		CriteriaQuery<Long> countQuery = criteriaBuilder.createQuery(Long.class);
		countQuery.select(criteriaBuilder.count(countQuery.from(Offview.class)))
				.where(criteria.toArray(new Predicate[criteria.size()]));

		Long total = entityManager.createQuery(countQuery).getSingleResult();

		Page<Offview> page = new PageImpl<>(resultOff, pageable, total);

		return page;
	}
	

}

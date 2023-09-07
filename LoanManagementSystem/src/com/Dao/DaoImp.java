package com.Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.stereotype.Component;

import com.entities.CustomerDetails;
import com.entities.LoanApplicants;
import com.entities.LoanNominee;

@Component
public class DaoImp {
	@PersistenceContext
	private EntityManager em;

	@Transactional
	public void persist(CustomerDetails cust, LoanApplicants lap, LoanNominee nom) {
		em.persist(cust);
		int x = cust.getCust_id();
		System.out.println(x);
		lap.setLapp_cust_id(x);
		em.persist(nom);
		int y = nom.getLnom_id();
		lap.setLapp_lnom_id(y);
		lap.setLapp_dispos_income(lap.getLapp_annual_income() * 0.3);
		em.persist(lap);
	}

	@Transactional
	public List<LoanApplicants> getAllLoanApplicants() {
		return em.createQuery("SELECT la FROM LoanApplicants la").getResultList();
	}

	public LoanApplicants getLoanApplicant(int loanid) {

		try {
			return em.createQuery("SELECT e FROM LoanApplicants e WHERE e.id = :loanid", LoanApplicants.class)
					.setParameter("loanid", loanid).getSingleResult();
		} catch (NoResultException e) {
			return null;
		}

	}

	@Transactional
	public void updateApp(LoanApplicants lap) {
		Query q = em.createQuery(
				"UPDATE LoanApplicants la SET la.lapp_status = :newStatus, la.lapp_conclusion_remarks = :newcon WHERE la.lapp_id = :loanid");
		q.setParameter("newStatus", lap.getLapp_status());
		q.setParameter("newcon", lap.getLapp_conclusion_remarks());
		q.setParameter("loanid", lap.getLapp_id());
		q.executeUpdate();
	}

	public List<LoanApplicants> selOption(String orderByProperty) {
		if (orderByProperty.equals("all")) {
			return em.createQuery("SELECT la FROM LoanApplicants la").getResultList();
		}
		if (orderByProperty.equals("lapp_date")) {

			return em.createQuery("SELECT la FROM LoanApplicants la order by la.lapp_date").getResultList();

		}
		if (orderByProperty.equals("lapp_amount_a")) {

			return em.createQuery("SELECT la FROM LoanApplicants la order by la.lapp_amount asc").getResultList();
		}
		if (orderByProperty.equals("lapp_amount_d")) {
			return em.createQuery("SELECT la FROM LoanApplicants la order by la.lapp_amount desc").getResultList();
		}
		if (orderByProperty.equals("lapp_cust_id")) {
			return em.createQuery("SELECT la FROM LoanApplicants la order by la.lapp_cust_id").getResultList();
		}
		return null;

	}

}

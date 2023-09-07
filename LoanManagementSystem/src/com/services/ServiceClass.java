package com.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Dao.DaoImp;
import com.entities.CustomerDetails;
import com.entities.LoanApplicants;
import com.entities.LoanNominee;

@Service
public class ServiceClass {
	DaoImp serv;

	@Autowired
	public ServiceClass(DaoImp serv) {
		this.serv = serv;

	}

	CustomerDetails cdet;
	LoanApplicants lapp;
	LoanNominee lnom;

	public void storeObj(CustomerDetails cust, LoanApplicants lap, LoanNominee nom) {
		cdet = cust;
		lapp = lap;
		lnom = nom;
	}

	public void applyLoan() {
		serv.persist(cdet, lapp, lnom);
	}

	public List<LoanApplicants> getAllApps() {
		return serv.getAllLoanApplicants();
	}

	public LoanApplicants getLoan(int loanid) {
		return serv.getLoanApplicant(loanid);

	}

	public void update(LoanApplicants lap) {
		serv.updateApp(lap);
	}

	public List<LoanApplicants> selOption(String sel) {
		return serv.selOption(sel);

	}
}

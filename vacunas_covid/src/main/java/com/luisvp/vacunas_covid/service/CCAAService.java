package com.luisvp.vacunas_covid.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.luisvp.vacunas_covid.model.CCAA;
import com.luisvp.vacunas_covid.repository.CCAARepository;

@Service
@Transactional
public class CCAAService {
	@Autowired
	private CCAARepository ccaaRepository;

	public List<CCAA> listAllCCAA() {
		return ccaaRepository.findAll();
	}

	public CCAA getCCAA(Integer codigo) {
		return ccaaRepository.findById(codigo).get();
	}

	public void saveCCAA(CCAA ccaa) {
		ccaaRepository.save(ccaa);
	}

	public void deleteCCAA(Integer codigo) {
		ccaaRepository.deleteById(codigo);
	}
}

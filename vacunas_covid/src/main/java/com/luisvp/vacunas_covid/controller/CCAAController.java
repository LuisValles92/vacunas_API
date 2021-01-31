package com.luisvp.vacunas_covid.controller;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.web.bind.annotation.*;

import com.luisvp.vacunas_covid.model.CCAA;
import com.luisvp.vacunas_covid.service.CCAAService;

@RestController
@RequestMapping("/ccaas")
public class CCAAController {
	@Autowired
	CCAAService ccaaService;

	@GetMapping("")
	public List<CCAA> list() {
		return ccaaService.listAllCCAA();
	}

	@GetMapping("/{codigo}")
	public ResponseEntity<CCAA> get(@PathVariable Integer codigo) {
		try {
			CCAA ccaa = ccaaService.getCCAA(codigo);
			return new ResponseEntity<CCAA>(ccaa, HttpStatus.OK);
		} catch (NoSuchElementException e) {
			return new ResponseEntity<CCAA>(HttpStatus.NOT_FOUND);
		}
	}

	@PostMapping("")
	public void add(@RequestBody CCAA ccaa) {
		ccaaService.saveCCAA(ccaa);
	}

	@PutMapping("/{codigo}")
	public ResponseEntity<?> update(@RequestBody CCAA ccaa, @PathVariable Integer codigo) {
		try {
			ccaa.setCodigo_ccaa(codigo);
			ccaaService.saveCCAA(ccaa);
			return new ResponseEntity<>(HttpStatus.OK);
		} catch (NoSuchElementException e) {
			return new ResponseEntity<>(HttpStatus.NOT_FOUND);
		}
	}

	@DeleteMapping("/{codigo}")
	public void delete(@PathVariable Integer codigo) {
		ccaaService.deleteCCAA(codigo);
	}
}

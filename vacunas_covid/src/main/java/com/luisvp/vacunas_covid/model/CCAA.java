package com.luisvp.vacunas_covid.model;

import java.sql.Date;

import javax.persistence.*;

@Entity
@Table(name = "ccaa")
public class CCAA {
	private int codigo_ccaa;
	private String nombre_ccaa;
	private int dosis_entregadas_pfizer;
	private int dosis_entregadas_moderna;
	private int dosis_entregadas_totales;
	private int dosis_administradas;
	private float dosis_entregadas_porcentaje;
	private int numero_personas_pauta_completa;
	private Date fecha_registro_ultima_vacuna;

	public CCAA() {
	}

	public CCAA(int codigo_ccaa, String nombre_ccaa, int dosis_entregadas_pfizer, int dosis_entregadas_moderna,
			int dosis_entregadas_totales, int dosis_administradas, float dosis_entregadas_porcentaje,
			int numero_personas_pauta_completa, Date fecha_registro_ultima_vacuna) {
		this.codigo_ccaa = codigo_ccaa;
		this.nombre_ccaa = nombre_ccaa;
		this.dosis_entregadas_pfizer = dosis_entregadas_pfizer;
		this.dosis_entregadas_moderna = dosis_entregadas_moderna;
		this.dosis_entregadas_totales = dosis_entregadas_totales;
		this.dosis_administradas = dosis_administradas;
		this.dosis_entregadas_porcentaje = dosis_entregadas_porcentaje;
		this.numero_personas_pauta_completa = numero_personas_pauta_completa;
		this.fecha_registro_ultima_vacuna = fecha_registro_ultima_vacuna;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public int getCodigo_ccaa() {
		return codigo_ccaa;
	}

	public void setCodigo_ccaa(int codigo_ccaa) {
		this.codigo_ccaa = codigo_ccaa;
	}

	public String getNombre_ccaa() {
		return nombre_ccaa;
	}

	public void setNombre_ccaa(String nombre_ccaa) {
		this.nombre_ccaa = nombre_ccaa;
	}

	public int getDosis_entregadas_pfizer() {
		return dosis_entregadas_pfizer;
	}

	public void setDosis_entregadas_pfizer(int dosis_entregadas_pfizer) {
		this.dosis_entregadas_pfizer = dosis_entregadas_pfizer;
	}

	public int getDosis_entregadas_moderna() {
		return dosis_entregadas_moderna;
	}

	public void setDosis_entregadas_moderna(int dosis_entregadas_moderna) {
		this.dosis_entregadas_moderna = dosis_entregadas_moderna;
	}

	public int getDosis_entregadas_totales() {
		return dosis_entregadas_totales;
	}

	public void setDosis_entregadas_totales(int dosis_entregadas_totales) {
		this.dosis_entregadas_totales = dosis_entregadas_totales;
	}

	public int getDosis_administradas() {
		return dosis_administradas;
	}

	public void setDosis_administradas(int dosis_administradas) {
		this.dosis_administradas = dosis_administradas;
	}

	public float getDosis_entregadas_porcentaje() {
		return dosis_entregadas_porcentaje;
	}

	public void setDosis_entregadas_porcentaje(float dosis_entregadas_porcentaje) {
		this.dosis_entregadas_porcentaje = dosis_entregadas_porcentaje;
	}

	public int getNumero_personas_pauta_completa() {
		return numero_personas_pauta_completa;
	}

	public void setNumero_personas_pauta_completa(int numero_personas_pauta_completa) {
		this.numero_personas_pauta_completa = numero_personas_pauta_completa;
	}

	public Date getFecha_registro_ultima_vacuna() {
		return fecha_registro_ultima_vacuna;
	}

	public void setFecha_registro_ultima_vacuna(Date fecha_registro_ultima_vacuna) {
		this.fecha_registro_ultima_vacuna = fecha_registro_ultima_vacuna;
	}

}

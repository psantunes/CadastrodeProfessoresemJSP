package br.edu.ifrs.poa.classes;

import java.util.List;

import br.edu.ifrs.poa.dao.ProfessorEfetivoDAO;

public class ProfessorEfetivo extends Professor {
	private double salario;
	
	//construtores
	public ProfessorEfetivo() {}
	public ProfessorEfetivo(String nome, long matricula, double salario) {
		super(nome, matricula);
		this.salario = salario;
	}
	
	//getters e setters
	public double getSalario() {
		return salario;
	}
	public void setSalario(double salario) {
		this.salario = salario;
	}
	
	//toString
	@Override
	public String toString() {
		return "ProfessorEfetivo [" + super.toString() + "salario = " + salario + "]";
	}

	// Métodos
	public int create() {
		return new ProfessorEfetivoDAO().create(this);
	}

	public List<ProfessorEfetivo> listAll() {
		return new ProfessorEfetivoDAO().listAll();
	}
}

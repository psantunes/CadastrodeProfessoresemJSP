package br.edu.ifrs.poa.classes;

import java.util.List;

import br.edu.ifrs.poa.dao.ProfessorHoristaDAO;

public class ProfessorHorista extends Professor {
		private int totalHoras;
		private double valorHora;
		
		//construtores
		public ProfessorHorista() {}
		public ProfessorHorista(String nome, long matricula, int totalHoras, double valorHora) {
			super(nome, matricula);
			this.totalHoras = totalHoras;
			this.valorHora = valorHora;
		}

		//getters e setters
		public int getTotalHoras() {
			return totalHoras;
		}
		public void setTotalHoras(int totalHoras) {
			this.totalHoras = totalHoras;
		}
		public double getValorHora() {
			return valorHora;
		}
		public void setValorHora(double valorHora) {
			this.valorHora = valorHora;
		}
		
		//toString
		@Override
		public String toString() {
			return "ProfessorEfetivo [" + super.toString() + "totalHoras = " + totalHoras + "; valorHora = " + valorHora + "]";
		}

		// Métodos
		public int create() {
			return new ProfessorHoristaDAO().create(this);
		}

		public List<ProfessorHorista> listAll() {
			return new ProfessorHoristaDAO().listAll();
		}
	}

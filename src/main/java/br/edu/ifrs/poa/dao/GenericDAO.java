package br.edu.ifrs.poa.dao;

public interface GenericDAO <T> {
	public int create(T obj);
	public java.util.List<T> listAll();
}


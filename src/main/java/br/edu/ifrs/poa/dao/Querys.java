package br.edu.ifrs.poa.dao;

public enum Querys {
    CREATE_PROFESSOR_EFETIVO("insert into professor(tipo, nome, matricula, salario) values ('efetivo', ?, ?, ?)"), 
    LIST_ALL_PROFESSOR_EFETIVO("select * from professor where tipo='efetivo'"),
    CREATE_PROFESSOR_HORISTA("insert into professor(tipo, nome, matricula, totalHoras, valorHora) values ('horista', ?, ?, ?, ?)"), 
    LIST_ALL_PROFESSOR_HORISTA("select * from professor where tipo='horista'"),
	AUTHENTICATE("select nome, senha from usuario where nome=? and senha=?");
	
    private final String query;

    Querys(String query){
        this.query = query; 
    }

	public String getQuery() {
		return query;
	}

}

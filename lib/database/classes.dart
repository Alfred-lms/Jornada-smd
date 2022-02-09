//classe das cadeiras
class Cadeira {
  final String id;
  final String nome;
  final int horas;
  final int obg;
  final int elt;
  final int opt;
  final int feita;

  Cadeira({
    this.id,
    this.nome,
    this.horas,
    this.obg,
    this.elt,
    this.opt,
    this.feita,
  });
  Cadeira.fromMap(Map<String, dynamic> sqlite)
      : id = sqlite["id"],
        nome = sqlite["nome"],
        horas = sqlite["horas"],
        obg = sqlite["obg"],
        elt = sqlite["elt"],
        opt = sqlite["opt"],
        feita = sqlite["feita"];

  Map<String, Object> toMap() {
    return {
      'id': id,
      'nome': nome,
      'horas': horas,
      'obg': obg,
      'elt': elt,
      'opt': opt,
      'feita': feita,
    };
  }
}

//classe de user
class Usuario {
  final int matricula;
  final String nome;
  final int semestre;

  Usuario({
    this.matricula,
    this.nome,
    this.semestre,
  });
  Usuario.fromMap(Map<String, dynamic> sqlite)
      : matricula = sqlite['matricula'],
        nome = sqlite['nome'],
        semestre = sqlite['semestre'];
  Map<String, Object> toMap() {
    return {
      'matricula': matricula,
      'nome': nome,
      'semestre': semestre,
    };
  }
}

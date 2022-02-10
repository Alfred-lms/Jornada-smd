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
    required this.id,
    required this.nome,
    required this.horas,
    required this.obg,
    required this.elt,
    required this.opt,
    required this.feita,
  });
  Cadeira.fromMap(Map<String, dynamic> res)
      : id = res['id'],
        nome = res['nome'],
        horas = int.parse(res['horas']),
        obg = int.parse(res['obg']),
        elt = int.parse(res['elt']),
        opt = int.parse(res['opt']),
        feita = int.parse(res['feita'] ?? '0');

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

  @override
  String toString() {
    return 'Cadeira{id:$id,nome:$nome,horas:$horas,obg:$obg,elt:$elt,opt:$opt}';
  }
}

//classe de user
class Usuario {
  final int matricula;
  final String nome;
  final int semestre;

  Usuario({
    required this.matricula,
    required this.nome,
    required this.semestre,
  });
  Usuario.fromMap(Map<String, dynamic> res)
      : matricula = int.parse(res['matricula']),
        nome = res['nome'],
        semestre = int.parse(res['semestre']);
  Map<String, Object> toMap() {
    return {
      'matricula': matricula,
      'nome': nome,
      'semestre': semestre,
    };
  }
}

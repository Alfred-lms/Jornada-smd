import 'package:flutter/cupertino.dart';

//classe das cadeiras
class Cadeira {
  final Text id;
  final Text nome;
  final int horas;
  final int obg;
  final int elt;
  final int opt;
  final int feita;

  Cadeira({
    @required this.id,
    @required this.nome,
    @required this.horas,
    this.obg,
    this.elt,
    this.opt,
    this.feita,
  });
  Cadeira.fromMap(Map<String, dynamic> res)
      : id = res["id"],
        nome = res["nome"],
        horas = res["horas"],
        obg = res["obg"],
        elt = res["elt"],
        opt = res["opt"],
        feita = res["feita"];

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
  final Text nome;
  final int semestre;

  Usuario({
    this.matricula,
    this.nome,
    this.semestre,
  });
  Usuario.fromMap(Map<String, dynamic> res)
      : matricula = res['matricula'],
        nome = res['nome'],
        semestre = res['semestre'];
  Map<String, Object> toMap() {
    return {
      'matricula': matricula,
      'nome': nome,
      'semestre': semestre,
    };
  }
}

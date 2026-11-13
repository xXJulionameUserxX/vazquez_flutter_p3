class Usuaris {
  String nom;
  String email;

  Usuaris({
    required this.nom,
    required this.email
  });
}

List<Usuaris> llistaUsuaris = [
    Usuaris(nom: 'Usuari 1', email: 'Usuari1@gmail.com'),
    Usuaris(nom: 'Usuari 2', email: 'Usuari2@gmail.com'),
    Usuaris(nom: 'Usuari 3', email: 'Usuari3@gmail.com'),
    Usuaris(nom: 'Usuari 4', email: 'Usuari4@gmail.com'),
    Usuaris(nom: 'Usuari 5', email: 'Usuari5@gmail.com'),
    Usuaris(nom: 'Usuari 6', email: 'Usuari6@gmail.com'),
    Usuaris(nom: 'Usuari 7', email: 'Usuari7@gmail.com'),
    Usuaris(nom: 'Usuari 8', email: 'Usuari8@gmail.com'),
    Usuaris(nom: 'Usuari 9', email: 'Usuari9@gmail.com'),
    Usuaris(nom: 'Usuari 10', email: 'Usuari10@gmail.com'),
    Usuaris(nom: 'Usuari 11', email: 'Usuari11@gmail.com'),
    Usuaris(nom: 'Usuari 12', email: 'Usuari12@gmail.com'),
    Usuaris(nom: 'Usuari 13', email: 'Usuari13@gmail.com'),
    Usuaris(nom: 'Usuari 14', email: 'Usuari14@gmail.com'),
    Usuaris(nom: 'Usuari 15', email: 'Usuari15@gmail.com'),
  ];

String getNom(int i) {
    return llistaUsuaris[i].nom;
}

String getEmail(int i){
  return llistaUsuaris[i].email;
}
void main() {
  // var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  // print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  var names3 = {}; // Creates a map, not a set.
  names1.add('Rendy Putra Kusuma');
  names1.add('2241720124');
  names2.addAll({'Rendy Putra Kusuma', '2241720124'});

  print(names1);
  print(names2);
  print(names3);
}

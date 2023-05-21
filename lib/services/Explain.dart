class Explain {
  final String id;
  final String name;
  final String commonName;
  Explain({required this.id, required this.name, required this.commonName});
  factory Explain.fromjson(jsonData) {
    return Explain(
        id: jsonData['id'],
        name: jsonData['name'],
        commonName: jsonData['common_name']);
  }
}

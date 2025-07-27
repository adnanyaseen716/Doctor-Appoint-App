class DoctorCategory {
  final String name;
  static List<DoctorCategory> categories = [
    DoctorCategory('Brain'),
    DoctorCategory('Heart'),
    DoctorCategory('Skin'),
    DoctorCategory('Eye'),
    DoctorCategory('Bones'),
  ];
  DoctorCategory(this.name);
}

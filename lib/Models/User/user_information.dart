class UserInformation {
  late String uid;
  late String name;
  late String email; //mac dinh la random
  late String
      imagePath; //https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTiXjldHhFIVdvZDCeoq6sSzSzxg95OvLCxQ&usqp=CAU
  late String address;

  UserInformation(
      {required this.name,
      required this.imagePath,
      required this.address,
      required this.email,
      required this.uid});
}

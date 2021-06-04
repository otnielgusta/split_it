import 'package:flutter/material.dart';
import 'package:split_it/modules/login/models/user_model.dart';

class PersonTile extends StatelessWidget {
  final UserModel user;

  final bool isRemoved;
  static String photoUserDefault =
      "https://i1.wp.com/terracoeconomico.com.br/wp-content/uploads/2019/01/default-user-image.png?ssl=1";
  const PersonTile({Key? key, this.isRemoved = false, required this.user})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 40,
        height: 40,
        child: Image.network(
            user.photoUrl != null ? user.photoUrl! : photoUserDefault),
      ),
      title: Text(user.name!),
      trailing: IconButton(
        onPressed: () {},
        icon: isRemoved ? Icon(Icons.remove) : Icon(Icons.add),
      ),
    );
  }
}

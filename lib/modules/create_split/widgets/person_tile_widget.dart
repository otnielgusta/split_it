import 'package:flutter/material.dart';
import 'package:split_it/modules/login/models/user_model.dart';
import 'package:split_it/shared/models/friend_model.dart';
import 'package:split_it/theme/app_text_styles.dart';
import 'package:split_it/theme/app_theme.dart';

class PersonTile extends StatelessWidget {
  final FriendModel friend;
  final bool isRemoved;
  final VoidCallback onPressed;
  const PersonTile(
      {Key? key,
      this.isRemoved = false,
      required this.onPressed,
      required this.friend})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: NetworkImage(friend.photoUrl), fit: BoxFit.cover)),
      ),
      title: Text(friend.name,
          style: isRemoved
              ? AppTheme.textStyle.personTileNameBold
              : AppTheme.textStyle.personTileName),
      trailing: IconButton(
        onPressed: onPressed,
        icon: isRemoved
            ? Icon(
                Icons.remove,
                color: Colors.red,
              )
            : Icon(Icons.add, color: Colors.green),
      ),
    );
  }
}

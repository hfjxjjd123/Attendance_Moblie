import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gdsc_uos_atttendance/ybloc/user_bloc.dart';
import 'package:gdsc_uos_atttendance/zconst/debug.dart';

import '../zconst/colors.dart';
import '../zconst/size.dart';
import '../zapi/user_rest_api.dart';

class ModifyUsernameDialog extends StatefulWidget {
  const ModifyUsernameDialog({Key? key}) : super(key: key);

  @override
  State<ModifyUsernameDialog> createState() => _ModifyUsernameDialogState();
}

class _ModifyUsernameDialogState extends State<ModifyUsernameDialog> {
  TextEditingController _textEditingController = TextEditingController();
  bool _isUploading = false;

  @override
  Widget build(BuildContext context) {
    final userBloc = UserBloc();
    _textEditingController.text = "";
    return AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      content: Container(
        alignment: Alignment.center,
        height: SIZE.height * 0.2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "닉네임 재설정",
              style: TextStyle(fontSize: SIZE.width * 0.06),
            ),
            Container(height: SIZE.height*0.025,),
            SizedBox(
              width: SIZE.width * 0.4,
              child: (!_isUploading)
                  ? TextFormField(
                      controller: _textEditingController,
                      cursorColor: Colors.black,
                      autofocus: true,
                      style: TextStyle(
                        fontSize: SIZE.width * 0.05,
                      ),

                      inputFormatters: [
                        FilteringTextInputFormatter(RegExp(r"^\s$"),
                            allow: false,
                            replacementString: _textEditingController.text),
                        FilteringTextInputFormatter(RegExp(r"\s{2}$"),
                            allow: false,
                            replacementString: _textEditingController.text)
                      ],
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(1),
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 1),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1)),
                        hintText: " 새 닉네임",
                        hintStyle: Theme.of(context)
                            .textTheme
                            .headline4!
                            .copyWith(fontSize: 20, color: Colors.black45),
                      ),
                    )
                  : Center(child: CircularProgressIndicator(color: highlightColor,)),
            ),
            columnBigPadding(),
            Row(
              children: [
                Container(
                  width: SIZE.width * 0.025,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "취소",
                    style: TextStyle(fontSize: SIZE.width * 0.04),
                  ),
                ),
                Expanded(child: Container()),
                InkWell(
                  onTap: () async {
                    if (_textEditingController.text.isNotEmpty) {
                      _isUploading = true;
                      setState(() {});

                      String? changed = await UserRestApi()
                          .modifyUsername(_textEditingController.text);

                      if(changed!=null){
                        userBloc.add(ModifyUsername(newUsername: changed));
                      }
                      Navigator.pop(context);
                    }
                  },
                  child:
                      Text("확인", style: TextStyle(fontSize: SIZE.width * 0.04)),
                ),
                Container(
                  width: SIZE.width * 0.025,
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: whitesColor,
    );
  }
}

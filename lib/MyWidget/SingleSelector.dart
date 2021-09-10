import 'package:flutter/material.dart';
typedef _CallBack = void Function(int selectIndex);
class SingleSelector extends StatefulWidget {
  List<String> options;
  final _CallBack  callback;
  SingleSelector(this.options, this.callback);

  @override
  _SingleSelectorState createState() => _SingleSelectorState();
}

class _SingleSelectorState extends State<SingleSelector> {
  String selectedValue;

  @override
  void initState() {
    super.initState();

    selectedValue = widget.options.first;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (ctx, index) {
        return GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            selectedValue = widget.options[index];
            if(widget.callback!=null){
              widget.callback(index);
            }
            setState(() {});
          },
          child: Container(
            color: selectedValue == widget.options[index]
                ? Colors.green[100]
                : null,
            child: Row(
              children: <Widget>[
                Radio(
                    value: widget.options[index],
                    groupValue: selectedValue,
                    onChanged: (s) {
                      selectedValue = s;
                      setState(() {});
                    }),
                Text(widget.options[index])
              ],
            ),
          ),
        );
      },
      itemCount: widget.options.length,
    );
  }
}
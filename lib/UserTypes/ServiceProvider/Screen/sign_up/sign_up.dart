// import 'package:coffee_station/UserTypes/Delivery/Screen/Bunch/bunch.dart';
import 'package:coffee_station/UserTypes/ServiceProvider/Screen/Bunch/bunch.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class MultiSelect extends StatefulWidget {
  final List<String> items;
  const MultiSelect({Key? key, required this.items}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MultiSelectState();
}

class _MultiSelectState extends State<MultiSelect> {
  final List<String> _selectedItems = [];

  void _itemChange(String itemValue, bool isSelected) {
    setState(() {
      if (isSelected) {
        _selectedItems.add(itemValue);
      } else {
        _selectedItems.remove(itemValue);
      }
    });
  }

  void _cancel() {
    Navigator.pop(context);
  }

  void _submit() {
    Navigator.pop(context, _selectedItems);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Center(child: const Text('اختر الفروع ')),
      content: SingleChildScrollView(
        child: ListBody(
          children: widget.items
              .map((item) => CheckboxListTile(
                    value: _selectedItems.contains(item),
                    title: Text(item),
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (isChecked) => _itemChange(item, isChecked!),
                  ))
              .toList(),
        ),
      ),
      actions: [
        TextButton(
          child: Text(
            'الغاء',
            style: TextStyle(color: primaryColor),
          ),
          onPressed: _cancel,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(primary: primaryColor),
          child: const Text('تاكيد'),
          onPressed: _submit,
        ),
      ],
    );
  }
}

class ProviderSignUp extends StatefulWidget {
  const ProviderSignUp({Key? key}) : super(key: key);

  @override
  _ProviderSignUpState createState() => _ProviderSignUpState();
}

class _ProviderSignUpState extends State<ProviderSignUp> {
  List<String> _selectedItems = [];
  void _showMultiSelect() async {
    final List<String> _items = [
      'البهارات',
      'المكسرات',
      'الحلويات',
      'التمور',
      'الكل',
    ];

    final List<String>? results = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return MultiSelect(items: _items);
      },
    );
    if (results != null) {
      setState(() {
        _selectedItems = results;
      });
    }
  }

  String? selectedValue;
  List<String> items = [
    'تاجر',
    'مستقل',
    'جميعة',
    'جهات اخرى',
  ];
  String? selectedValue2;
  List<String> items2 = [
    'البهارات',
    'المكسرات',
    'الحلويات',
    'التمور',
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: size.width,
                    height: size.height / 5,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assest/images/rectangle.png",
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        "    أضف بياناتك كتاجر ",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Stack(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage("assest/images/man.jpg"),
                    maxRadius: 50,
                  ),
                  Container(
                      margin: EdgeInsets.only(
                          top: size.width / 4, left: size.width / 11),
                      width: size.width / 16,
                      height: size.width / 16,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: secondaryColor,
                      ),
                      child: const Center(
                          child: Icon(
                        Icons.add,
                        color: Colors.white,
                      )))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: size.width / 20,
                      vertical: size.width / 40,
                    ),
                    decoration: const BoxDecoration(
                      // color: Colors.white,
                      border: Border(
                        bottom: BorderSide(width: 1, color: Colors.grey),
                      ),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton2(
                        hint: const Text(
                          "نوع التاجر",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                        isExpanded: true,

                        items: items
                            .map((item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ))
                            .toList(),
                        value: selectedValue,
                        onChanged: (value) {
                          setState(() {
                            selectedValue = value as String;
                          });
                        },
                        icon: const Icon(
                          Icons.keyboard_arrow_down_outlined,
                        ),

                        iconSize: 25,
                        iconEnabledColor: Colors.black,
                        buttonHeight: size.height / 20,
                        buttonWidth: size.width / 1.1,
                        buttonPadding: const EdgeInsets.only(right: 14),
                        buttonElevation: 2,
                        itemHeight: 40,
                        //  itemPadding: const EdgeInsets.only(left: 14, right: 14),
                        dropdownMaxHeight: 380,
                        dropdownWidth: 380,
                        dropdownPadding: null,
                        dropdownDecoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          // color: Colors.redAccent,
                        ),
                        dropdownElevation: 8,
                        scrollbarRadius: const Radius.circular(40),
                        scrollbarThickness: 5,
                        scrollbarAlwaysShow: true,
                        // offset: const Offset(-20, 0),
                      ),
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.only(left: 10, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            _showMultiSelect();
                          },
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Icon(
                                Icons.keyboard_arrow_down_outlined,
                              ),
                              Text(
                                " اختر الصنف",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Wrap(
                    children: _selectedItems
                        .map((e) => Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Chip(
                                backgroundColor: primaryColor,
                                label: Text(
                                  e,
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ))
                        .toList(),
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: size.width / 20,
                      vertical: size.width / 40,
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                        ),
                        labelText: "  رقم الهوية ",
                        labelStyle:
                            TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                  ),
                  //
                  // Container(
                  //   margin: EdgeInsets.symmetric(
                  //     horizontal: size.width / 35,
                  //     vertical: size.width / 40,
                  //   ),
                  //   child: const Text(
                  //     "    تاريخ انتهاء الهوية ",
                  //     style: TextStyle(fontSize: 18, color: Colors.black),
                  //   ),
                  // ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: size.width / 20,
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                        ),
                        labelText: "   تاريخ انتهاء الهوية ",
                        labelStyle:
                            TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                              vertical: size.width / 30,
                            ),
                            child: const Center(
                              child: Text(
                                "    صورة الرخصة ",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black),
                              ),
                            ),
                          ),
                          Container(
                            width: size.width / 4,
                            height: size.height / 10,
                            decoration: BoxDecoration(
                              color: boxColor,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            margin: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 20),
                            child: const Center(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Center(
                                    child: Icon(
                                      Icons.file_upload,
                                      size: 50,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                              vertical: size.width / 30,
                            ),
                            child: const Center(
                              child: Text(
                                "    صورة السجل التجاري ",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black),
                              ),
                            ),
                          ),
                          Container(
                            width: size.width / 4,
                            height: size.height / 10,
                            decoration: BoxDecoration(
                              color: boxColor,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            margin: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 20),
                            child: const Center(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Center(
                                    child: Icon(
                                      Icons.file_upload,
                                      size: 50,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                              vertical: size.width / 30,
                            ),
                            child: const Center(
                              child: Text(
                                "    صورة الهوية ",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black),
                              ),
                            ),
                          ),
                          Container(
                            width: size.width / 4,
                            height: size.height / 10,
                            decoration: BoxDecoration(
                              color: boxColor,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            margin: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 20),
                            child: const Center(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Center(
                                    child: Icon(
                                      Icons.file_upload,
                                      size: 50,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BunchScreen(),
                        ),
                      );
                    },
                    child: Container(
                      width: size.width / 1.1,
                      height: size.height / 13,
                      margin: EdgeInsets.symmetric(
                          horizontal: size.width / 18, vertical: 30),
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: const Center(
                        child: Text(
                          "تاكيد",
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

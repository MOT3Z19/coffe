import 'package:coffee_station/UserTypes/ServiceProvider/Screen/MyAccount/page/side_drawer.dart';
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

class ServiceProviderProfile extends StatefulWidget {
  const ServiceProviderProfile({Key? key}) : super(key: key);

  @override
  _ServiceProviderProfileState createState() => _ServiceProviderProfileState();
}

class _ServiceProviderProfileState extends State<ServiceProviderProfile> {
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
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        key: _key,
        resizeToAvoidBottomInset: false,
        drawer: Theme(
          data: Theme.of(context).copyWith(
            canvasColor:
                Colors.black, //This will change the drawer background to black.
          ),
          child: ServiceProviderSideDrawer(),
        ),
        body: SingleChildScrollView(
          reverse: true,
          child: Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: size.width / 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(
                            context,
                          );
                        },
                        child: const Icon(
                          // added by vp
                          Icons.keyboard_arrow_left_rounded,
                          color: Colors.black,
                          size: 40,
                        ),
                      ),
                      const Center(
                        child: Text(
                          " تعديل البيانات الشخصية",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          _key.currentState!.openDrawer();
                        },
                        child: const Icon(
                          Icons.view_headline,
                          color: Colors.black,
                          size: 40,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Stack(
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage("assest/images/man.jpg"),
                      maxRadius: 50,
                    ),
                    Container(
                        margin: EdgeInsets.only(
                            top: size.width / 4.5, left: size.width / 11),
                        width: size.width / 16,
                        height: size.width / 16,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: secondaryColor,
                        ),
                        child: const Center(
                            child: Icon(
                          Icons.edit_outlined,
                          color: Colors.white,
                        )))
                  ],
                ),
                const Text(
                  "احمد محمود",
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.end,
                //   children: [
                //     Container(
                //       margin: EdgeInsets.symmetric(
                //         horizontal: size.width / 9,
                //       ),
                //       child: RichText(
                //         text: const TextSpan(
                //           text: "الاسم كامل",
                //           style: TextStyle(fontSize: 18, color: Colors.black),
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
                Container(
                  margin: EdgeInsets.only(right: size.width / 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "الاسم كامل",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: size.width / 12, vertical: 1),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: " ايما ستون",
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  margin: EdgeInsets.only(right: size.width / 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "اسم المستخدم ",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: size.width / 12, vertical: 1),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: " ايما ستون",
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  margin: EdgeInsets.only(right: size.width / 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        " الموقع",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: size.width / 12, vertical: 1),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: "  حائل شارع الملك خالد",
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  margin: EdgeInsets.only(right: size.width / 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "الايميل",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: size.width / 12, vertical: 1),
                  child: const TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.location_on_sharp),
                      hintText: "omarmdoughan@gamil.com",
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: size.width / 12,
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
                  margin: const EdgeInsets.only(right: 30, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          _showMultiSelect();
                        },
                        child: Row(
                          children: [
                            const Icon(
                              Icons.keyboard_arrow_down_outlined,
                            ),
                            Text(
                              "  الصنف",
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
                const SizedBox(
                  height: 5,
                ),
                Container(
                  margin: EdgeInsets.only(right: size.width / 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "رقم الهوية ",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: size.width / 12, vertical: 1),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: "4040484940",
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                      ),
                    ),
                  ),
                ),
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
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
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
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
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
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
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
                Container(
                  width: size.width / 1.1,
                  height: size.height / 13,
                  margin: EdgeInsets.symmetric(
                      horizontal: size.width / 18, vertical: 10),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: const Center(
                    child: Text(
                      "حفظ",
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:coffee_station/UserTypes/ServiceProvider/Screen/MyAccount/page/side_drawer.dart';
// import 'package:coffee_station/UserTypes/ServiceProvider/Screen/HomePage/page/side_drawar.dart';
import 'package:coffee_station/UserTypes/ServiceProvider/Screen/StorePage/page/store_product2.dart';
import 'package:coffee_station/core/constant.dart';
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
      title: const Center(child: Text('اختر الفروع ')),
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

/////////////////////////////////////////////////////////////
class MultiSelect2 extends StatefulWidget {
  final List<String> items2;
  const MultiSelect2({Key? key, required this.items2}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MultiSelect2State();
}

class _MultiSelect2State extends State<MultiSelect2> {
  final List<String> _selectedItems2 = [];

  void _itemChange(String itemValue, bool isSelected) {
    setState(() {
      if (isSelected) {
        _selectedItems2.add(itemValue);
      } else {
        _selectedItems2.remove(itemValue);
      }
    });
  }

  void _cancel() {
    Navigator.pop(context);
  }

  void _submit() {
    Navigator.pop(context, _selectedItems2);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Center(child: Text('اختر الصنف ')),
      content: SingleChildScrollView(
        child: ListBody(
          children: widget.items2
              .map((item) => CheckboxListTile(
                    value: _selectedItems2.contains(item),
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

class AddProducts extends StatefulWidget {
  const AddProducts({Key? key}) : super(key: key);

  @override
  _AddProductsState createState() => _AddProductsState();
}

class _AddProductsState extends State<AddProducts> {
  List<String> _selectedItems = [];
  List<String> _selectedItems2 = [];
  void _showMultiSelect() async {
    final List<String> _items = [
      'شرقية',
      ' غربية',
      'شمالية ',
      'جنوبية',
      'وسطى',
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

  void _showMultiSelect2() async {
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
        return MultiSelect2(items2: _items);
      },
    );
    if (results != null) {
      setState(() {
        _selectedItems2 = results;
      });
    }
  }

  String? selectedValue;
  List<String> items = [
    'البهارات',
    'المكسرات',
    'الحلويات',
    'التمور',
    'الكل',
  ];

  final GlobalKey<ScaffoldState> _key = GlobalKey();
  bool value = false;
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
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: size.width / 40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
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
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                              const Icon(
                                Icons.search,
                                color: Colors.white,
                                size: 30,
                              ),
                              SizedBox(
                                width: size.width / 7,
                              ),
                              const Text(
                                " اضف منتج ",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              SizedBox(
                                width: size.width / 4,
                              ),
                              InkWell(
                                onTap: () {
                                  _key.currentState!.openDrawer();
                                },
                                child: const Icon(
                                  Icons.view_headline,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.only(right: 30, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      "اسم المنتج",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: size.width / 20,
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                    ),
                    //  label: Text("ادخل رقم الفرع"),
                    //   labelStyle: TextStyle()
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
                        _showMultiSelect2();
                      },
                      child: Row(
                        children: [
                          const Icon(
                            Icons.keyboard_arrow_down_outlined,
                          ),
                          const Text(
                            " اختر  الصنف",
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
                children: _selectedItems2
                    .map((e) => Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Chip(
                            backgroundColor: primaryColor,
                            label: Text(
                              e,
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ))
                    .toList(),
              ),
              //
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
                          const Text(
                            " اختر فروع الصنف",
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
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ))
                    .toList(),
              ),

              // Padding(
              //   padding: const EdgeInsets.all(20),
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       // use this button to open the multi-select dialog
              //       ElevatedButton(
              //         child: const Text('Select Your Favorite Topics'),
              //         onPressed: _showMultiSelect,
              //       ),
              //       const Divider(
              //         height: 30,
              //       ),
              //       // display selected items
              //       Wrap(
              //         children: _selectedItems
              //             .map((e) => Chip(
              //                   label: Text(e),
              //                 ))
              //             .toList(),
              //       )
              //     ],
              //   ),
              // ),
              Container(
                margin: const EdgeInsets.only(right: 30, bottom: 20, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      "الوصف",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: size.width / 20,
                ),
                height: size.height / 8,
                child: const TextField(
                  maxLines: 9,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "اكتب هنا ...",
                      labelStyle: TextStyle(fontSize: 20, color: Colors.grey)),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 30, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      "سعر المنتج",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: size.width / 20, vertical: 8),
                child: const TextField(
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                    ),
                    //  label: Text("ادخل رقم الفرع"),
                    //   labelStyle: TextStyle()
                  ),
                ),
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.add_circle_outline,
                            size: 30,
                            color: secondaryColor,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: size.width / 35,
                            ),
                            child: RichText(
                              text: const TextSpan(
                                  text: "  كود الخصم ",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: ' (اختياري) ',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 18))
                                  ]),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: size.width / 6,
                        ),
                        width: size.width / 3,
                        child: const TextField(
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.grey),
                            ),
                            //  label: Text("ادخل رقم الفرع"),
                            //   labelStyle: TextStyle()
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: size.width / 35,
                        ),
                        child: RichText(
                          text: const TextSpan(
                              text: "  نسبة الخصم ",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                    text: ' (اختياري) ',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 18))
                              ]),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: size.width / 13,
                        ),
                        width: size.width / 3,
                        child: const TextField(
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.grey),
                            ),
                            //  label: Text("ادخل رقم الفرع"),
                            //   labelStyle: TextStyle()
                          ),
                        ),
                      ),
                    ],
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
                        "اضف صورة ",
                        style: TextStyle(fontSize: 18, color: Colors.black),
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
                    margin:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
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
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        showDialog1();
                      },
                      child: Icon(
                        Icons.add_circle_outline,
                        size: 30,
                        color: secondaryColor,
                      ),
                    ),
                    const Text(
                      "تفاصيل المنتج",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: size.width / 5,
                    height: size.height / 18.5,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: Text(
                        "حليب",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                  ),
                  Container(
                    width: size.width / 5,
                    height: size.height / 18.5,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: Text(
                        " توفي",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                  ),

                  /////
                  Container(
                    width: size.width / 3.5,
                    height: size.height / 18.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[200],
                    ),
                    child: const Center(
                      child: Text(
                        " سكر زيادة",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                  ),
                  Container(
                    width: size.width / 5,
                    height: size.height / 18.5,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: Text(
                        " حليب",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: size.width / 5,
                    height: size.height / 18.5,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: Text(
                        " توفي",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                  ),

                  /////
                  Container(
                    width: size.width / 3.5,
                    height: size.height / 18.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[200],
                    ),
                    child: const Center(
                      child: Text(
                        " سكر زيادة",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                  ),
                  Container(
                    width: size.width / 5,
                    height: size.height / 18.5,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: Text(
                        " حليب",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                // onTap: () {
                //   showDialog2();
                // },
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const StoreProducts2(),
                    ),
                  );
                },
                child: Container(
                  width: size.width / 1.1,
                  height: size.height / 13,
                  margin: const EdgeInsets.only(top: 5),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: const Center(
                    child: Text(
                      " تاكيد ",
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  showDialog1() {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          Size size = MediaQuery.of(context).size;
          return SingleChildScrollView(
            child: AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              title: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: const Icon(Icons.arrow_back)),
                    ],
                  ),
                  const Center(
                      child: Text(
                    "ادخل تفاصيل اسم المنتج",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                ],
              ),
              actions: <Widget>[
                Container(
                  margin: const EdgeInsets.only(right: 30, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        " الاسم",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                  child: const TextField(
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 30, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        " اخرى",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                  child: const TextField(
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: size.width / 1.1,
                  height: size.height / 13,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: const Center(
                    child: Text(
                      "تاكيد",
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}

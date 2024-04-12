import 'package:invoice_generator/main.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'myinvoice.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List supplystate = [
    "Choose State",
    "Gujrat",
    "Delhi",
    "Haryana",
    "Rajasthan",
    "Punjab"
  ];
  List statelist = [
    "Choose State",
    "Gujrat",
    "Delhi",
    "Haryana",
    "Rajasthan",
    "Punjab"
  ];
  GlobalKey<FormState> fKey = GlobalKey<FormState>();

  TextEditingController gstinController = TextEditingController();
  TextEditingController adderessController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController codeController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController state1Controller = TextEditingController();
  TextEditingController invnumController = TextEditingController();
  TextEditingController invController = TextEditingController();
  List<TextEditingController> productlist = [TextEditingController()];
  List<TextEditingController> qunlist = [TextEditingController()];
  List<TextEditingController> pricelist = [TextEditingController()];
  List<TextEditingController> gstlist = [TextEditingController()];
  List<TextEditingController> cesslist = [TextEditingController()];
  TextEditingController _dueDateController = TextEditingController();
  TextEditingController _invoiceDateController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    gstinController.dispose();
    stateController.dispose();
    adderessController.dispose();
    cityController.dispose();
    state1Controller.dispose();
    codeController.dispose();
    nameController.dispose();
    countryController.dispose();
    stateController.dispose();
    state1Controller.dispose();
    invnumController.dispose();
    invController.dispose();
    _invoiceDateController.dispose();
    _dueDateController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: fKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 120),
                child: Text(
                  "New Invoice",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 90),
                child: Text(
                  "       Fill in the required details \nto generate and share this invoice",
                  style: TextStyle(fontSize: 17, color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Text(
                  "Customer",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffA2A7BD)),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Color(0xffF8F9FE)),
                      minimumSize: MaterialStatePropertyAll(Size(0, 60))),
                  onPressed: () {
                    showModalBottomSheet(
                        scrollControlDisabledMaxHeightRatio: double.infinity,
                        context: context,
                        builder: (BuildContext mContext) {
                          return Container(
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Row(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          nameController.clear();
                                          gstinController.clear();
                                          stateController.clear();
                                          adderessController.clear();
                                          cityController.clear();
                                          state1Controller.clear();
                                          codeController.clear();
                                          countryController.clear();
                                        },
                                        child: Text(
                                          "Clear",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.red,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 60,
                                      ),
                                      Text(
                                        "Customer Details",
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        width: 50,
                                      ),
                                      InkWell(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                          child: Icon(
                                            Icons.close,
                                            size: 20,
                                          ))
                                    ],
                                  ),
                                ),
                                Divider(),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(
                                    "Customer Name",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff1F2948),
                                        fontSize: 20),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        hintText: "Who are you selling to?",
                                        hintStyle:
                                            TextStyle(color: Colors.grey)),
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Please Enter your Name";
                                      } else {
                                        return null;
                                      }
                                    },
                                    controller: nameController,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Row(
                                    children: [
                                      Text(
                                        "GSTIN",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff1F2948),
                                            fontSize: 20),
                                      ),
                                      SizedBox(
                                        width: 130,
                                      ),
                                      Text(
                                        "Place Of Supply",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff1F2948),
                                            fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          controller: gstinController,
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          )),
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Expanded(
                                        child: DropdownButtonFormField(
                                          decoration: const InputDecoration(
                                            hintText: "Choose State",
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(15),
                                              ),
                                            ),
                                          ),
                                          items: supplystate.map((e) {
                                            return DropdownMenuItem(
                                              child: Text(e),
                                              value: e,
                                            );
                                          }).toList(),
                                          onChanged: (val) {
                                            setState(() {
                                              invoice.state1 = val as String?;
                                              stateController.text =
                                                  val as String;
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(
                                    "Address line",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff1F2948),
                                        fontSize: 20),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: TextFormField(
                                    controller: adderessController,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Row(
                                    children: [
                                      Text(
                                        "City",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff1F2948),
                                            fontSize: 20),
                                      ),
                                      SizedBox(
                                        width: 150,
                                      ),
                                      Text(
                                        "State",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff1F2948),
                                            fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          controller: cityController,
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          )),
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Expanded(
                                        child: DropdownButtonFormField(
                                          decoration: const InputDecoration(
                                            hintText: "Choose State",
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(15)),
                                            ),
                                          ),
                                          items: statelist.map((e) {
                                            return DropdownMenuItem(
                                              child: Text(e),
                                              value: e,
                                            );
                                          }).toList(),
                                          onChanged: (val) {
                                            invoice.state2 = val as String?;
                                            state1Controller.text =
                                                val as String;
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Zip/Postal Code",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff1F2948),
                                            fontSize: 20),
                                      ),
                                      SizedBox(
                                        width: 40,
                                      ),
                                      Text(
                                        "Country",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff1F2948),
                                            fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          controller: codeController,
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          )),
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Expanded(
                                        child: TextFormField(
                                          controller: countryController,
                                          decoration: InputDecoration(
                                              hintText: "India",
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              )),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Center(
                                  child: InkWell(
                                    onTap: () {
                                      bool isValid =
                                          fKey.currentState?.validate() ??
                                              false;
                                      if (isValid) {
                                        invoice.name = nameController.text;
                                        invoice.gstin = gstinController.text;
                                        invoice.state1 = stateController.text;
                                        invoice.address =
                                            adderessController.text;
                                        invoice.city = cityController.text;
                                        invoice.state2 = state1Controller.text;
                                        invoice.code = codeController.text;
                                        invoice.country =
                                            countryController.text;
                                        fKey.currentState?.save();
                                        setState(() {});
                                      }
                                      ;
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 300,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: Color(0xff1871FF)),
                                      child: Center(
                                          child: Text(
                                        "Done",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 23,
                                            fontWeight: FontWeight.w500),
                                      )),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                              ],
                            ),
                          );
                        });
                  },
                  child: Row(children: [
                    Icon(
                      Icons.add_circle_rounded,
                      color: Colors.blue,
                    ),
                    Text(
                      "  Add Customer Details",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff1F2948)),
                    )
                  ]),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 5),
                child: Row(
                  children: [
                    Text(
                      "Invoice Date",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffA2A7BD)),
                    ),
                    SizedBox(
                      width: 65,
                    ),
                    Text(
                      "Due Date",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffA2A7BD)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        onTap: () async {
                          final DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2024),
                            lastDate: DateTime(2026),
                          );
                          if (pickedDate != null) {
                            _invoiceDateController.text =
                                DateFormat('yyyy-MM-dd').format(pickedDate);
                          }
                        },
                        controller: _invoiceDateController,
                        decoration: InputDecoration(
                            hintText:
                                DateFormat('yyyy-MM-dd').format(DateTime.now()),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextFormField(
                        onTap: () async {
                          final DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2024),
                            lastDate: DateTime(2026),
                          );
                          if (pickedDate != null) {
                            _dueDateController.text =
                                DateFormat('yyyy-MM-dd').format(pickedDate);
                          }
                        },
                        controller: _dueDateController,
                        decoration: InputDecoration(
                            hintText:
                                DateFormat('yyyy-MM-dd').format(DateTime.now()),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 5),
                child: Row(
                  children: [
                    Text(
                      "Invoice Number",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffA2A7BD)),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "Currency",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffA2A7BD)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: invnumController,
                        decoration: InputDecoration(
                            hintText: "INV-0001",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextFormField(
                        controller: invController,
                        decoration: InputDecoration(
                            hintText: "INR",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Items",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffA2A7BD)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Color(0xffF8F9FE)),
                      minimumSize: MaterialStatePropertyAll(Size(0, 60))),
                  onPressed: () {
                    showModalBottomSheet(
                        scrollControlDisabledMaxHeightRatio: double.infinity,
                        context: context,
                        builder: (BuildContext mContext) {
                          return Container(
                            width: double.infinity,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            for (var element in productlist) {
                                              element.clear();
                                            }
                                            for (var element in pricelist) {
                                              element.clear();
                                            }
                                            for (var element in qunlist) {
                                              element.clear();
                                            }
                                            for (var element in gstlist) {
                                              element.clear();
                                            }
                                            for (var element in cesslist) {
                                              element.clear();
                                            }
                                          },
                                          child: Text(
                                            "Clear",
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.red,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        Text(
                                          "Item Details",
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 20),
                                          child: InkWell(
                                              onTap: () {
                                                Navigator.pop(context);
                                              },
                                              child: Icon(Icons.close)),
                                        )
                                      ],
                                    ),
                                  ),
                                  Divider(),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                      "Item Name",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff1F2948),
                                          fontSize: 20),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 20),
                                    child: Column(
                                      children: productlist.map((e) {
                                        return TextFormField(
                                          controller: e,
                                          maxLines: 2,
                                          keyboardType: TextInputType.name,
                                          decoration: InputDecoration(
                                              hintText: "What are you selling",
                                              hintStyle:
                                                  TextStyle(color: Colors.grey),
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15))),
                                          validator: (val) {
                                            if (val!.isEmpty) {
                                              return "Please Enter your Item Name";
                                            } else {
                                              return null;
                                            }
                                          },
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Price",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff1F2948),
                                              fontSize: 20),
                                        ),
                                        SizedBox(
                                          width: 140,
                                        ),
                                        Text(
                                          "Quantity",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff1F2948),
                                              fontSize: 20),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 20),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Column(
                                            children: pricelist.map((e) {
                                              return TextFormField(
                                                controller: e,
                                                decoration: InputDecoration(
                                                  hintText: "INR 0.00",
                                                  hintStyle: TextStyle(
                                                      color: Colors.grey),
                                                  border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15)),
                                                ),
                                              );
                                            }).toList(),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Expanded(
                                          child: Column(
                                            children: qunlist.map((e) {
                                              return TextFormField(
                                                controller: e,
                                                decoration: InputDecoration(
                                                  hintText: "INR 0.00",
                                                  hintStyle: TextStyle(
                                                      color: Colors.grey),
                                                  border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15)),
                                                ),
                                              );
                                            }).toList(),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Row(
                                      children: [
                                        Icon(Icons.error_outline),
                                        Text(
                                          " This price is tax exclusive",
                                          style: TextStyle(fontSize: 17),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Row(
                                      children: [
                                        Text(
                                          "GST",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff1F2948),
                                              fontSize: 20),
                                        ),
                                        SizedBox(
                                          width: 150,
                                        ),
                                        Text(
                                          "Cess",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff1F2948),
                                              fontSize: 20),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 20),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Column(
                                            children: gstlist.map((e) {
                                              return TextFormField(
                                                controller: e,
                                                decoration: InputDecoration(
                                                  hintText: "INR 0.00",
                                                  hintStyle: TextStyle(
                                                      color: Colors.grey),
                                                  border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15)),
                                                ),
                                              );
                                            }).toList(),
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Expanded(
                                          child: Column(
                                            children: cesslist.map((e) {
                                              return TextFormField(
                                                controller: e,
                                                decoration: InputDecoration(
                                                  hintText: "INR 0.00",
                                                  hintStyle: TextStyle(
                                                      color: Colors.grey),
                                                  border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15)),
                                                ),
                                              );
                                            }).toList(),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Center(
                                    child: InkWell(
                                      onTap: () {
                                        for (var element in productlist) {
                                          invoice.products.add(element.text);
                                        }
                                        for (var element in pricelist) {
                                          invoice.price.add(element.text);
                                        }
                                        for (var element in qunlist) {
                                          invoice.quantity.add(element.text);
                                        }
                                        for (var element in gstlist) {
                                          invoice.gst.add(element.text);
                                        }
                                        for (var element in cesslist) {
                                          invoice.cess.add(element.text);
                                        }
                                      },
                                      child: Container(
                                          height: 50,
                                          width: 300,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              color: Color(0xff1871FF)),
                                          child: Center(
                                            child: Text(
                                              "Done",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 23,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          )),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  )
                                ]),
                          );
                        });
                  },
                  child: Row(children: [
                    Icon(
                      Icons.add_circle_rounded,
                      color: Colors.blue,
                    ),
                    Text(
                      "  Add Item Details",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff1F2948)),
                    )
                  ]),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Notes",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffA2A7BD)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  maxLines: 3,
                  decoration: InputDecoration(
                      hintText: "It was great doing business with you.",
                      hintStyle: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff1F2948)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Save Successfully"),
                      duration: Duration(seconds: 2),
                      backgroundColor: Colors.red,
                      action: SnackBarAction(
                        label: "Send",
                        onPressed: () {},
                      ),
                    ));
                    bool isValid = fKey.currentState?.validate() ?? false;

                    if (isValid) {
                      invoice.invoiceDate = _invoiceDateController.text;
                      invoice.dueDate = _dueDateController.text;
                      invoice.invnum = invnumController.text;
                      invoice.inv = invController.text;
                      fKey.currentState?.save();
                      FocusScope.of(context).unfocus();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Saved")),
                      );
                    }
                    Navigator.pushNamed(context, "detail_page",
                        arguments: Myinvoice());
                  },
                  child: Container(
                    height: 60,
                    width: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xff1871FF)),
                    child: Center(
                        child: Text(
                      "Generate Invoice",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

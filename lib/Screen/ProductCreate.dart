import 'package:app/style/Style.dart';
import 'package:flutter/material.dart';

class ProductCreate extends StatefulWidget {
  const ProductCreate({super.key});

  @override
  State<ProductCreate> createState() => _ProductCreateState();
}

class _ProductCreateState extends State<ProductCreate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Product'),
      ),
      body: Stack(
        children: [
          screenBackGround(context),
          Container(
            child: (SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  TextFormField(
                    decoration: appInputDecoration('Product Name'),
                    onChanged: (value) {},
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    decoration: appInputDecoration('Product Code'),
                    onChanged: (value) {},
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    decoration: appInputDecoration('Product Image'),
                    onChanged: (value) {},
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    decoration: appInputDecoration('Product Price'),
                    onChanged: (value) {},
                  ),
                  const SizedBox(height: 20),
                  appDropdownStyle(
                    DropdownButton(
                      value: "",
                      isExpanded: true,
                      underline: Container(),
                      items: const [
                        DropdownMenuItem(
                          child: Text("Select QTY"),
                          value: "",
                        ),
                        DropdownMenuItem(
                          child: Text("1 PCS"),
                          value: "1 PCS",
                        ),
                        DropdownMenuItem(
                          child: Text("2 PCS"),
                          value: "2 PCS",
                        ),
                        DropdownMenuItem(
                          child: Text("3 PCS"),
                          value: "3 PCS",
                        ),
                        DropdownMenuItem(
                          child: Text("4 PCS"),
                          value: "4 PCS",
                        ),
                      ],
                      onChanged: (value) {},
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            )),
          )
        ],
      ),
    );
  }
}

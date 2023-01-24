import 'package:flutter/material.dart';

class CustomerListView extends StatefulWidget {
  const CustomerListView({Key? key}) : super(key: key);

  @override
  State<CustomerListView> createState() => _CustomerListViewState();
}

class _CustomerListViewState extends State<CustomerListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getCustomerListView(),
    );
  }

  getCustomerListView() {
    return ListView.builder(itemBuilder: (context, index) {
      return ListTile(
        title: Text('Kunde $index'),
      );
    });
  }
}

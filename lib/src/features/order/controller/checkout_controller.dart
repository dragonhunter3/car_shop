import 'package:car_shop/src/features/order/model/checkout_model.dart';
import 'package:flutter/material.dart';

class AddressProvider extends ChangeNotifier {
  final List<AddressModel> _addresses = [
    AddressModel(
      name: "Michelagelo Flores",
      phone: "09297575442",
      fullAddress: "658 Yost Island APT, Seattle US",
    ),
  ];

  int _selectedIndex = 0;

  List<AddressModel> get addresses => _addresses;
  int get selectedIndex => _selectedIndex;

  void addAddress(AddressModel address) {
    _addresses.add(address);
    notifyListeners();
  }

  void removeAddress(int index) {
    _addresses.removeAt(index);
    if (_selectedIndex >= _addresses.length) {
      _selectedIndex = _addresses.isEmpty ? -1 : 0;
    }
    notifyListeners();
  }

  void selectAddress(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}

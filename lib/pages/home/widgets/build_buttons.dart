import 'package:calcutator_app/colors.dart';
import 'package:calcutator_app/pages/home/providers/calculate.dart';
import 'package:calcutator_app/pages/home/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BuildButton extends StatelessWidget {
  const BuildButton({super.key});

  @override
  Widget build(BuildContext context) {
    final calculator = Provider.of<Calculate>(context, listen: false);
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: MyColors.background2,
        borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
      ),
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                ButtonWidget(text: 'AC', onClicked: calculator.allClear),
                ButtonWidget(text: '<', onClicked: calculator.clear),
                ButtonWidget(text: '+/-', onClicked: calculator.numClick),
                ButtonWidget(text: '÷', onClicked: calculator.numClick),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                ButtonWidget(text: '7', onClicked: calculator.numClick),
                ButtonWidget(text: '8', onClicked: calculator.numClick),
                ButtonWidget(text: '9', onClicked: calculator.numClick),
                ButtonWidget(text: '⨯', onClicked: calculator.numClick),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                ButtonWidget(text: '4', onClicked: calculator.numClick),
                ButtonWidget(text: '5', onClicked: calculator.numClick),
                ButtonWidget(text: '6', onClicked: calculator.numClick),
                ButtonWidget(text: '-', onClicked: calculator.numClick),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                ButtonWidget(text: '1', onClicked: calculator.numClick),
                ButtonWidget(text: '2', onClicked: calculator.numClick),
                ButtonWidget(text: '3', onClicked: calculator.numClick),
                ButtonWidget(text: '+', onClicked: calculator.numClick),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                ButtonWidget(text: '%', onClicked: calculator.numClick),
                ButtonWidget(text: '0', onClicked: calculator.numClick),
                ButtonWidget(text: '.', onClicked: calculator.numClick),
                ButtonWidget(text: '=', onClicked: calculator.evaluate),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

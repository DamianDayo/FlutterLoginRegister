import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controllers/calculator_controller.dart';
import 'package:latihan1_11pplg2/components/custom_widgets.dart';

class CalculatorPage extends StatelessWidget {
  CalculatorPage({super.key});

  final CalculatorController calculatorController = Get.put(CalculatorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Kalkulator")),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TitleText(text: "Silakan masukkan angka"),
              const HeaderImage(),
              CustomInputField(
                label: "Angka 1",
                controller: calculatorController.txtAngka1,
                isNumber: true,
              ),
              CustomInputField(
                label: "Angka 2",
                controller: calculatorController.txtAngka2,
                isNumber: true,
              ),
              const SizedBox(height: 10),

              Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      text: "+",
                      onPressed: calculatorController.tambah,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: CustomButton(
                      text: "-",
                      onPressed: calculatorController.kurang,
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      text: "×",
                      onPressed: calculatorController.kali,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: CustomButton(
                      text: "/",
                      onPressed: calculatorController.bagi,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),
              Obx(() {
                return Text(
                  "Hasil : ${calculatorController.textHasil.value}",
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                );
              }),

              CustomButton(
                text: "Clear",
                onPressed: calculatorController.clear,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
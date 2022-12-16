import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lone_counter/controller/simple_calculator_controller.dart';
import 'package:lone_counter/utils/colors_constant.dart';
import 'package:lone_counter/widget/app_bar.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class SimpleCalculator extends StatelessWidget {
  SimpleCalculator({Key? key}) : super(key: key);
  final SimpleCalculatorController simpleCalculatorController =
      Get.put(SimpleCalculatorController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SimpleCalculatorController>(
      builder: (controller) {
        return Scaffold(
          appBar: customAppBar(title: 'Sip Calculator'),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 18.0, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 20,
                        height: 10,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: ColorConstant.primaryColor.withOpacity(0.5),
                        ),
                      ),
                      const Text('Invested amount'),
                      const SizedBox(width: 30),
                      Container(
                        width: 20,
                        height: 10,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color(0xff487c52),
                        ),
                      ),
                      const Text('Estd. returns'),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                Container(
                  height: 150,
                  width: 150,
                  child: SfRadialGauge(
                    axes: <RadialAxis>[
                      RadialAxis(
                        minimum: 0,
                        maximum: 30,
                        useRangeColorForAxis: true,
                        startAngle: 270,
                        endAngle: 270,
                        showLabels: false,
                        showTicks: false,
                        axisLineStyle: const AxisLineStyle(
                            thicknessUnit: GaugeSizeUnit.factor,
                            thickness: 0.20,
                            color: Color(0xff6ebb88)),
                        ranges: <GaugeRange>[
                          GaugeRange(
                              startValue: 0,
                              endValue: 17,
                              color:
                                  ColorConstant.primaryColor.withOpacity(0.5),
                              sizeUnit: GaugeSizeUnit.factor,
                              startWidth: 0.20,
                              endWidth: 0.20),
                          GaugeRange(
                              startValue: controller.expectedReturnRate.value,
                              endValue: 30,
                              sizeUnit: GaugeSizeUnit.factor,
                              color: ColorConstant.primaryColor,
                              startWidth: 0.20,
                              endWidth: 0.20),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                Column(
                  children: <Widget>[
                    SizedBox(
                      width: 350,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            const Text(
                              'Monthly Investment',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              width: 100,
                              child: TextFormField(
                                controller: controller.controller,
                                decoration: InputDecoration(
                                  fillColor: ColorConstant.primaryColor
                                      .withOpacity(0.1),
                                  filled: true,
                                  contentPadding:
                                      const EdgeInsets.only(left: 30),
                                  border: const OutlineInputBorder(
                                      borderSide: BorderSide.none),
                                ),
                                style: const TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: ColorConstant.primaryColor),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 350,
                      child: Slider(
                          max: 100000,
                          min: 0,
                          thumbColor: ColorConstant.primaryColor,
                          activeColor:
                              ColorConstant.primaryColor.withOpacity(0.5),
                          inactiveColor:
                              ColorConstant.primaryColor.withOpacity(0.5),
                          value: controller.monthlyInvestment.value,
                          onChanged: controller.monthlyInvestmentCalculation),
                    ),
                    SizedBox(
                      width: 350,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            const Text(
                              'Expected return rate (p.a)',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              width: 100,
                              child: TextFormField(
                                controller: controller.returnRateController,
                                decoration: InputDecoration(
                                  fillColor: ColorConstant.primaryColor
                                      .withOpacity(0.1),
                                  filled: true,
                                  contentPadding:
                                      const EdgeInsets.only(left: 30),
                                  border: const OutlineInputBorder(
                                      borderSide: BorderSide.none),
                                ),
                                style: const TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: ColorConstant.primaryColor),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 350,
                      child: Slider(
                          max: 30,
                          min: 0,
                          thumbColor: ColorConstant.primaryColor,
                          activeColor:
                              ColorConstant.primaryColor.withOpacity(0.5),
                          inactiveColor:
                              ColorConstant.primaryColor.withOpacity(0.5),
                          value: controller.expectedReturnRate.value,
                          onChanged: controller.expectedReturnRateCalculation),
                    ),
                    SizedBox(
                      width: 350,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            const Text(
                              'Time period',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              width: 100,
                              child: TextFormField(
                                controller: controller.timePeriodController,
                                decoration: InputDecoration(
                                  fillColor: ColorConstant.primaryColor
                                      .withOpacity(0.1),
                                  filled: true,
                                  contentPadding:
                                      const EdgeInsets.only(left: 30),
                                  border: const OutlineInputBorder(
                                      borderSide: BorderSide.none),
                                ),
                                style: const TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: ColorConstant.primaryColor),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 350,
                      child: Slider(
                          max: 30,
                          min: 0,
                          value: controller.timePeriod.value,
                          thumbColor: ColorConstant.primaryColor,
                          activeColor:
                              ColorConstant.primaryColor.withOpacity(0.5),
                          inactiveColor:
                              ColorConstant.primaryColor.withOpacity(0.5),
                          onChanged: controller.timePeriodCalculation),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: 350,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            const Text('Invested Amount'),
                            Text(
                              controller.investedAmount.toStringAsFixed(0),
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 350,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            const Text('Est. returns'),
                            Text(
                              controller.result.toStringAsFixed(0),
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 350,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            const Text('Total value'),
                            Text(
                              controller.totalInvestment.toStringAsFixed(0),
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

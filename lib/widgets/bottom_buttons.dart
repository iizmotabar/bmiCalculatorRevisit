import 'package:flutter/material.dart';

import '../main.dart';

int _weightValue = 40;
int age = 16;

get getWeightValue {
  return _weightValue;
}

class BottomButtons extends StatefulWidget {
  const BottomButtons({Key? key}) : super(key: key);

  @override
  State<BottomButtons> createState() => _BottomButtonsState();
}

class _BottomButtonsState extends State<BottomButtons> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 200,
            width: double.infinity,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: containerColor.withOpacity(0.8),
                borderRadius: BorderRadius.circular(15)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "WEIGHT",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  _weightValue.toString(),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(6),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            _weightValue -= 1;
                          });
                        },
                        child: CircleAvatar(
                          child: const Icon(
                            Icons.remove,
                            size: 30,
                            color: Colors.white,
                          ),
                          backgroundColor: Colors.grey[700],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(6),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            _weightValue += 1;
                          });
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.grey[700],
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: containerColor.withOpacity(0.8),
                borderRadius: BorderRadius.circular(15)),
            height: 200,
            width: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "AGE",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  age.toString(),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(6),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            age -= 1;
                          });
                        },
                        child: CircleAvatar(
                          child: const Icon(
                            Icons.remove,
                            size: 30,
                            color: Colors.white,
                          ),
                          backgroundColor: Colors.grey[700],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(6),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            age += 1;
                          });
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.grey[700],
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

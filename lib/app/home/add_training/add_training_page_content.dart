import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddTrainingPageContent extends StatefulWidget {
  const AddTrainingPageContent({
    Key? key,
  }) : super(key: key);

  @override
  State<AddTrainingPageContent> createState() => _AddTrainingPageContentState();
}

class _AddTrainingPageContentState extends State<AddTrainingPageContent> {
  var workoutsName = '';
  var trainingName = '';
  var repeat = 8.0;
  var series = 4.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          decoration: const InputDecoration(
            hintText: 'Podaj nazwę treningu',
          ),
          onChanged: (newValue) {
            setState(() {
              workoutsName = newValue;
            });
          },
        ),
        TextField(
          decoration: const InputDecoration(
            hintText: 'Podaj nazwę ćwiczenia',
          ),
          onChanged: (newValue) {
            setState(() {
              trainingName = newValue;
            });
          },
        ),
        const SizedBox(height: 25),
        const Text('Powtórzenia'),
        Slider(
          onChanged: (newValue) {
            setState(() {
              repeat = newValue;
            });
          },
          value: repeat,
          min: 1.0,
          max: 10.0,
          divisions: 10,
          label: repeat.toString(),
        ),
        const SizedBox(height: 20),
        const Text('Serie'),
        Slider(
          onChanged: (newValue) {
            setState(() {
              series = newValue;
            });
          },
          value: series,
          min: 1.0,
          max: 15.0,
          divisions: 15,
          label: repeat.toString(),
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            FirebaseFirestore.instance.collection('workouts').add({
              'name': workoutsName,
              'training': trainingName,
              'repeat': repeat,
              'series': series,
            });
          },
          child: const Text('Dodaj'),
        ),
      ],
    );
  }
}

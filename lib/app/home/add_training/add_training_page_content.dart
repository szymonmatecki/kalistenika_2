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
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            FirebaseFirestore.instance.collection('workouts').add({
              'name': workoutsName,
              'training': trainingName,
              'repeat': 8,
              'series': 4,
            });
          },
          child: const Text('Dodaj'),
        ),
      ],
    );
  }
}

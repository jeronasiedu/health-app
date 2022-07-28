// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Nearby extends StatelessWidget {
  const Nearby({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Doctor(image: "assets/collins.jpg", name: "dr. Tetteh Jeron"),
        Doctor(image: "assets/jones.jpg", name: "dr. Georgette Owusu"),
        Doctor(image: "assets/bruno.jpg", name: "dr. Bruno Mensah"),
      ],
    );
  }
}

class Doctor extends StatelessWidget {
  const Doctor({
    Key? key,
    required this.image,
    required this.name,
  }) : super(key: key);
  final String image;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: SizedBox(
        height: 90,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                image,
                width: 90,
                height: 90,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "General practitioner",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 18,
                      color: Colors.yellow.shade700,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text('4.0'),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      "(191 Reviews)",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

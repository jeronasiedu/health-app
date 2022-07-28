import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HealthNeeds extends StatelessWidget {
  HealthNeeds({Key? key}) : super(key: key);
  List items = [
    ["assets/kit.svg", "Appointment"],
    ["assets/house.svg", "Hospital"],
    ["assets/virus.svg", "Covid-19"],
    ["assets/apps.svg", "More"],
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Health Needs",
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(items.length, (index) {
            return Column(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey.shade100.withOpacity(0.5),
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(
                    items[index][0],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  items[index][1],
                  style: const TextStyle(
                    color: Colors.black54,
                  ),
                )
              ],
            );
          }),
        )
      ],
    );
  }
}

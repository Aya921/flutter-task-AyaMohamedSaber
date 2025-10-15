import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:otex_app/core/theme/font_style_manger.dart';
import 'package:otex_app/feature/home/presentation/view/widgets/categories_list.dart';

class OffersPage extends StatelessWidget {
  const OffersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              // discover offers
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("أستكشف العروض", style: getMediumStyle()),
                  SizedBox(
                    child: Row(
                      children: [
                        Text("الكل", style: getMediumStyle()),

                        IconButton(
                          onPressed: () {
                            // go to filtring page
                          },
                          icon: Icon(
                            FontAwesomeIcons.arrowLeftLong,
                            size: 22,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),

              // categories
             CategoriesList()
            ],
          ),
        ),
      ),
    );
  }
}

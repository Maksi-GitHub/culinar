import 'package:culinar/design/icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddRecipeScreen extends StatelessWidget {
  const AddRecipeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Оформление рецепта',
            style: Theme.of(context).textTheme.labelLarge,
          ),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: backIcon)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 43),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 28),
                  child: Text(
                    'Фотография готового блюда',
                    style: GoogleFonts.dosis(
                        textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400)),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: InkWell(
                  child: Container(
                    height: 250,
                    decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(24)),
                        child: Center(child: imageIcon,),
                  ),
                  onTap: () {
                    
                  },
                )),
          ],
        ),
      ),
    );
  }
}
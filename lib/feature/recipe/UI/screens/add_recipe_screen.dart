import 'package:culinar/design/icons.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:google_fonts/google_fonts.dart';

class AddRecipeScreen extends StatefulWidget {
  const AddRecipeScreen({super.key});

  @override
  _AddRecipeScreenState createState() => _AddRecipeScreenState();
}

class _AddRecipeScreenState extends State<AddRecipeScreen> {
  File? _image;

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedFile =
        await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

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
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 43),
            Padding(
              padding: const EdgeInsets.only(left: 28),
              child: Row(
                children: [
                  Text(
                    'Фотография готового блюда',
                    style: GoogleFonts.dosis(
                      textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: _image == null
                    ? InkWell(
                        onTap: _pickImage,
                        child: Container(
                            height: 250,
                            decoration: BoxDecoration(
                              color: Colors.black26,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Center(
                                child: galleryIcon)),
                      )
                    : Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 28),
                            child: Container(
                              height: 250,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                              ),
                            ),
                          ),
                          Align(
                             alignment: Alignment.topRight,
                             child: IconButton(
                               icon: editGalleryIcon,
                               onPressed: _pickImage,
                             ),
                           ),
                        ],
                      )
                //InkWell(
                //   onTap: _pickImage,
                //   child: Container(
                //     height: 250,
                //     decoration: BoxDecoration(
                //       color: Colors.black26,
                //       borderRadius: BorderRadius.circular(24),
                //       image: _image != null
                //           ? DecorationImage(
                //               image: FileImage(_image!),
                //               fit: BoxFit.cover,
                //             )
                //           : null,
                //     ),
                //     child: _image == null
                //         ? Center(child: Icon(Icons.photo_camera, size: 50.0))
                //         : Align(
                //             alignment: Alignment.topRight,
                //             child: IconButton(
                //               icon: Icon(Icons.edit, color: Colors.white),
                //               onPressed: _pickImage,
                //             ),
                //           ),
                //   ),
                // ),
                ),
            // Остальные элементы формы
          ],
        ),
      ),
    );
  }
}



// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

// class AddRecipeScreen extends StatefulWidget {
//   const AddRecipeScreen({Key? key}) : super(key: key);

//   @override
//   _AddRecipeScreenState createState() => _AddRecipeScreenState();
// }

// class _AddRecipeScreenState extends State<AddRecipeScreen> {
//   File? _image;

//   Future<void> _getImage() async {
//     final picker = ImagePicker();
//     final pickedFile = await picker.pickImage(source: ImageSource.gallery);

//     setState(() {
//       if (pickedFile != null) {
//         _image = File(pickedFile.path);
//       } else {
//         print('No image selected.');
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Оформление рецепта',
//           style: Theme.of(context).textTheme.labelLarge,
//         ),
//         centerTitle: true,
//         leading: IconButton(
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//           icon: Icon(Icons.arrow_back),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             SizedBox(height: 43),
//             Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 28),
//                   child: Text(
//                     'Фотография готового блюда',
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 15,
//                       fontWeight: FontWeight.w400,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 10),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 28),
//               child: InkWell(
//                 onTap: _getImage,
//                 child: Container(
//                   height: 250,
//                   decoration: BoxDecoration(
//                     color: Colors.black26,
//                     borderRadius: BorderRadius.circular(24),
//                   ),
//                   child: _image != null
//                       ? Image.file(
//                           _image!,
//                           fit: BoxFit.fill,
//                         )
//                       : Center(
//                           child: Icon(Icons.add_photo_alternate, size: 50),
//                         ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

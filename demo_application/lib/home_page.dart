import 'package:demo_application/service/movie_service.dart';
import 'package:demo_application/widget/custom_padding.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  String _titleText = "Create Your First Note";
  String _descriptionText = "Add a note about anything your thoughts on climate chance, or vour history essay andi share it witht the world.";
 final _createNote = 'Create a Note';
  final _importNotes = 'Import Notes';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,

      ),
      body: Padding(
        padding: PaddingItems.shared.paddingVerticalMedium(),
        child: Column(
          children: [
             LinearProgressIndicator(color: Colors.black,),
            Image(image: ImageItems().appleBook),
            _TitleWidget(title: _titleText), 
            Padding(padding: PaddingItems.shared.paddingVerticalSmall(), child: _SubTitleWidget(title: _descriptionText)),
            const Spacer(),
            _createButton(context),
            TextButton(onPressed: () {}, child: Text(_importNotes)),
            const SizedBox(height: ButtonHeights.buttonNormalHeight),
          ],
        ),
      ),
    );
  }

    ElevatedButton _createButton(BuildContext context) {
    return ElevatedButton(
        onPressed: () { Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return MovieService();
              }, fullscreenDialog: true,
              settings: RouteSettings(arguments: Text("Merhaba"))));},
        child: SizedBox(
            height: ButtonHeights.buttonNormalHeight,
            child: Center(
                child: Text(
              _createNote,
              style: Theme.of(context).textTheme.headlineMedium,
            ))));
  }
}

class _SubTitleWidget extends StatelessWidget {
  const _SubTitleWidget({Key? key, this.textAlign = TextAlign.center, required this.title}) : super(key: key);
  final TextAlign textAlign;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.bodyMedium,
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headlineMedium);
  }
}



class ButtonHeights {
  static const double buttonNormalHeight = 50;
}

class ImageItems{
  AssetImage appleBook = AssetImage("assets/ic_apple_with_book.png");
}


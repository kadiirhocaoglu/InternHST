part of '../signup_view.dart';

class _SingupTextField extends StatelessWidget {
  _SingupTextField({
    super.key,
    required String title,
    required TextEditingController controller
  })
  : _title = title,
    _controller = controller;

  final String _title;
  final TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: SignupPadding.verylow.value),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
            padding: EdgeInsets.only(left: SignupPadding.low.value),
            child: Text(_title),
              ),
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Theme.of(context).colorScheme.onSurface.withOpacity(0.5),
                ),
              ),
            ],
          )
        );
  }
}

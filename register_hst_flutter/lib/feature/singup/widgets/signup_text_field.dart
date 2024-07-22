part of '../signup_view.dart';

final class _SingupTextField extends StatelessWidget {
  _SingupTextField({
    super.key,
    required String title,
    required TextEditingController controller,
    bool obscureText = false
  })
  : _title = title,
    _controller = controller,
    _obscureText = obscureText;

  final String _title;
  final TextEditingController _controller;
  final bool _obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: SignupSizeConstants.verylow.value),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
            padding: EdgeInsets.only(left: SignupSizeConstants.low.value),
            child: Text(_title),
              ),
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: ColorConstants.textFieldFillColor.withOpacity(0.5),
                ),
                obscureText: _obscureText,
              ),
            ],
          )
        );
  }
}

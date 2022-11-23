import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HyperLink extends StatelessWidget {
  final String _url;
  final String _text;

  HyperLink(this._url, this._text);

  _launchURl() async {
    if (await canLaunchUrl(
      Uri.parse(_url)
    )) {
      await launchUrl(
        Uri.parse(_url),
      );
    } else {
      throw 'Something went wrong';
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Text(
        _text,
        style: TextStyle(
          color: Color.fromARGB(255, 5, 73, 129),
          decoration: TextDecoration.underline,
        ),
      ),
      onTap: _launchURl,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ConnectMetaMaskDialog extends StatelessWidget {
  const ConnectMetaMaskDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    var wid = 450.0;
    var hgt = 200.0;
    const edge = 75.0;
    if (_width < 405) wid = _width;
    if (_height < 505) hgt = _height * 0.45;
    final widChild = wid - edge;
    return Dialog(
      backgroundColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        height: hgt,
        width: wid,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.grey[900],
          borderRadius: BorderRadius.circular(30),
          border: Border.all(width: 0),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Metamask wallet',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'OpenSans',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.close,
                    size: 30,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  "Couldn't find MetaMask extension",
                  style: TextStyle(color: Colors.grey[400]),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 40),
                  width: widChild,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: Colors.purple[900]!, width: 2),
                  ),
                  child: TextButton(
                    onPressed: () {
                      launchUrl(Uri.parse('https://metamask.io/download/'));
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Install MetaMask extension',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'OpenSans',
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

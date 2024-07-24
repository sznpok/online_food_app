import 'package:flutter/material.dart';

class CustomAlertDialogBox extends StatelessWidget {
  const CustomAlertDialogBox(
      {super.key,
      this.title,
      this.description,
      this.cancelTitle,
      this.cancelFun,
      this.okTitle,
      this.okFun});

  final String? title;
  final String? description;
  final String? cancelTitle;
  final VoidCallback? cancelFun;
  final String? okTitle;
  final VoidCallback? okFun;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: const RoundedRectangleBorder(),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        height: 275,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              title!,
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Text(
              description!,
              style: const TextStyle(fontSize: 16),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => cancelFun!(),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                      minimumSize: Size(MediaQuery.of(context).size.width, 50),
                    ),
                    child: Text(
                      cancelTitle!,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => okFun!(),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      minimumSize: Size(MediaQuery.of(context).size.width, 50),
                    ),
                    child: Text(
                      okTitle!,
                      style: const TextStyle(color: Colors.white),
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
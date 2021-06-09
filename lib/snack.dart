import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class Snack {
	static late BuildContext _snackContext;


	void configure({required BuildContext context}) {
		_snackContext = context;
	}

	Snack();

	bool get _checkConfiguration {
		if (_snackContext == null) {
			print("you must configuration Snack before use them");
			print("please use Snack().configure(context)");
			return false;
		}
		return true;
	}

	Snack.success(String message, {Widget? icon, String? title}) {
		if (!_checkConfiguration) return;
		Flushbar(
			title: title,
			message: message,
			duration: Duration(seconds: 3),
			flushbarPosition: FlushbarPosition.TOP,
			flushbarStyle: FlushbarStyle.FLOATING,
			dismissDirection: FlushbarDismissDirection.HORIZONTAL,
			margin: EdgeInsets.all(10),
			borderRadius: BorderRadius.all(Radius.circular(5)),
			backgroundGradient:
			LinearGradient(colors: [Colors.green, Colors.lightGreen]),
			icon: icon,
		)..show(_snackContext);
	}

	Snack.warning(String message, {Widget? icon, String? title}) {
		if (!_checkConfiguration) return;
		Flushbar(
			title: title,
			message: message,
			duration: Duration(seconds: 3),
			flushbarPosition: FlushbarPosition.TOP,
			flushbarStyle: FlushbarStyle.FLOATING,
			dismissDirection: FlushbarDismissDirection.HORIZONTAL,
			margin: EdgeInsets.all(10),
			borderRadius: BorderRadius.all(Radius.circular(5)),
			backgroundGradient:
			LinearGradient(colors: [Colors.deepOrange, Colors.orangeAccent]),
			icon: icon,
		)..show(_snackContext);
	}

	Snack.info(String message, {Widget? icon, String? title}) {
		if (!_checkConfiguration) return;
		Flushbar(
			title: title,
			message: message,
			duration: Duration(seconds: 3),
			flushbarPosition: FlushbarPosition.TOP,
			flushbarStyle: FlushbarStyle.FLOATING,
			dismissDirection: FlushbarDismissDirection.HORIZONTAL,
			margin: EdgeInsets.all(10),
			borderRadius: BorderRadius.all(Radius.circular(5)),
			backgroundGradient:
			LinearGradient(colors: [Colors.lightBlue, Colors.blueAccent]),
			icon: icon,
		)..show(_snackContext);
	}

	Snack.error(String message, {Widget? icon, String? title}) {
		if (!_checkConfiguration) return;
		Flushbar(
			title: title,
			message: message,
			duration: Duration(seconds: 3),
			flushbarPosition: FlushbarPosition.TOP,
			flushbarStyle: FlushbarStyle.FLOATING,
			dismissDirection: FlushbarDismissDirection.HORIZONTAL,
			margin: EdgeInsets.all(10),
			borderRadius: BorderRadius.all(Radius.circular(5)),
			backgroundGradient:
			LinearGradient(colors: [Colors.red, Colors.redAccent]),
			icon: icon,
		)..show(_snackContext);
	}
}
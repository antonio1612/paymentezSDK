import 'package:paymentez/utils/paymentez_validate.dart';

class Transaction {
  Transaction({
    this.status,
    this.paymentDate,
    this.amount,
    this.authorizationCode,
    this.installments,
    this.devReference,
    this.statusDetail,
    this.carrierCode,
    this.message,
    this.id,
    this.statusDetailDescription,
  });

  factory Transaction.fromJson(Map<String, dynamic> dat) {
    return Transaction(
      status: dat['status'] as String?,
      paymentDate: dat['payment_date'] as String?,
      amount: double.parse(dat['amount'].toString()),
      authorizationCode: dat['authorization_code'] as String?,
      installments: int.parse(dat['installments'].toString()),
      devReference: dat['dev_reference'] as String?,
      statusDetail: int.parse(dat['status_detail'].toString()),
      carrierCode: dat['carrier_code'] as String?,
      message: dat['message'] as String?,
      id: dat['id'] as String?,
      statusDetailDescription: PaymentezValidate.geStatusDetailDescription(
        int.parse(dat['status_detail'].toString()),
      ),
    );
  }

  final String? status;
  final String? paymentDate;
  final double? amount;
  final String? authorizationCode;
  final int? installments;
  final String? devReference;
  final int? statusDetail;
  final String? carrierCode;
  final String? message;
  final String? id;
  final String? statusDetailDescription;

  Map<String, dynamic> toJson() => {
        'status': status,
        'payment_date': paymentDate,
        'amount': amount,
        'authorization_code': authorizationCode,
        'installments': installments,
        'dev_reference': devReference,
        'status_detail': statusDetail,
        'carrier_code': carrierCode,
        'message': message,
        'id': id,
        'statusDetailDescription': statusDetailDescription,
      };
}

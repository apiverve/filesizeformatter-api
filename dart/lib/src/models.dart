/// Response models for the File Size Formatter API.

/// API Response wrapper.
class FilesizeformatterResponse {
  final String status;
  final dynamic error;
  final FilesizeformatterData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  FilesizeformatterResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory FilesizeformatterResponse.fromJson(Map<String, dynamic> json) => FilesizeformatterResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? FilesizeformatterData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the File Size Formatter API.

class FilesizeformatterData {
  num? bytes;
  String? formatted;
  num? value;
  String? unit;
  String? standard;
  num? precision;
  FilesizeformatterDataConversions? conversions;

  FilesizeformatterData({
    this.bytes,
    this.formatted,
    this.value,
    this.unit,
    this.standard,
    this.precision,
    this.conversions,
  });

  factory FilesizeformatterData.fromJson(Map<String, dynamic> json) => FilesizeformatterData(
      bytes: json['bytes'],
      formatted: json['formatted'],
      value: json['value'],
      unit: json['unit'],
      standard: json['standard'],
      precision: json['precision'],
      conversions: json['conversions'] != null ? FilesizeformatterDataConversions.fromJson(json['conversions']) : null,
    );
}

class FilesizeformatterDataConversions {
  num? B;
  num? KiB;
  num? MiB;
  num? GiB;
  num? TiB;
  num? PiB;
  num? EiB;
  num? ZiB;
  num? YiB;

  FilesizeformatterDataConversions({
    this.B,
    this.KiB,
    this.MiB,
    this.GiB,
    this.TiB,
    this.PiB,
    this.EiB,
    this.ZiB,
    this.YiB,
  });

  factory FilesizeformatterDataConversions.fromJson(Map<String, dynamic> json) => FilesizeformatterDataConversions(
      B: json['B'],
      KiB: json['KiB'],
      MiB: json['MiB'],
      GiB: json['GiB'],
      TiB: json['TiB'],
      PiB: json['PiB'],
      EiB: json['EiB'],
      ZiB: json['ZiB'],
      YiB: json['YiB'],
    );
}

class FilesizeformatterRequest {
  int bytes;
  String? unit;
  int? precision;
  String? standard;

  FilesizeformatterRequest({
    required this.bytes,
    this.unit,
    this.precision,
    this.standard,
  });

  Map<String, dynamic> toJson() => {
      'bytes': bytes,
      if (unit != null) 'unit': unit,
      if (precision != null) 'precision': precision,
      if (standard != null) 'standard': standard,
    };
}

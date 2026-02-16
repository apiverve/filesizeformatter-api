/// Response models for the File Size Formatter API.

/// API Response wrapper.
class FilesizeformatterResponse {
  final String status;
  final dynamic error;
  final FilesizeformatterData? data;

  FilesizeformatterResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory FilesizeformatterResponse.fromJson(Map<String, dynamic> json) => FilesizeformatterResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? FilesizeformatterData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the File Size Formatter API.

class FilesizeformatterData {
  int? bytes;
  String? formatted;
  int? value;
  String? unit;
  String? standard;
  int? precision;
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
  int? B;
  int? KiB;
  int? MiB;
  int? GiB;
  int? TiB;
  int? PiB;
  int? EiB;
  int? ZiB;
  int? YiB;

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

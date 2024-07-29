class CurrentTime {
  String? abbreviation;
  String? clientIp;
  DateTime? datetime;
  int? dayOfWeek;
  int? dayOfYear;
  bool? dst;
  dynamic dstFrom;
  int? dstOffset;
  dynamic dstUntil;
  int? rawOffset;
  String? timezone;
  int? unixtime;
  DateTime? utcDatetime;
  String? utcOffset;
  int? weekNumber;

  CurrentTime({
    this.abbreviation,
    this.clientIp,
    this.datetime,
    this.dayOfWeek,
    this.dayOfYear,
    this.dst,
    this.dstFrom,
    this.dstOffset,
    this.dstUntil,
    this.rawOffset,
    this.timezone,
    this.unixtime,
    this.utcDatetime,
    this.utcOffset,
    this.weekNumber,
  });

  factory CurrentTime.fromJson(Map<String, dynamic> json) => CurrentTime(
        abbreviation: json['abbreviation'] as String?,
        clientIp: json['client_ip'] as String?,
        datetime: json['datetime'] == null
            ? null
            : DateTime.parse(json['datetime'] as String),
        dayOfWeek: json['day_of_week'] as int?,
        dayOfYear: json['day_of_year'] as int?,
        dst: json['dst'] as bool?,
        dstFrom: json['dst_from'] as dynamic,
        dstOffset: json['dst_offset'] as int?,
        dstUntil: json['dst_until'] as dynamic,
        rawOffset: json['raw_offset'] as int?,
        timezone: json['timezone'] as String?,
        unixtime: json['unixtime'] as int?,
        utcDatetime: json['utc_datetime'] == null
            ? null
            : DateTime.parse(json['utc_datetime'] as String),
        utcOffset: json['utc_offset'] as String?,
        weekNumber: json['week_number'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'abbreviation': abbreviation,
        'client_ip': clientIp,
        'datetime': datetime?.toIso8601String(),
        'day_of_week': dayOfWeek,
        'day_of_year': dayOfYear,
        'dst': dst,
        'dst_from': dstFrom,
        'dst_offset': dstOffset,
        'dst_until': dstUntil,
        'raw_offset': rawOffset,
        'timezone': timezone,
        'unixtime': unixtime,
        'utc_datetime': utcDatetime?.toIso8601String(),
        'utc_offset': utcOffset,
        'week_number': weekNumber,
      };
}

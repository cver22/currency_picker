class Currency {
  ///The currency code
  final String code;

  ///The currency name in English
  final String name;

  ///The currency symbol
  final String symbol;

  ///The currency flag code
  ///
  /// To get flag unicode(Emoji) use [CurrencyUtils.currencyToEmoji]
  final String? flag;

  ///The currency number
  final int number;

  ///The currency decimal digits
  final int decimalDigits;

  ///The currency plural name in English
  final String namePlural;

  ///The decimal separator
  final String decimalSeparator;

  ///The thousands separator
  final String thousandsSeparator;

  ///True if symbol is on the Left of the amount
  final bool symbolOnLeft;

  ///True if symbol has space with amount
  final bool spaceBetweenAmountAndSymbol;

  bool get isFlagImage => flag?.endsWith('.png') ?? false;

  final bool isCustom;

  Currency(
      {required this.code,
      required this.name,
      required this.symbol,
      required this.flag,
      required this.number,
      required this.decimalDigits,
      required this.namePlural,
      required this.symbolOnLeft,
      required this.decimalSeparator,
      required this.thousandsSeparator,
      required this.spaceBetweenAmountAndSymbol,
      this.isCustom = false});

  Currency.from({required Map<String, dynamic> json})
      : code = json['code'] as String,
        name = json['name'] as String,
        symbol = json['symbol'] as String,
        number = json['number'] as int,
        flag = json['flag'] as String,
        decimalDigits = json['decimal_digits'] as int,
        namePlural = json['name_plural'] as String,
        symbolOnLeft = json['symbol_on_left'] as bool,
        decimalSeparator = json['decimal_separator'] as String,
        thousandsSeparator = json['thousands_separator'] as String,
        spaceBetweenAmountAndSymbol = json['space_between_amount_and_symbol'] as bool,
        isCustom = json['isCustom'] as bool;

  Map<String, dynamic> toJson() => {
        'code': code,
        'name': name,
        'symbol': symbol,
        'number': number,
        'flag': flag,
        'decimal_digits': decimalDigits,
        'name_plural': namePlural,
        'symbol_on_left': symbolOnLeft,
        'decimal_separator': decimalSeparator,
        'thousands_separator': thousandsSeparator,
        'space_between_amount_and_symbol': spaceBetweenAmountAndSymbol,
        'isCustom': isCustom,
      };

  Currency copyWith({
    String? code,
    String? name,
    String? symbol,
    String? flag,
    int? number,
    int? decimalDigits,
    String? namePlural,
    String? decimalSeparator,
    String? thousandsSeparator,
    bool? symbolOnLeft,
    bool? spaceBetweenAmountAndSymbol,
    bool? isCustom,
  }) {
    return Currency(
      code: code ?? this.code,
      name: name ?? this.name,
      symbol: symbol ?? this.symbol,
      flag: flag ?? this.flag,
      number: number ?? this.number,
      decimalDigits: decimalDigits ?? this.decimalDigits,
      namePlural: namePlural ?? this.namePlural,
      decimalSeparator: decimalSeparator ?? this.decimalSeparator,
      thousandsSeparator: thousandsSeparator ?? this.thousandsSeparator,
      symbolOnLeft: symbolOnLeft ?? this.symbolOnLeft,
      spaceBetweenAmountAndSymbol: spaceBetweenAmountAndSymbol ?? this.spaceBetweenAmountAndSymbol,
      isCustom: isCustom ?? this.isCustom,
    );
  }
}

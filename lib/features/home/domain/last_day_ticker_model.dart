import 'dart:async';
import 'dart:convert';

class LastDayTickerModel {
  final String? lastDayTickerModelE;
  final int? e;
  final String? s;
  final String? lastDayTickerModelP;
  final String? p;
  final String? w;
  final String? x;
  final String? lastDayTickerModelC;
  final String? q;
  final String? lastDayTickerModelB;
  final String? b;
  final String? lastDayTickerModelA;
  final String? a;
  final String? lastDayTickerModelO;
  final String? h;
  final String? lastDayTickerModelL;
  final String? v;
  final String? lastDayTickerModelQ;
  final int? o;
  final int? c;
  final int? f;
  final int? l;
  final int? n;

  LastDayTickerModel({
    this.lastDayTickerModelE,
    this.e,
    this.s,
    this.lastDayTickerModelP,
    this.p,
    this.w,
    this.x,
    this.lastDayTickerModelC,
    this.q,
    this.lastDayTickerModelB,
    this.b,
    this.lastDayTickerModelA,
    this.a,
    this.lastDayTickerModelO,
    this.h,
    this.lastDayTickerModelL,
    this.v,
    this.lastDayTickerModelQ,
    this.o,
    this.c,
    this.f,
    this.l,
    this.n,
  });

  factory LastDayTickerModel.fromJson(String str) =>
      LastDayTickerModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  static StreamTransformer<dynamic, LastDayTickerModel> createTransformer() {
    return StreamTransformer<dynamic, LastDayTickerModel>.fromHandlers(
      handleData: (dynamic data, EventSink sink) {
        try {
          sink.add(LastDayTickerModel.fromJson(data));
        } catch (error) {
          sink.addError('Failed to parse JSON: $error');
        }
      },
      handleError: (error, stackTrace, sink) {
        sink.addError('Something went wrong: $error');
      },
      handleDone: (sink) => sink.close(),
    );
  }

  factory LastDayTickerModel.fromMap(Map<String, dynamic> json) =>
      LastDayTickerModel(
        lastDayTickerModelE: json["e"],
        e: json["E"],
        s: json["s"],
        lastDayTickerModelP: json["p"],
        p: json["P"],
        w: json["w"],
        x: json["x"],
        lastDayTickerModelC: json["c"],
        q: json["Q"],
        lastDayTickerModelB: json["b"],
        b: json["B"],
        lastDayTickerModelA: json["a"],
        a: json["A"],
        lastDayTickerModelO: json["o"],
        h: json["h"],
        lastDayTickerModelL: json["l"],
        v: json["v"],
        lastDayTickerModelQ: json["q"],
        o: json["O"],
        c: json["C"],
        f: json["F"],
        l: json["L"],
        n: json["n"],
      );

  Map<String, dynamic> toMap() => {
        "e": lastDayTickerModelE,
        "E": e,
        "s": s,
        "p": lastDayTickerModelP,
        "P": p,
        "w": w,
        "x": x,
        "c": lastDayTickerModelC,
        "Q": q,
        "b": lastDayTickerModelB,
        "B": b,
        "a": lastDayTickerModelA,
        "A": a,
        "o": lastDayTickerModelO,
        "h": h,
        "l": lastDayTickerModelL,
        "v": v,
        "q": lastDayTickerModelQ,
        "O": o,
        "C": c,
        "F": f,
        "L": l,
        "n": n,
      };
}

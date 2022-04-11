class Tuple<F, S, T> {
  F? _f;
  S? _s;
  T? _t;

  Tuple(this._f, this._s, this._t);

  F? get first => _f;

  S? get second => _s;

  T? get third => _t;
}

library bignum;


import 'src/big_integer_v8.dart';
import 'src/big_integer_dartvm.dart';

abstract class BigInteger {
  static bool _useJsBigint = (){
    if (0.0 is int) {
      return true;
    }
    try {
      // make sure the sdk support modInverse
      return 3.modInverse(7) == -1;
    }catch(err) {
      return true;
    }
    return false;
  }();
  static BigInteger get ZERO {
    if (_useJsBigint) {
      return BigIntegerV8.nbv(0);
    } else {
      return BigIntegerDartvm.nbv(0);
    }
  }
  static BigInteger get ONE {
    if (_useJsBigint) {
      return BigIntegerV8.nbv(1);
    } else {
      return BigIntegerDartvm.nbv(1);
    }
  }
  static BigInteger get TWO {
    if (_useJsBigint) {
      return BigIntegerV8.nbv(2);
    } else {
      return BigIntegerDartvm.nbv(2);
    }
  }
  static BigInteger get THREE {
    if (_useJsBigint) {
      return BigIntegerV8.nbv(3);
    } else {
      return BigIntegerDartvm.nbv(3);
    }
  }
  factory BigInteger([a,b,c]) {
    if (_useJsBigint) {
      return new BigIntegerV8(a,b,c);
    } else {
      return new BigIntegerDartvm(a,b,c);
    }
  }
  factory BigInteger.fromBytes( int signum, List<int> magnitude ) {
    if (_useJsBigint) {
      return new BigIntegerV8.fromBytes(signum, magnitude);
    } else {
      return new BigIntegerDartvm.fromBytes(signum, magnitude);
    }
  }
   BigInteger operator %(covariant BigInteger other);

   BigInteger operator &(covariant BigInteger other);

   BigInteger operator *(covariant BigInteger other);

   BigInteger operator +(covariant BigInteger other);

   BigInteger operator -();

   BigInteger operator -(covariant BigInteger other);

   BigInteger operator /(covariant BigInteger other);

   bool operator <(covariant BigInteger other);

   BigInteger operator <<(int shiftAmount);

   bool operator <=(covariant BigInteger other);

   bool operator >(covariant BigInteger other);

   bool operator >=(covariant BigInteger other);

   BigInteger operator >>(int shiftAmount);

   BigInteger operator ^(covariant BigInteger other);

   BigInteger abs();

   BigInteger add(covariant BigInteger a);

   void bitwiseTo(covariant BigInteger a, Function op, covariant BigInteger r);

   addTo(covariant BigInteger a, covariant BigInteger r);

   and(covariant BigInteger a);

   andNot(covariant BigInteger a);

   bitCount();

   int bitLength();

   byteValue();

   int cbit(int x);

   clearBit(n);

   clone();

   int compareTo(a);

   void copyTo(covariant BigInteger r);

   dMultiply(n);
   dAddOffset(n,w);

   divRemTo(covariant BigInteger m, covariant BigInteger q, covariant BigInteger r);

   BigInteger divide(covariant BigInteger a);

   Map<int, BigInteger> divideAndRemainder(covariant BigInteger a);

   bool equals(covariant BigInteger a);

   BigInteger exp(int e, z);

   flipBit(n);

   void fromInt(int x);

   void fromRadix(s, b);

   void fromString(String s, int b);

   gcd(covariant BigInteger a);

   getLowestSetBit();

   int intValue();

   isEven();

   isOdd();

   bool isProbablePrime(int t);

   void lShiftTo(int n, covariant BigInteger r);

   int lbit(int x);

   // TODO: implement lowestSetBit
   int get lowestSetBit;

   BigInteger max(covariant BigInteger a);

   bool millerRabin(t);

   BigInteger min(covariant BigInteger a);

   mod(covariant BigInteger a);

   int modInt(int n);

   BigInteger modInverse(covariant BigInteger m);

   modPow(covariant BigInteger e, covariant BigInteger m);

   BigInteger modPowInt(int e, covariant BigInteger m);

   BigInteger multiply(covariant BigInteger a);

   void multiplyTo(covariant BigInteger a, covariant BigInteger r);

   int nbits(x);

   negate_op();

   not();

   op_and(x, y);

   op_andnot(x, y);

   op_or(x, y);

   op_xor(x, y);

   or(covariant BigInteger a);

   BigInteger pow(int e);

   void rShiftTo(int n, r);

   BigInteger remainder(covariant BigInteger a);

   setBit(n);

   shiftLeft(int n);

   shiftRight(int n);

   shortValue();

   int signum();

   void squareTo(r);

   void subTo(covariant BigInteger a, covariant BigInteger r);

   BigInteger subtract(covariant BigInteger a);

   testBit(n);

   List<int> toByteArray();

   String toRadix([int b = 10]);

   String toString([int b]);

   xor(covariant BigInteger a);

   BigInteger operator |(covariant BigInteger other);

   BigInteger operator ~();

   BigInteger operator ~/(covariant BigInteger other);
}

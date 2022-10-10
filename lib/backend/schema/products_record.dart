import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'products_record.g.dart';

abstract class ProductsRecord
    implements Built<ProductsRecord, ProductsRecordBuilder> {
  static Serializer<ProductsRecord> get serializer =>
      _$productsRecordSerializer;

  String? get name;

  int? get price;

  String? get image;

  DocumentReference? get catRefId;

  String? get name2;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ProductsRecordBuilder builder) => builder
    ..name = ''
    ..price = 0
    ..image = ''
    ..name2 = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Products');

  static Stream<ProductsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ProductsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ProductsRecord._();
  factory ProductsRecord([void Function(ProductsRecordBuilder) updates]) =
      _$ProductsRecord;

  static ProductsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createProductsRecordData({
  String? name,
  int? price,
  String? image,
  DocumentReference? catRefId,
  String? name2,
}) {
  final firestoreData = serializers.toFirestore(
    ProductsRecord.serializer,
    ProductsRecord(
      (p) => p
        ..name = name
        ..price = price
        ..image = image
        ..catRefId = catRefId
        ..name2 = name2,
    ),
  );

  return firestoreData;
}

import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'pageview_record.g.dart';

abstract class PageviewRecord
    implements Built<PageviewRecord, PageviewRecordBuilder> {
  static Serializer<PageviewRecord> get serializer =>
      _$pageviewRecordSerializer;

  String? get name;

  String? get image;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PageviewRecordBuilder builder) => builder
    ..name = ''
    ..image = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Pageview');

  static Stream<PageviewRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PageviewRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PageviewRecord._();
  factory PageviewRecord([void Function(PageviewRecordBuilder) updates]) =
      _$PageviewRecord;

  static PageviewRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPageviewRecordData({
  String? name,
  String? image,
}) {
  final firestoreData = serializers.toFirestore(
    PageviewRecord.serializer,
    PageviewRecord(
      (p) => p
        ..name = name
        ..image = image,
    ),
  );

  return firestoreData;
}

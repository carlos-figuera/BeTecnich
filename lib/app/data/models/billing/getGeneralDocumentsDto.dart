import 'dart:convert';

GetGeneralDocumentDto getGeneralDocumentsFromJson(String str) =>
    GetGeneralDocumentDto.fromJson(json.decode(str));

String getGeneralDocumentsToJson(GetGeneralDocumentDto data) =>
    json.encode(data.toJson());

class GetGeneralDocumentDto {
  GetGeneralDocumentDto({
    required this.id,
    required this.operationType,
    required this.date,
    required this.amount,
    required this.subtotal,
    required this.status,
    required this.perceptionAmount,
    required this.retentionAmount,
    required this.observations,
    required this.cashier,
    required this.ivaDocument,
    required this.detailDocuments,
    required this.correlative,
  });

  int id;
  String operationType;
  DateTime date;
  int amount;
  int subtotal;
  String status;
  int perceptionAmount;
  int retentionAmount;
  String observations;
  Cashier cashier;
  IvaDocument ivaDocument;
  List<DetailDocument> detailDocuments;
  Correlative correlative;

  factory GetGeneralDocumentDto.fromJson(Map<String, dynamic> json) =>
      GetGeneralDocumentDto(
        id: json["id"] ?? 0,
        operationType: json["operationType"] ?? "",
        date: json["date"] ?? "",
        amount: json["amount"] ?? 0,
        subtotal: json["subtotal"] ?? 0,
        status: json["status"] ?? "",
        perceptionAmount: json["perceptionAmount"] ?? 0,
        retentionAmount: json["retentionAmount"] ?? 0,
        observations: json["observations"] ?? "",
        cashier: json["cashier"] == null
            ? Cashier.fromJson(json["cashier"])
            : Cashier(
                firstLastName: "",
                secondName: "",
                secondLastName: "",
                firstName: "",
                image: ""),
        ivaDocument: json["ivaDocument"] == null
            ? IvaDocument.fromJson(json["ivaDocument"])
            : IvaDocument(id: 0, code: "",description: "",extendedNameDocument: "",isActive: false,nameDocument: "" ),
        detailDocuments: List<DetailDocument>.from(
            json["detailDocuments"].map((x) => DetailDocument.fromJson(x))),
        correlative:Correlative.fromJson(json["correlative"])   ,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "operationType": operationType,
        "date": date.toIso8601String(),
        "amount": amount,
        "subtotal": subtotal,
        "status": status,
        "perceptionAmount": perceptionAmount,
        "retentionAmount": retentionAmount,
        "observations": observations,
        "cashier": cashier.toJson(),
        "ivaDocument": ivaDocument.toJson(),
        "detailDocuments":
            List<dynamic>.from(detailDocuments.map((x) => x.toJson())),
        "correlative": correlative,
      };
}

class Cashier {
  Cashier({
    required this.firstName,
    required this.secondName,
    required this.image,
    required this.firstLastName,
    required this.secondLastName,
  });

  String firstName;
  String secondName;
  dynamic image;
  String firstLastName;
  String secondLastName;

  factory Cashier.fromJson(Map<String, dynamic> json) => Cashier(
        firstName: json["firstName"],
        secondName: json["secondName"],
        image: json["image"],
        firstLastName: json["firstLastName"],
        secondLastName: json["secondLastName"],
      );

  Map<String, dynamic> toJson() => {
        "firstName": firstName,
        "secondName": secondName,
        "image": image,
        "firstLastName": firstLastName,
        "secondLastName": secondLastName,
      };
}

class DetailDocument {
  DetailDocument({
    required this.id,
    required this.priceDetail,
    required this.ivaOperationType,
    required this.detailQuantity,
    required this.description,
    required this.storageArticle,
  });

  int id;
  int priceDetail;
  String ivaOperationType;
  int detailQuantity;
  String description;
  dynamic storageArticle;

  factory DetailDocument.fromJson(Map<String, dynamic> json) => DetailDocument(
        id: json["id"],
        priceDetail: json["priceDetail"],
        ivaOperationType: json["ivaOperationType"],
        detailQuantity: json["detailQuantity"],
        description: json["description"],
        storageArticle: json["storageArticle"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "priceDetail": priceDetail,
        "ivaOperationType": ivaOperationType,
        "detailQuantity": detailQuantity,
        "description": description,
        "storageArticle": storageArticle,
      };
}

class IvaDocument {
  IvaDocument({
    required this.id,
    required this.isActive,
    required this.description,
    required this.nameDocument,
    required this.extendedNameDocument,
    required this.code,
  });

  int id;
  bool isActive;
  dynamic description;
  String nameDocument;
  String extendedNameDocument;
  String code;

  factory IvaDocument.fromJson(Map<String, dynamic> json) => IvaDocument(
        id: json["id"],
        isActive: json["isActive"],
        description: json["description"],
        nameDocument: json["name_document"],
        extendedNameDocument: json["extended_name_document"],
        code: json["code"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "isActive": isActive,
        "description": description,
        "name_document": nameDocument,
        "extended_name_document": extendedNameDocument,
        "code": code,
      };
}



class Correlative {
  Correlative({
   required this.id,
   required this.docNumber,
   required this.docReference,
   required this.serialNumber,
  });

  int id;
  String docNumber;
  String docReference;
  String serialNumber;

  factory Correlative.fromJson(Map<String, dynamic> json) => Correlative(
    id: json["id"]??0,
    docNumber: json["doc_number"]??"",
    docReference: json["doc_reference"]??"",
    serialNumber: json["serial_number"]??"",
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "doc_number": docNumber,
    "doc_reference": docReference,
    "serial_number": serialNumber,
  };
}


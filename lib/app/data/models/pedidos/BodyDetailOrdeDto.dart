import 'dart:convert';

BodyDetailOrdeDto bodyDetailOrdeDtoFromJson(String str) => BodyDetailOrdeDto.fromJson(json.decode(str));

String bodyDetailOrdeDtoToJson(BodyDetailOrdeDto data) => json.encode(data.toJson());

class BodyDetailOrdeDto {
  BodyDetailOrdeDto({
    required this.id,
    required this.notaventaId,
    required this.codigo,
    required this.descripcion,
    required this.estado,
    required this.unidadMedida,
    required this.reservado,
    required this.cantidad,
    required this.precio,
    required this.total,
    required this.picking,
    required this.productId,

    required this.porcentajeDescuento,
    required this.montoDescuento,
    required this.tasaMoneda,
    required this.neto,
    required this.iva,
    required this.bruto,
    required this.precioUsd,
    required this.netoUsd,
    required this.precioBrutoUsd,
    required this.username,
    required this.timopp,
    required this.listaPrecio,
    required this.peso,
    required this.volumen,
    required this.archivado,
    required this.solicitudCompra,
    required this.pickingConfirmado,
  });

  int id;
  int notaventaId;
  String codigo;
  String descripcion;
  int cantidad;
  int solicitudCompra;
  String estado;
  String unidadMedida;
  int reservado;

  String precio;
  String total;
  int picking;
  int productId;
  String porcentajeDescuento;
  dynamic montoDescuento;
  dynamic tasaMoneda;
  dynamic neto;
  dynamic iva;
  dynamic bruto;
  dynamic precioUsd;
  dynamic netoUsd;
  dynamic precioBrutoUsd;
  dynamic username;
  dynamic timopp;
  dynamic listaPrecio;
  dynamic peso;
  dynamic volumen;
  int archivado;

  dynamic pickingConfirmado;

  factory BodyDetailOrdeDto.fromJson(Map<String, dynamic> json) =>
      BodyDetailOrdeDto(
        id: json["id"],
        notaventaId: json["notaventa_id"],
        codigo: json["codigo"],
        descripcion: json["descripcion"],
        estado: json["estado"],
        unidadMedida: json["unidad_medida"],
        reservado: json["reservado"],
        cantidad: json["cantidad"],
        precio: json["precio"],
        total: json["total"],
        picking: json["picking"],
        productId: json["product_id"],

        porcentajeDescuento: json["porcentaje_descuento"],
        montoDescuento: json["monto_descuento"],
        tasaMoneda: json["tasa_moneda"],
        neto: json["neto"],
        iva: json["iva"],
        bruto: json["bruto"],
        precioUsd: json["precio_usd"],
        netoUsd: json["neto_usd"],
        precioBrutoUsd: json["precio_bruto_usd"],
        username: json["username"],
        timopp: json["timopp"],
        listaPrecio: json["lista_precio"],
        peso: json["peso"],
        volumen: json["volumen"],
        archivado: json["archivado"],
        solicitudCompra: json["solicitud_compra"],
        pickingConfirmado: json["picking_confirmado"],
      );

  Map<String, dynamic> toJson() =>
      {
        "id": id,
        "notaventa_id": notaventaId,
        "codigo": codigo,
        "descripcion": descripcion,
        "estado": estado,
        "unidad_medida": unidadMedida,
        "reservado": reservado,
        "cantidad": cantidad,
        "precio": precio,
        "total": total,
        "picking": picking,
        "product_id": productId,

        "porcentaje_descuento": porcentajeDescuento,
        "monto_descuento": montoDescuento,
        "tasa_moneda": tasaMoneda,
        "neto": neto,
        "iva": iva,
        "bruto": bruto,
        "precio_usd": precioUsd,
        "neto_usd": netoUsd,
        "precio_bruto_usd": precioBrutoUsd,
        "username": username,
        "timopp": timopp,
        "lista_precio": listaPrecio,
        "peso": peso,
        "volumen": volumen,
        "archivado": archivado,
        "solicitud_compra": solicitudCompra,
        "picking_confirmado": pickingConfirmado,
      };
}
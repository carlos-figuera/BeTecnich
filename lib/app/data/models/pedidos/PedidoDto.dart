

import 'dart:convert';

PedidoDto pedidoDtoFromJson(String str) => PedidoDto.fromJson(json.decode(str));
String pedidoDtoToJson(PedidoDto data) => json.encode(data.toJson());

class PedidoDto {
    PedidoDto({
        required this.fechaDespacho,
        required  this.nombre,
        required this.ordenCompra,
        required  this.total,
    });

    String fechaDespacho;
    String nombre;
    String ordenCompra;
    String total;

    factory PedidoDto.fromJson(Map<String, dynamic> json) => PedidoDto(
        fechaDespacho: json["fecha_despacho"]??"",
        nombre: json["nombre"]??"",
        ordenCompra: json["orden_compra"]??"",
        total: json["total"]??"",
    );

    Map<String, dynamic> toJson() => {
        "fecha_despacho": fechaDespacho,
        "nombre": nombre,
        "orden_compra": ordenCompra,
        "total": total,
    };
}

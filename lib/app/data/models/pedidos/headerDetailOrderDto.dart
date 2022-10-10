import 'dart:convert';

HeaderDetailOrdeDto headerDetailOrdeDtoFromJson(String str) => HeaderDetailOrdeDto.fromJson(json.decode(str));


class HeaderDetailOrdeDto {
  HeaderDetailOrdeDto({
    required this.id,

required this.orderId,
required this.rut,
required this.razonSocial,
required this.vendedor,
required this.comentarios,
required this.estado,
required this.userId,
required this.fechaDespacho,
required this.neto,
required this.iva,
required this.margen,
required this.total,
required this.observacion,
required this.fechaEmision,
required this.formaPago,
required this.accountId,
required this.contacto,
required this.empresaId,
required this.destino,
required this.direccion,
required this.porcentajeDescuento,
required this.comuna,
required this.region,
required this.origen,
required this.volumen,
required this.peso,
required this.telefono,
required this.etapaVentas,
required this.listaPrecio,
required this.cantidad,
required this.fechaCierre,
required this.costoDespacho,
required this.transito,
required this.porConfirmarStock,
required this.fechaPedido,
required this.retorno,
required this.ordenCompra,
required this.comentariosPreparador,
required this.actualizaRegion,
required this.planerId,
required this.estadoPago,
required this.entregadoPor,
required this.ruta,
required this.telefono2,
required this.contacto2,
required this.email,
required this.email2,
required this.rutaId,
required this.estadoFacturacion,
required this.motivoRechazo,
required this.preparadorId,
  });

  int id;

  int orderId;
  String rut;
  String razonSocial;
  String vendedor;
  String comentarios;
  String estado;
  int userId;
  String fechaDespacho;
  String neto;
  dynamic iva;
  dynamic margen;
  dynamic total;
  String observacion;
  String fechaEmision;
  String formaPago;
  int accountId;
  String contacto;
  int empresaId;
  String destino;
  String direccion;
  dynamic porcentajeDescuento;
  String comuna;
  String region;
  String origen;
  dynamic volumen;
  dynamic peso;
  String telefono;
  String etapaVentas;
  dynamic listaPrecio;
  dynamic cantidad;
  dynamic fechaCierre;
  dynamic costoDespacho;
  dynamic transito;
  int porConfirmarStock;
  String fechaPedido;
  int retorno;
  String ordenCompra;
  dynamic comentariosPreparador;
  int actualizaRegion;
  dynamic planerId;
  String estadoPago;
  dynamic entregadoPor;
  dynamic ruta;
  dynamic telefono2;
  dynamic contacto2;
  dynamic email;
  dynamic email2;
  int rutaId;
  String estadoFacturacion;
  String motivoRechazo;
  dynamic preparadorId;

  factory HeaderDetailOrdeDto.fromJson(Map<String, dynamic> json) => HeaderDetailOrdeDto(
    id: json["id"],
    orderId: json["order_id"],
    rut: json["rut"],
    razonSocial: json["razon_social"],
    vendedor: json["vendedor"],
    comentarios: json["comentarios"],
    estado: json["estado"],
    userId: json["user_id"],
    fechaDespacho: json["fecha_despacho"] ,//
    neto: json["neto"],
    iva: json["iva"],
    margen: json["margen"],
    total: json["total"],
    observacion: json["observacion"],
    fechaEmision: json["fecha_emision"] ,//
    formaPago: json["forma_pago"],
    accountId: json["account_id"],
    contacto: json["contacto"],
    empresaId: json["empresa_id"],
    destino: json["destino"],
    direccion: json["direccion"],///
    porcentajeDescuento: json["porcentaje_descuento"],
    comuna: json["comuna"],
    region: json["region"],
    origen: json["origen"],
    volumen: json["volumen"],
    peso: json["peso"],
    telefono: json["telefono"],
    etapaVentas: json["etapa_ventas"],
    listaPrecio: json["lista_precio"],
    cantidad: json["cantidad"],
    fechaCierre: json["fecha_cierre"],
    costoDespacho: json["costo_despacho"],
    transito: json["transito"],
    porConfirmarStock: json["por_confirmar_stock"],
    fechaPedido: json["fecha_pedido"] ,//
    retorno: json["retorno"],
    ordenCompra: json["orden_compra"],///
    comentariosPreparador: json["comentarios_preparador"],//
    actualizaRegion: json["actualiza_region"],
    planerId: json["planer_id"],
    estadoPago: json["estado_pago"],
    entregadoPor: json["entregado_por"],
    ruta: json["ruta"],
    telefono2: json["telefono2"],
    contacto2: json["contacto2"],
    email: json["email"],
    email2: json["email2"],
    rutaId: json["ruta_id"],
    estadoFacturacion: json["estado_facturacion"],
    motivoRechazo: json["motivo_rechazo"],
    preparadorId: json["preparador_id"],
  );


}

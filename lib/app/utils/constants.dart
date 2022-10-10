
enum DocumentsTypes { DUI, NRC, NIT }
enum TypeContri { NADA,GRANDE, MEDIANO, OTRO }
enum TypePlazo {NADA, DIAS,  MESES ,ANIOS}
enum UserType {CLIENT, COMPANY,  EMPLOYEE ,PROVIDER}

enum ArticleType {BIENES, SERVICIOS,  AMBOS ,OTROS}

List<String>  preferenFac =["EXENTAS", "GRAVADAS",  "NO SUJETAS"];
List<String> afpTypes=[ "",  "CONFIA","CRECER","INPEP","UPISSS"];
class Constants {
  static const DOMAIN = "https://api.haz-conta.com/";
  static const BASEURL_RES = DOMAIN;
  static const BASEURL_GRAPHQL = DOMAIN+"/graphql";

}
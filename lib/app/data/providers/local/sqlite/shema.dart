class Squema {
  String create = '''
    CREATE TABLE "SearchStorage" (
      "id"	INTEGER NOT NULL,
      "idStorage"	INTEGER NOT NULL,
      "storageName"	TEXT NOT NULL,
      "idConstCenter"	INTEGER NOT NULL,
      "constCenterName"	TEXT NOT NULL,
      "idCompanies"	INTEGER NOT NULL,
      "user"	TEXT NOT NULL,
      "createdAt"	TEXT NOT NULL,
      PRIMARY KEY("id" AUTOINCREMENT)
    );

    CREATE TABLE "SearchGroupsArticles" (
      "id"	INTEGER NOT NULL,
      "idGroup"	INTEGER NOT NULL,
      "nameGroup"	TEXT NOT NULL,
      "idCompanies"	INTEGER NOT NULL,
      "user"	TEXT NOT NULL,
      "createdAt"	TEXT NOT NULL,
      PRIMARY KEY("id" AUTOINCREMENT)
    );
 
    
  ''';
}

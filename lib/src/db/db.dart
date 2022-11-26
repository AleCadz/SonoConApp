import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sonocon/src/models/usuarios.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DBProvider {
  static Database? _database;
  static final DBProvider db = DBProvider._();

  DBProvider._();

  Future<Database?> get database async {
    if (_database != null) return _database;

    _database = await iniDB();
    return _database;
  }

  Future<Database> iniDB() async {
    Directory? directorio = await getExternalStorageDirectory();
    final path = join(directorio!.path, "usuarios.db");
    print(path);
    return await openDatabase(
      path,
      version: 1,
      onOpen: (db) {},
      onCreate: (Database db, int version) async {
        await db.execute('''
        CREATE TABLE usuarios(id INTEGER PRIMARY KEY, nombre TEXT, contrasena TEXT, 
        correo TEXT, ciudad TEXT, apellido TEXT, estado TEXT, pais TEXT)
''');
      },
    );
  }

  Future<int> nuevoUsuario(Usuarios usuario) async {
    final db = await database;
    final res = await db!.insert("usuarios", usuario.toJson());
    return res;
  }
}

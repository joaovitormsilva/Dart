import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._instance();
  static Database? _db;

  DatabaseHelper._instance();

  String table = 'my_table';
  String colId = 'id';
  String colField1 = 'field1';
  String colField2 = 'field2';

  Future<Database> get db async {
    _db ??= await _initDb();
    return _db!;
  }

  Future<Database> _initDb() async {
    String dbPath = await getDatabasesPath();
    String path = join(dbPath, 'my_db.db');
    final myDb = await openDatabase(path, version: 1, onCreate: _createDb);
    return myDb;
  }

  void _createDb(Database db, int version) async {
    await db.execute(
        'CREATE TABLE $table($colId INTEGER PRIMARY KEY AUTOINCREMENT, $colField1 TEXT, $colField2 TEXT)');
  }

  Future<int> insert(Map<String, dynamic> row) async {
    Database db = await this.db;
    return await db.insert(table, row);
  }

  Future<List<Map<String, dynamic>>> queryAll() async {
    Database db = await this.db;
    return await db.query(table);
  }
}

final String tableUsers = 'users';
final String columnId = 'id';
final String columnName = 'name';
final String columnAge = 'age';

class DBHelper {
  static final DBHelper _instance = DBHelper._internal();

  factory DBHelper() => _instance;

  static Database? _db;

  Future<Database> get database async {
    if (_db != null) {
      return _db!;
    }
    _db = await initDb();
    return _db!;
  }

  DBHelper._internal();

  Future<Database> initDb() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'my_database.db');

    return openDatabase(path, version: 1, onCreate: _onCreate);
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE my_table (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        field1 TEXT,
        field2 TEXT
      )
    ''');
  }

  Future<int> saveData(String table, Map<String, dynamic> data) async {
    final db = await database;
    return db.insert(table, data);
  }
}

class User {
  int? id;
  String? name;
  int? age;

  User({this.id, this.name, this.age});

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      columnName: name,
      columnAge: age,
    };
    if (id != null) {
      map[columnId] = id;
    }
    return map;
  }

  User.fromMap(Map<String, dynamic> map) {
    id = map[columnId];
    name = map[columnName];
    age = map[columnAge];
  }
}

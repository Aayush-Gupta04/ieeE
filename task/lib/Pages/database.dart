import 'dart:async';
import 'dart:io';
import 'Homepage.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static DatabaseHelper _databaseHelper=DatabaseHelper();
  static Database _database ;

  String noteTable = 'Portfolio_table';
  String colimg = 'Image';
  String colname ='Name';
  String colbio ='bio';
  String colHobby1 = 'Hobby1';
  String colHobby2 = 'Hobby2';
  String colHobby3 = 'Hobby3';


  DatabaseHelper._createInstance();
  factory DatabaseHelper(){
    if (_databaseHelper == null) {
      _databaseHelper = DatabaseHelper._createInstance();
    }
    return _databaseHelper;
    }
    Future<Database> get database async {
    if (_database == null){
      _database = await initialiseDatabase();
    }
    return _database;
  }

    initialiseDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + 'PORTFOLIO.db';
    var PortfolioDatabase = await openDatabase(path, version: 1,onCreate: _createDB);
    return PortfolioDatabase;
  }

    void _createDB(Database db, int newVersion) async {
    await db.execute('CREATE TABLE $noteTable($colimg TEXT,$colname TEXT,$colbio TEXT, $colHobby1 TEXT, $colHobby2 TEXT, $colHobby3 TEXT');
    }

    Future insertPF() async{
    Database db =await this.database;
    var result = await db.insert(noteTable, nextpage.toMap());
    return result;
    }

  Future<List<Map<String, dynamic>>> getNoteMapList() async {
    Database db = await this.database;

    var result = await db.query(noteTable);
    return result;
  }



    
  }

.class public final Lcom/jodo/pccs3/c/a;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "pccs.db"

    const/4 v1, 0x0

    const/16 v2, 0x15

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS tbl_chat (msg_id INTEGER PRIMARY KEY AUTOINCREMENT,msg_conversation VARCHAR,msg_type INTEGER,msg_content VARCHAR,create_time1 INTEGER,create_time2 INTEGER, is_send INTEGER,param VARCHAR,status INTEGER,is_cached INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS tbl_chat"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS tbl_chat (msg_id INTEGER PRIMARY KEY AUTOINCREMENT,msg_conversation VARCHAR,msg_type INTEGER,msg_content VARCHAR,create_time1 INTEGER,create_time2 INTEGER, is_send INTEGER,param VARCHAR,status INTEGER,is_cached INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

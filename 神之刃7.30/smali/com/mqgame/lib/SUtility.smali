.class public Lcom/mqgame/lib/SUtility;
.super Ljava/lang/Object;
.source "SUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mqgame/lib/SUtility$SCMDExecute;,
        Lcom/mqgame/lib/SUtility$SIniReader;
    }
.end annotation


# static fields
.field public static CurABI:Ljava/lang/String;

.field public static DefaultBrightness:I

.field public static SAT_DEFAULT_ABI:Ljava/lang/String;

.field public static SAT_DOWNLOAD_TRYTIMES:I

.field public static SNET_MOBILE:I

.field public static SNET_NULL:I

.field public static SNET_WIFI:I

.field public static UserBrightness:I

.field public static gCurActivity:Landroid/app/Activity;

.field public static gMem:I

.field public static gSupperVersion:Z

.field public static gbatteryP:I

.field public static gbatteryStatus:I

.field public static gbatteryTemperature:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    const-string v0, "armeabi-v7a"

    sput-object v0, Lcom/mqgame/lib/SUtility;->SAT_DEFAULT_ABI:Ljava/lang/String;

    .line 89
    const-string v0, ""

    sput-object v0, Lcom/mqgame/lib/SUtility;->CurABI:Ljava/lang/String;

    .line 90
    const/16 v0, 0x14

    sput v0, Lcom/mqgame/lib/SUtility;->SAT_DOWNLOAD_TRYTIMES:I

    .line 92
    const/4 v0, 0x0

    sput-object v0, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    .line 95
    const/4 v0, -0x1

    sput v0, Lcom/mqgame/lib/SUtility;->UserBrightness:I

    .line 96
    const/16 v0, 0xc8

    sput v0, Lcom/mqgame/lib/SUtility;->DefaultBrightness:I

    .line 98
    sput-boolean v1, Lcom/mqgame/lib/SUtility;->gSupperVersion:Z

    .line 99
    sput v1, Lcom/mqgame/lib/SUtility;->gMem:I

    .line 2286
    sput v1, Lcom/mqgame/lib/SUtility;->SNET_NULL:I

    .line 2287
    const/4 v0, 0x1

    sput v0, Lcom/mqgame/lib/SUtility;->SNET_WIFI:I

    .line 2288
    const/4 v0, 0x2

    sput v0, Lcom/mqgame/lib/SUtility;->SNET_MOBILE:I

    .line 2290
    const/16 v0, 0x64

    sput v0, Lcom/mqgame/lib/SUtility;->gbatteryP:I

    .line 2291
    const/4 v0, 0x5

    sput v0, Lcom/mqgame/lib/SUtility;->gbatteryStatus:I

    .line 2292
    sput v1, Lcom/mqgame/lib/SUtility;->gbatteryTemperature:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1607
    return-void
.end method

.method public static UploadReport()V
    .locals 19

    .prologue
    .line 1225
    :try_start_0
    const-string v16, "SOG"

    const-string v17, "sog_debug:startupdate log"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    sget-object v16, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    invoke-static/range {v16 .. v16}, Lcom/mqgame/lib/SUtility;->getDumpURL(Landroid/app/Activity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v13

    .line 1230
    .local v13, "uploadUrl":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Lcom/mqgame/lib/SUtility;->dumpError()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    .line 1239
    :goto_0
    :try_start_2
    const-string v16, "SOG"

    const-string v17, "sog_debug:dump ready log"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    sget-object v16, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    const-string v17, "phone"

    invoke-virtual/range {v16 .. v17}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    .line 1242
    .local v11, "tm":Landroid/telephony/TelephonyManager;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mqgame/lib/SUtility;->getGameVersion()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "_report_android"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1243
    .local v4, "dmpKeyName":Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mqgame/lib/SUtility;->getDataPath()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ".zip"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1245
    .local v6, "dmpZipName":Ljava/lang/String;
    new-instance v15, Ljava/util/LinkedList;

    invoke-direct {v15}, Ljava/util/LinkedList;-><init>()V

    .line 1246
    .local v15, "zipList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/LinkedList;

    invoke-direct {v14}, Ljava/util/LinkedList;-><init>()V

    .line 1247
    .local v14, "zipEntryList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    .line 1249
    .local v12, "toRmv":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    new-instance v9, Ljava/io/File;

    invoke-static {}, Lcom/mqgame/lib/SUtility;->getLogPath()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1250
    .local v9, "logFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 1251
    const-string v16, "SOG:"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Dump prepare:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    invoke-static {}, Lcom/mqgame/lib/SUtility;->getLogPath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 1253
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ".log"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 1256
    :cond_0
    invoke-static {}, Lcom/mqgame/lib/SUtility;->getDumpPath()Ljava/lang/String;

    move-result-object v2

    .line 1257
    .local v2, "dmpDir":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1259
    .local v3, "dmpDirOper":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .line 1260
    .local v8, "files":[Ljava/io/File;
    if-eqz v8, :cond_1

    .line 1261
    const/4 v10, 0x0

    .local v10, "nIdx":I
    :goto_1
    array-length v0, v8

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v10, v0, :cond_1

    .line 1262
    aget-object v1, v8, v10

    .line 1263
    .local v1, "cur":Ljava/io/File;
    const-string v16, "SOG:"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Dump prepare:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 1265
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 1261
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1232
    .end local v1    # "cur":Ljava/io/File;
    .end local v2    # "dmpDir":Ljava/lang/String;
    .end local v3    # "dmpDirOper":Ljava/io/File;
    .end local v4    # "dmpKeyName":Ljava/lang/String;
    .end local v6    # "dmpZipName":Ljava/lang/String;
    .end local v8    # "files":[Ljava/io/File;
    .end local v9    # "logFile":Ljava/io/File;
    .end local v10    # "nIdx":I
    .end local v11    # "tm":Landroid/telephony/TelephonyManager;
    .end local v12    # "toRmv":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v14    # "zipEntryList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v15    # "zipList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :catch_0
    move-exception v7

    .line 1233
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    .line 1288
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 1289
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 1294
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 1235
    :catch_2
    move-exception v7

    .line 1236
    .local v7, "e":Ljava/lang/Error;
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Error;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 1291
    .end local v7    # "e":Ljava/lang/Error;
    :catch_3
    move-exception v7

    .line 1292
    .restart local v7    # "e":Ljava/lang/Error;
    invoke-virtual {v7}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_2

    .line 1269
    .end local v7    # "e":Ljava/lang/Error;
    .restart local v2    # "dmpDir":Ljava/lang/String;
    .restart local v3    # "dmpDirOper":Ljava/io/File;
    .restart local v4    # "dmpKeyName":Ljava/lang/String;
    .restart local v6    # "dmpZipName":Ljava/lang/String;
    .restart local v8    # "files":[Ljava/io/File;
    .restart local v9    # "logFile":Ljava/io/File;
    .restart local v11    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v12    # "toRmv":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .restart local v14    # "zipEntryList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .restart local v15    # "zipList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :cond_1
    :try_start_4
    invoke-static {v15, v14, v6}, Lcom/mqgame/lib/SUtility;->zipFiles(Ljava/util/LinkedList;Ljava/util/LinkedList;Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 1270
    const-string v16, "SaturnDump:"

    const-string v17, "Zip failed"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1275
    :cond_2
    invoke-static {v6, v13}, Lcom/mqgame/lib/SUtility;->httpUpload(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 1276
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1277
    .local v5, "dmpZip":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 1278
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1280
    :cond_3
    const-string v16, "SOG:"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Dump uploadined:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    invoke-static {v12}, Lcom/mqgame/lib/SUtility;->delFiles(Ljava/util/LinkedList;)Z

    goto :goto_2

    .line 1284
    .end local v5    # "dmpZip":Ljava/io/File;
    :cond_4
    const-string v16, "SOG"

    const-string v17, "sog_debug:upload log failed"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2
.end method

.method public static appContain(Ljava/util/Set;Ljava/util/Set;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 920
    .local p0, "ls":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p1, "filter":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 921
    const-string v3, ""

    .line 942
    :goto_0
    return-object v3

    .line 923
    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 924
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 926
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 927
    .local v3, "lCurModule":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 928
    .local v2, "itOther":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 929
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 930
    .local v4, "lOther":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 935
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "itOther":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "lCurModule":Ljava/lang/String;
    .end local v4    # "lOther":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 936
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 942
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_1
    const-string v3, ""

    goto :goto_0

    .line 938
    :catch_1
    move-exception v0

    .line 939
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_1
.end method

.method public static appendLog(Ljava/lang/String;)V
    .locals 5
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 1026
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/mqgame/lib/SUtility;->getLogPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1027
    .local v2, "logFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1031
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1041
    :cond_0
    :goto_0
    :try_start_1
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 1042
    .local v0, "buf":Ljava/io/BufferedWriter;
    invoke-virtual {v0, p0}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1043
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 1044
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1050
    .end local v0    # "buf":Ljava/io/BufferedWriter;
    :goto_1
    return-void

    .line 1033
    :catch_0
    move-exception v1

    .line 1035
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1046
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 1048
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static applyScreenMode(I)V
    .locals 3
    .param p0, "nMode"    # I

    .prologue
    const/4 v2, 0x6

    .line 2045
    packed-switch p0, :pswitch_data_0

    .line 2077
    :goto_0
    return-void

    .line 2048
    :pswitch_0
    :try_start_0
    sget v1, Lcom/mqgame/lib/SUtility;->DefaultBrightness:I

    invoke-static {v1}, Lcom/mqgame/lib/SUtility;->setScreenBrightness(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2071
    :catch_0
    move-exception v0

    .line 2072
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2055
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    sget v1, Lcom/mqgame/lib/SUtility;->DefaultBrightness:I

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lcom/mqgame/lib/SUtility;->setScreenBrightness(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2074
    :catch_1
    move-exception v0

    .line 2075
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0

    .line 2062
    .end local v0    # "e":Ljava/lang/Error;
    :pswitch_2
    :try_start_2
    sget v1, Lcom/mqgame/lib/SUtility;->DefaultBrightness:I

    div-int/lit8 v1, v1, 0x4

    if-ge v2, v1, :cond_0

    .line 2063
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/mqgame/lib/SUtility;->setScreenBrightness(I)V

    goto :goto_0

    .line 2065
    :cond_0
    sget v1, Lcom/mqgame/lib/SUtility;->DefaultBrightness:I

    div-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Lcom/mqgame/lib/SUtility;->setScreenBrightness(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 2045
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static chkABIInLaw(Ljava/lang/String;)Z
    .locals 2
    .param p0, "szABI"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 463
    const-string v1, "armeabi"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 464
    const-string v1, "armeabi-v7a"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "armeabi"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 466
    :cond_0
    :goto_0
    return v0

    .line 464
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static chkDumpDir()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1461
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/mqgame/lib/SUtility;->getDumpPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1462
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1463
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1469
    :cond_0
    :goto_0
    return v1

    .line 1467
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static chkRunningAntiApp()V
    .locals 19

    .prologue
    .line 946
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 947
    .local v14, "walkTimeBegin":J
    invoke-static {}, Lcom/mqgame/lib/SUtility;->listRunningApp()Ljava/util/Set;

    move-result-object v11

    .line 948
    .local v11, "lsRunning":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/mqgame/lib/SUtility;->listFilterApp()Ljava/util/Set;

    move-result-object v10

    .line 949
    .local v10, "lsFilter":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v11, v10}, Lcom/mqgame/lib/SUtility;->appContain(Ljava/util/Set;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v13

    .line 950
    .local v13, "res":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 951
    .local v16, "walkTimeEnd":J
    const-string v0, "TotalAntiTime"

    const-string v1, "sog AntiAppTime:%d nTotalCnt:%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sub-long v4, v16, v14

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 995
    :goto_0
    return-void

    .line 958
    :cond_0
    :try_start_0
    sget-object v0, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/mqgame/lib/SComMessage;->getShowableContex(Landroid/app/Activity;)Landroid/content/Context;

    move-result-object v7

    .line 959
    .local v7, "ctx":Landroid/content/Context;
    if-eqz v7, :cond_1

    .line 960
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 961
    sget-object v0, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    const v1, 0x7f090149

    const/4 v2, 0x0

    const v3, 0x7f090124

    sget-object v4, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f090156

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v13, v5, v18

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/mqgame/lib/SComMessage;->showComMessage(Landroid/content/Context;IIILjava/lang/String;Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 966
    .local v6, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .line 967
    .local v8, "dlg":Landroid/app/AlertDialog;
    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 969
    new-instance v12, Lcom/mqgame/lib/SUtility$2;

    invoke-direct {v12}, Lcom/mqgame/lib/SUtility$2;-><init>()V

    .line 974
    .local v12, "mHandler":Landroid/os/Handler;
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    .line 985
    .end local v6    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v7    # "ctx":Landroid/content/Context;
    .end local v8    # "dlg":Landroid/app/AlertDialog;
    .end local v12    # "mHandler":Landroid/os/Handler;
    :cond_1
    :goto_1
    :try_start_1
    sget-object v0, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 986
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 988
    :catch_0
    move-exception v9

    .line 989
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 977
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v9

    .line 978
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 980
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v9

    .line 981
    .local v9, "e":Ljava/lang/Error;
    invoke-virtual {v9}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_1

    .line 991
    .end local v9    # "e":Ljava/lang/Error;
    :catch_3
    move-exception v9

    .line 992
    .restart local v9    # "e":Ljava/lang/Error;
    invoke-virtual {v9}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method

.method public static chkUploadingDmp()V
    .locals 6

    .prologue
    .line 1201
    :try_start_0
    sget-object v4, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/mqgame/lib/SUtility;->getDumpURL(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    .line 1202
    .local v3, "uploadUrl":Ljava/lang/String;
    invoke-static {}, Lcom/mqgame/lib/SUtility;->getDumpPath()Ljava/lang/String;

    move-result-object v0

    .line 1203
    .local v0, "dmpDir":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1204
    .local v1, "dmpDirOper":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1220
    .end local v0    # "dmpDir":Ljava/lang/String;
    .end local v1    # "dmpDirOper":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 1207
    .restart local v0    # "dmpDir":Ljava/lang/String;
    .restart local v1    # "dmpDirOper":Ljava/io/File;
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 1208
    .local v2, "files":[Ljava/io/File;
    array-length v4, v2

    if-eqz v4, :cond_0

    .line 1212
    invoke-static {}, Lcom/mqgame/lib/SUtility;->getNetState()I

    move-result v4

    sget v5, Lcom/mqgame/lib/SUtility;->SNET_WIFI:I

    if-ne v4, v5, :cond_0

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/mqgame/lib/SUtility;->httpUpload(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1213
    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1216
    .end local v0    # "dmpDir":Ljava/lang/String;
    .end local v1    # "dmpDirOper":Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 1218
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public static delFiles(Ljava/util/LinkedList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "fileList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 1437
    :try_start_0
    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1438
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1439
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1440
    .local v3, "lcurFile":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1441
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1442
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1445
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "lcurFile":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1446
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1453
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return v4

    .line 1449
    :catch_1
    move-exception v0

    .line 1450
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_1

    .line 1453
    .end local v0    # "e":Ljava/lang/Error;
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public static deleteDirectory(Ljava/io/File;Ljava/lang/String;)V
    .locals 5
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "except"    # Ljava/lang/String;

    .prologue
    .line 1474
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1476
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 1477
    .local v1, "children":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_4

    .line 1479
    new-instance v0, Ljava/io/File;

    aget-object v4, v1, v3

    invoke-direct {v0, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1480
    .local v0, "child":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1481
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1482
    :cond_0
    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/mqgame/lib/SUtility;->deleteDirectory(Ljava/io/File;Ljava/lang/String;)V

    .line 1483
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1477
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1486
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 1492
    .end local v0    # "child":Ljava/io/File;
    .end local v1    # "children":[Ljava/lang/String;
    .end local v3    # "i":I
    :catch_0
    move-exception v2

    .line 1493
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1498
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    return-void

    .line 1489
    .restart local v1    # "children":[Ljava/lang/String;
    .restart local v3    # "i":I
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1495
    .end local v1    # "children":[Ljava/lang/String;
    .end local v3    # "i":I
    :catch_1
    move-exception v2

    .line 1496
    .local v2, "e":Ljava/lang/Error;
    invoke-virtual {v2}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_2
.end method

.method public static dumpError()V
    .locals 23

    .prologue
    .line 1701
    :try_start_0
    sget-object v20, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    if-eqz v20, :cond_0

    .line 1702
    sget-object v20, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/mqgame/lib/SUtility;->takeScreenShot(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 1712
    :cond_0
    :goto_0
    const-string v11, "Phone Info:.................................\n"

    .line 1714
    .local v11, "logText":Ljava/lang/String;
    :try_start_1
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "Product: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1715
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "CPU_ABI: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1716
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "TAGS: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1717
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "VERSION_CODES.BASE: 1\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1718
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "MODEL: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1719
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "VERSION.RELEASE: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1720
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "DEVICE: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1721
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "DISPLAY: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1722
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "BRAND: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1723
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "BOARD: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1724
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "FINGERPRINT: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1725
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "ID: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1726
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "MANUFACTURER: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1727
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "USER: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v11

    .line 1737
    :goto_1
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Lcom/mqgame/lib/SUtility;->dumpInstalledApp()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1741
    :try_start_2
    sget-object v20, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    const-string v21, "phone"

    invoke-virtual/range {v20 .. v21}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/telephony/TelephonyManager;

    .line 1742
    .local v17, "tm":Landroid/telephony/TelephonyManager;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "DeviceId(IMEI) = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1743
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "DeviceSoftwareVersion = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1744
    sget-object v20, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v20

    move-object/from16 v0, v20

    iget v12, v0, Landroid/content/res/Configuration;->mcc:I

    .line 1745
    .local v12, "mcc":I
    sget-object v20, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v20

    move-object/from16 v0, v20

    iget v13, v0, Landroid/content/res/Configuration;->mnc:I

    .line 1746
    .local v13, "mnc":I
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "IMSI MCC (Mobile Country Code): "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1747
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "IMSI MNC (Mobile Network Code): "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v11

    .line 1757
    .end local v12    # "mcc":I
    .end local v13    # "mnc":I
    .end local v17    # "tm":Landroid/telephony/TelephonyManager;
    :goto_2
    new-instance v4, Lcom/mqgame/lib/SUtility$SCMDExecute;

    invoke-direct {v4}, Lcom/mqgame/lib/SUtility$SCMDExecute;-><init>()V

    .line 1759
    .local v4, "cmdExc":Lcom/mqgame/lib/SUtility$SCMDExecute;
    const/16 v20, 0x2

    :try_start_3
    move/from16 v0, v20

    new-array v3, v0, [Ljava/lang/String;

    const/16 v20, 0x0

    const-string v21, "/system/bin/cat"

    aput-object v21, v3, v20

    const/16 v20, 0x1

    const-string v21, "/proc/cpuinfo"

    aput-object v21, v3, v20

    .line 1760
    .local v3, "args":[Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "CPUInfo:.....................................\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/system/bin/"

    move-object/from16 v0, v21

    invoke-virtual {v4, v3, v0}, Lcom/mqgame/lib/SUtility$SCMDExecute;->run([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_7

    move-result-object v11

    .line 1770
    .end local v3    # "args":[Ljava/lang/String;
    :goto_3
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1775
    :try_start_4
    new-instance v5, Lcom/mqgame/lib/SUtility$SCMDExecute;

    invoke-direct {v5}, Lcom/mqgame/lib/SUtility$SCMDExecute;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_9

    .line 1776
    .end local v4    # "cmdExc":Lcom/mqgame/lib/SUtility$SCMDExecute;
    .local v5, "cmdExc":Lcom/mqgame/lib/SUtility$SCMDExecute;
    const/16 v20, 0x6

    :try_start_5
    move/from16 v0, v20

    new-array v3, v0, [Ljava/lang/String;

    const/16 v20, 0x0

    const-string v21, "logcat"

    aput-object v21, v3, v20

    const/16 v20, 0x1

    const-string v21, "-d"

    aput-object v21, v3, v20

    const/16 v20, 0x2

    const-string v21, "-t"

    aput-object v21, v3, v20

    const/16 v20, 0x3

    const-string v21, "500"

    aput-object v21, v3, v20

    const/16 v20, 0x4

    const-string v21, "-v"

    aput-object v21, v3, v20

    const/16 v20, 0x5

    const-string v21, "threadtime"

    aput-object v21, v3, v20

    .line 1777
    .restart local v3    # "args":[Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "Logcat:.....................................\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/system/bin/"

    move-object/from16 v0, v21

    invoke-virtual {v5, v3, v0}, Lcom/mqgame/lib/SUtility$SCMDExecute;->run([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_12
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_11

    move-result-object v11

    .line 1790
    .end local v3    # "args":[Ljava/lang/String;
    .end local v5    # "cmdExc":Lcom/mqgame/lib/SUtility$SCMDExecute;
    :goto_4
    new-instance v4, Lcom/mqgame/lib/SUtility$SCMDExecute;

    invoke-direct {v4}, Lcom/mqgame/lib/SUtility$SCMDExecute;-><init>()V

    .line 1792
    .restart local v4    # "cmdExc":Lcom/mqgame/lib/SUtility$SCMDExecute;
    const/16 v20, 0x2

    :try_start_6
    move/from16 v0, v20

    new-array v3, v0, [Ljava/lang/String;

    const/16 v20, 0x0

    const-string v21, "/system/bin/cat"

    aput-object v21, v3, v20

    const/16 v20, 0x1

    const-string v21, "/proc/meminfo"

    aput-object v21, v3, v20

    .line 1793
    .restart local v3    # "args":[Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "MemInfo:.....................................\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/system/bin/"

    move-object/from16 v0, v21

    invoke-virtual {v4, v3, v0}, Lcom/mqgame/lib/SUtility$SCMDExecute;->run([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1796
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1797
    sget-object v20, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    const-string v21, "activity"

    invoke-virtual/range {v20 .. v21}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 1798
    .local v2, "activityManager":Landroid/app/ActivityManager;
    new-instance v14, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v14}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 1799
    .local v14, "outInfo":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v2, v14}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 1800
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "Total Available Memory :"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Lcom/mqgame/lib/SUtility;->getTotalMemory()J

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "k\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1801
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "In low memory situation:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-boolean v0, v14, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1802
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_b

    move-result-object v11

    .line 1815
    .end local v2    # "activityManager":Landroid/app/ActivityManager;
    .end local v3    # "args":[Ljava/lang/String;
    .end local v14    # "outInfo":Landroid/app/ActivityManager$MemoryInfo;
    :goto_5
    :try_start_7
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "Display:......................................\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1816
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1817
    .local v7, "dm":Landroid/util/DisplayMetrics;
    sget-object v20, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 1818
    iget v0, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v16, v0

    .line 1819
    .local v16, "screenWidth":I
    iget v15, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1820
    .local v15, "screenHeight":I
    iget v6, v7, Landroid/util/DisplayMetrics;->density:F

    .line 1821
    .local v6, "density":F
    iget v0, v7, Landroid/util/DisplayMetrics;->xdpi:F

    move/from16 v18, v0

    .line 1822
    .local v18, "xdpi":F
    iget v0, v7, Landroid/util/DisplayMetrics;->ydpi:F

    move/from16 v19, v0

    .line 1823
    .local v19, "ydpi":F
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "The absolute width: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "pixels\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1824
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "The absolute heightin: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "pixels\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1825
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "The logical density of the display. : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1826
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "X dimension : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "pixels per inch\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1827
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "Y dimension : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "pixels per inch\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_d

    move-result-object v11

    .line 1836
    .end local v6    # "density":F
    .end local v7    # "dm":Landroid/util/DisplayMetrics;
    .end local v15    # "screenHeight":I
    .end local v16    # "screenWidth":I
    .end local v18    # "xdpi":F
    .end local v19    # "ydpi":F
    :goto_6
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "PakageVersion:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    invoke-static/range {v21 .. v21}, Lcom/mqgame/lib/SUtility;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1840
    :try_start_8
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-static {}, Lcom/mqgame/lib/SUtility;->getLogPath()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v10, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 1841
    .local v10, "fStream":Ljava/io/OutputStream;
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1842
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V

    .line 1843
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_f
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_10

    .line 1858
    .end local v10    # "fStream":Ljava/io/OutputStream;
    :goto_7
    return-void

    .line 1704
    .end local v4    # "cmdExc":Lcom/mqgame/lib/SUtility$SCMDExecute;
    .end local v11    # "logText":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1705
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1707
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v8

    .line 1708
    .local v8, "e":Ljava/lang/Error;
    invoke-virtual {v8}, Ljava/lang/Error;->printStackTrace()V

    goto/16 :goto_0

    .line 1729
    .end local v8    # "e":Ljava/lang/Error;
    .restart local v11    # "logText":Ljava/lang/String;
    :catch_2
    move-exception v8

    .line 1730
    .local v8, "e":Ljava/lang/Exception;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1734
    goto/16 :goto_1

    .line 1732
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v8

    .line 1733
    .local v8, "e":Ljava/lang/Error;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v8}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 1749
    .end local v8    # "e":Ljava/lang/Error;
    :catch_4
    move-exception v8

    .line 1750
    .local v8, "e":Ljava/lang/Exception;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1754
    goto/16 :goto_2

    .line 1752
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v8

    .line 1753
    .local v8, "e":Ljava/lang/Error;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v8}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_2

    .line 1763
    .end local v8    # "e":Ljava/lang/Error;
    .restart local v4    # "cmdExc":Lcom/mqgame/lib/SUtility$SCMDExecute;
    :catch_6
    move-exception v9

    .line 1764
    .local v9, "ex":Ljava/io/IOException;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v9}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1768
    goto/16 :goto_3

    .line 1766
    .end local v9    # "ex":Ljava/io/IOException;
    :catch_7
    move-exception v8

    .line 1767
    .restart local v8    # "e":Ljava/lang/Error;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v8}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_3

    .line 1780
    .end local v8    # "e":Ljava/lang/Error;
    :catch_8
    move-exception v8

    .line 1781
    .local v8, "e":Ljava/lang/Exception;
    :goto_8
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1785
    goto/16 :goto_4

    .line 1783
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_9
    move-exception v8

    .line 1784
    .local v8, "e":Ljava/lang/Error;
    :goto_9
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v8}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_4

    .line 1804
    .end local v8    # "e":Ljava/lang/Error;
    :catch_a
    move-exception v9

    .line 1805
    .restart local v9    # "ex":Ljava/io/IOException;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v9}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1809
    goto/16 :goto_5

    .line 1807
    .end local v9    # "ex":Ljava/io/IOException;
    :catch_b
    move-exception v8

    .line 1808
    .restart local v8    # "e":Ljava/lang/Error;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v8}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_5

    .line 1829
    .end local v8    # "e":Ljava/lang/Error;
    :catch_c
    move-exception v8

    .line 1830
    .local v8, "e":Ljava/lang/Exception;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1834
    goto/16 :goto_6

    .line 1832
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_d
    move-exception v8

    .line 1833
    .local v8, "e":Ljava/lang/Error;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v8}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_6

    .line 1845
    .end local v8    # "e":Ljava/lang/Error;
    :catch_e
    move-exception v8

    .line 1846
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 1847
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1857
    goto/16 :goto_7

    .line 1850
    .end local v8    # "e":Ljava/io/IOException;
    :catch_f
    move-exception v8

    .line 1851
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 1852
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1857
    goto/16 :goto_7

    .line 1854
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_10
    move-exception v8

    .line 1855
    .local v8, "e":Ljava/lang/Error;
    invoke-virtual {v8}, Ljava/lang/Error;->printStackTrace()V

    .line 1856
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v8}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_7

    .line 1783
    .end local v4    # "cmdExc":Lcom/mqgame/lib/SUtility$SCMDExecute;
    .end local v8    # "e":Ljava/lang/Error;
    .restart local v5    # "cmdExc":Lcom/mqgame/lib/SUtility$SCMDExecute;
    :catch_11
    move-exception v8

    move-object v4, v5

    .end local v5    # "cmdExc":Lcom/mqgame/lib/SUtility$SCMDExecute;
    .restart local v4    # "cmdExc":Lcom/mqgame/lib/SUtility$SCMDExecute;
    goto/16 :goto_9

    .line 1780
    .end local v4    # "cmdExc":Lcom/mqgame/lib/SUtility$SCMDExecute;
    .restart local v5    # "cmdExc":Lcom/mqgame/lib/SUtility$SCMDExecute;
    :catch_12
    move-exception v8

    move-object v4, v5

    .end local v5    # "cmdExc":Lcom/mqgame/lib/SUtility$SCMDExecute;
    .restart local v4    # "cmdExc":Lcom/mqgame/lib/SUtility$SCMDExecute;
    goto/16 :goto_8
.end method

.method public static dumpInstalledApp()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1109
    const-string v4, "Install apps:\n"

    .line 1111
    .local v4, "res":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/mqgame/lib/SUtility;->listInstalledApp()Ljava/util/List;

    move-result-object v3

    .line 1112
    .local v3, "ls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 1113
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1114
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1116
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1117
    .local v2, "lCurModule":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 1118
    goto :goto_0

    .line 1121
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "lCurModule":Ljava/lang/String;
    .end local v3    # "ls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 1122
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1127
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-object v4

    .line 1124
    :catch_1
    move-exception v0

    .line 1125
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_1
.end method

.method public static dumpRunningApp()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1087
    const-string v4, "Running apps:\n"

    .line 1089
    .local v4, "res":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/mqgame/lib/SUtility;->listRunningApp()Ljava/util/Set;

    move-result-object v3

    .line 1090
    .local v3, "ls":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 1091
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1092
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1094
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1095
    .local v2, "lCurModule":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 1096
    goto :goto_0

    .line 1099
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "lCurModule":Ljava/lang/String;
    .end local v3    # "ls":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 1100
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1105
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-object v4

    .line 1102
    :catch_1
    move-exception v0

    .line 1103
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_1
.end method

.method public static editWaitP(II)V
    .locals 8
    .param p0, "nCurrent"    # I
    .param p1, "nTotal"    # I

    .prologue
    .line 2129
    :try_start_0
    sget-object v0, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    check-cast v0, Lcom/mqgame/lib/SNativeActivity;

    .line 2130
    .local v0, "Native":Lcom/mqgame/lib/SNativeActivity;
    iget-object v3, v0, Lcom/mqgame/lib/SNativeActivity;->vWait:Lcom/mqgame/lib/SWait;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/mqgame/lib/SNativeActivity;->vWait:Lcom/mqgame/lib/SWait;

    invoke-virtual {v3}, Lcom/mqgame/lib/SWait;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2131
    :cond_0
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/mqgame/lib/SUtility;->showWait(Z)V

    .line 2133
    :cond_1
    const-string v3, "%s %d/%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f090153

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2134
    .local v2, "showResult":Ljava/lang/String;
    iget-object v3, v0, Lcom/mqgame/lib/SNativeActivity;->vWait:Lcom/mqgame/lib/SWait;

    invoke-virtual {v3, v2}, Lcom/mqgame/lib/SWait;->setTxt(Ljava/lang/String;)V

    .line 2135
    const-string v3, "sog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "engine prepare:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    .line 2166
    .end local v0    # "Native":Lcom/mqgame/lib/SNativeActivity;
    .end local v2    # "showResult":Ljava/lang/String;
    :goto_0
    return-void

    .line 2138
    :catch_0
    move-exception v1

    .line 2139
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "sog"

    const-string v4, "editWaitP failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2149
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_1
    sget-object v0, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    check-cast v0, Lcom/mqgame/lib/SNativeActivity;

    .line 2150
    .restart local v0    # "Native":Lcom/mqgame/lib/SNativeActivity;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/mqgame/lib/SNativeActivity;->showWait(Z)V

    .line 2151
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/mqgame/lib/SUtility;->showWait(Z)V

    .line 2153
    const-string v3, "%s %d/%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f090153

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2154
    .restart local v2    # "showResult":Ljava/lang/String;
    iget-object v3, v0, Lcom/mqgame/lib/SNativeActivity;->vWait:Lcom/mqgame/lib/SWait;

    invoke-virtual {v3, v2}, Lcom/mqgame/lib/SWait;->setTxt(Ljava/lang/String;)V

    .line 2155
    const-string v3, "sog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "engine prepare:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 2158
    .end local v0    # "Native":Lcom/mqgame/lib/SNativeActivity;
    .end local v2    # "showResult":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 2159
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v3, "sog"

    const-string v4, "editWaitP failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2142
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 2143
    .local v1, "e":Ljava/lang/Error;
    const-string v3, "sog"

    const-string v4, "editWaitP failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_1

    .line 2162
    .end local v1    # "e":Ljava/lang/Error;
    :catch_3
    move-exception v1

    .line 2163
    .restart local v1    # "e":Ljava/lang/Error;
    const-string v3, "sog"

    const-string v4, "editWaitP failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method

.method public static native excFromUIThread(Ljava/lang/String;)V
.end method

.method public static executeHttpGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "szURL"    # Ljava/lang/String;

    .prologue
    .line 213
    const/4 v7, 0x0

    .line 214
    .local v7, "result":Ljava/lang/String;
    const/4 v9, 0x0

    .line 215
    .local v9, "url":Ljava/net/URL;
    const/4 v2, 0x0

    .line 216
    .local v2, "connection":Ljava/net/HttpURLConnection;
    const/4 v4, 0x0

    .line 218
    .local v4, "in":Ljava/io/InputStreamReader;
    :try_start_0
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    .end local v9    # "url":Ljava/net/URL;
    .local v10, "url":Ljava/net/URL;
    :try_start_1
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 220
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 221
    .end local v4    # "in":Ljava/io/InputStreamReader;
    .local v5, "in":Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 222
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 223
    .local v8, "strBuffer":Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    .line 224
    .local v6, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 225
    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 228
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "line":Ljava/lang/String;
    .end local v8    # "strBuffer":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v3

    move-object v4, v5

    .end local v5    # "in":Ljava/io/InputStreamReader;
    .restart local v4    # "in":Ljava/io/InputStreamReader;
    move-object v9, v10

    .line 229
    .end local v10    # "url":Ljava/net/URL;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v9    # "url":Ljava/net/URL;
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 234
    if-eqz v2, :cond_0

    .line 235
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 237
    :cond_0
    if-eqz v4, :cond_1

    .line 239
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 245
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    return-object v7

    .line 227
    .end local v4    # "in":Ljava/io/InputStreamReader;
    .end local v9    # "url":Ljava/net/URL;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "in":Ljava/io/InputStreamReader;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v8    # "strBuffer":Ljava/lang/StringBuffer;
    .restart local v10    # "url":Ljava/net/URL;
    :cond_2
    :try_start_5
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v7

    .line 234
    if-eqz v2, :cond_3

    .line 235
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 237
    :cond_3
    if-eqz v5, :cond_7

    .line 239
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    move-object v4, v5

    .end local v5    # "in":Ljava/io/InputStreamReader;
    .restart local v4    # "in":Ljava/io/InputStreamReader;
    move-object v9, v10

    .line 242
    .end local v10    # "url":Ljava/net/URL;
    .restart local v9    # "url":Ljava/net/URL;
    goto :goto_2

    .line 240
    .end local v4    # "in":Ljava/io/InputStreamReader;
    .end local v9    # "url":Ljava/net/URL;
    .restart local v5    # "in":Ljava/io/InputStreamReader;
    .restart local v10    # "url":Ljava/net/URL;
    :catch_1
    move-exception v3

    .line 241
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .end local v5    # "in":Ljava/io/InputStreamReader;
    .restart local v4    # "in":Ljava/io/InputStreamReader;
    move-object v9, v10

    .line 242
    .end local v10    # "url":Ljava/net/URL;
    .restart local v9    # "url":Ljava/net/URL;
    goto :goto_2

    .line 240
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "line":Ljava/lang/String;
    .end local v8    # "strBuffer":Ljava/lang/StringBuffer;
    .local v3, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    .line 241
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 231
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 232
    .local v3, "e":Ljava/lang/Error;
    :goto_3
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/Error;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 234
    if-eqz v2, :cond_4

    .line 235
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 237
    :cond_4
    if-eqz v4, :cond_1

    .line 239
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_2

    .line 240
    :catch_4
    move-exception v3

    .line 241
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 234
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    :goto_4
    if-eqz v2, :cond_5

    .line 235
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 237
    :cond_5
    if-eqz v4, :cond_6

    .line 239
    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 242
    :cond_6
    :goto_5
    throw v11

    .line 240
    :catch_5
    move-exception v3

    .line 241
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 234
    .end local v3    # "e":Ljava/io/IOException;
    .end local v9    # "url":Ljava/net/URL;
    .restart local v10    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v11

    move-object v9, v10

    .end local v10    # "url":Ljava/net/URL;
    .restart local v9    # "url":Ljava/net/URL;
    goto :goto_4

    .end local v4    # "in":Ljava/io/InputStreamReader;
    .end local v9    # "url":Ljava/net/URL;
    .restart local v5    # "in":Ljava/io/InputStreamReader;
    .restart local v10    # "url":Ljava/net/URL;
    :catchall_2
    move-exception v11

    move-object v4, v5

    .end local v5    # "in":Ljava/io/InputStreamReader;
    .restart local v4    # "in":Ljava/io/InputStreamReader;
    move-object v9, v10

    .end local v10    # "url":Ljava/net/URL;
    .restart local v9    # "url":Ljava/net/URL;
    goto :goto_4

    .line 231
    .end local v9    # "url":Ljava/net/URL;
    .restart local v10    # "url":Ljava/net/URL;
    :catch_6
    move-exception v3

    move-object v9, v10

    .end local v10    # "url":Ljava/net/URL;
    .restart local v9    # "url":Ljava/net/URL;
    goto :goto_3

    .end local v4    # "in":Ljava/io/InputStreamReader;
    .end local v9    # "url":Ljava/net/URL;
    .restart local v5    # "in":Ljava/io/InputStreamReader;
    .restart local v10    # "url":Ljava/net/URL;
    :catch_7
    move-exception v3

    move-object v4, v5

    .end local v5    # "in":Ljava/io/InputStreamReader;
    .restart local v4    # "in":Ljava/io/InputStreamReader;
    move-object v9, v10

    .end local v10    # "url":Ljava/net/URL;
    .restart local v9    # "url":Ljava/net/URL;
    goto :goto_3

    .line 228
    :catch_8
    move-exception v3

    goto :goto_1

    .end local v9    # "url":Ljava/net/URL;
    .restart local v10    # "url":Ljava/net/URL;
    :catch_9
    move-exception v3

    move-object v9, v10

    .end local v10    # "url":Ljava/net/URL;
    .restart local v9    # "url":Ljava/net/URL;
    goto :goto_1

    .end local v4    # "in":Ljava/io/InputStreamReader;
    .end local v9    # "url":Ljava/net/URL;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "in":Ljava/io/InputStreamReader;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v8    # "strBuffer":Ljava/lang/StringBuffer;
    .restart local v10    # "url":Ljava/net/URL;
    :cond_7
    move-object v4, v5

    .end local v5    # "in":Ljava/io/InputStreamReader;
    .restart local v4    # "in":Ljava/io/InputStreamReader;
    move-object v9, v10

    .end local v10    # "url":Ljava/net/URL;
    .restart local v9    # "url":Ljava/net/URL;
    goto :goto_2
.end method

.method public static fatalErrorReport(Ljava/lang/String;)V
    .locals 28
    .param p0, "dmpPath"    # Ljava/lang/String;

    .prologue
    .line 1297
    const-string v3, "SOG:"

    const-string v4, "Begin process"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    :try_start_0
    invoke-static {}, Lcom/mqgame/lib/SUtility;->dumpError()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 1311
    :goto_0
    :try_start_1
    sget-object v3, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/mqgame/lib/SUtility;->getDumpURL(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v25

    .line 1313
    .local v25, "uploadUrl":Ljava/lang/String;
    const-string v3, "SOG:"

    move-object/from16 v0, v25

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1316
    .local v9, "DmpFile":Ljava/io/File;
    sget-object v3, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/telephony/TelephonyManager;

    .line 1317
    .local v22, "tm":Landroid/telephony/TelephonyManager;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mqgame/lib/SUtility;->getGameVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "android"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1318
    .local v15, "dmpKeyName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mqgame/lib/SUtility;->getDataPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".zip"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1319
    .local v17, "dmpZipName":Ljava/lang/String;
    new-instance v27, Ljava/util/LinkedList;

    invoke-direct/range {v27 .. v27}, Ljava/util/LinkedList;-><init>()V

    .line 1320
    .local v27, "zipList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    new-instance v26, Ljava/util/LinkedList;

    invoke-direct/range {v26 .. v26}, Ljava/util/LinkedList;-><init>()V

    .line 1321
    .local v26, "zipEntryList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    new-instance v23, Ljava/util/LinkedList;

    invoke-direct/range {v23 .. v23}, Ljava/util/LinkedList;-><init>()V

    .line 1323
    .local v23, "toRmv":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    new-instance v19, Ljava/io/File;

    invoke-static {}, Lcom/mqgame/lib/SUtility;->getLogPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1324
    .local v19, "logFile":Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1325
    const-string v3, "SOG:"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dump prepare:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    invoke-static {}, Lcom/mqgame/lib/SUtility;->getLogPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 1327
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".log"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 1330
    :cond_0
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1331
    .local v14, "dmpFiled":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1332
    const-string v3, "SOG:"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dump prepare:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    invoke-virtual/range {v27 .. v28}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 1334
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".dmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 1335
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 1339
    :cond_1
    new-instance v10, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mqgame/lib/SUtility;->getDataPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "screenshot.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v10, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1340
    .local v10, "ScreenCapFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1341
    const-string v3, "SOG:"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dump prepare:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 1343
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 1344
    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 1347
    :cond_2
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/mqgame/lib/SUtility;->zipFiles(Ljava/util/LinkedList;Ljava/util/LinkedList;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1348
    const-string v3, "SaturnDump:"

    const-string v4, "Zip failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_7

    .line 1433
    .end local v9    # "DmpFile":Ljava/io/File;
    .end local v10    # "ScreenCapFile":Ljava/io/File;
    .end local v14    # "dmpFiled":Ljava/io/File;
    .end local v15    # "dmpKeyName":Ljava/lang/String;
    .end local v17    # "dmpZipName":Ljava/lang/String;
    .end local v19    # "logFile":Ljava/io/File;
    .end local v22    # "tm":Landroid/telephony/TelephonyManager;
    .end local v23    # "toRmv":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v25    # "uploadUrl":Ljava/lang/String;
    .end local v26    # "zipEntryList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v27    # "zipList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :goto_1
    return-void

    .line 1302
    :catch_0
    move-exception v18

    .line 1303
    .local v18, "e":Ljava/lang/Exception;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1305
    .end local v18    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v18

    .line 1306
    .local v18, "e":Ljava/lang/Error;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Error;->printStackTrace()V

    goto/16 :goto_0

    .line 1353
    .end local v18    # "e":Ljava/lang/Error;
    .restart local v9    # "DmpFile":Ljava/io/File;
    .restart local v10    # "ScreenCapFile":Ljava/io/File;
    .restart local v14    # "dmpFiled":Ljava/io/File;
    .restart local v15    # "dmpKeyName":Ljava/lang/String;
    .restart local v17    # "dmpZipName":Ljava/lang/String;
    .restart local v19    # "logFile":Ljava/io/File;
    .restart local v22    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v23    # "toRmv":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .restart local v25    # "uploadUrl":Ljava/lang/String;
    .restart local v26    # "zipEntryList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .restart local v27    # "zipList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/mqgame/lib/SUtility;->getNetState()I

    move-result v3

    sget v4, Lcom/mqgame/lib/SUtility;->SNET_WIFI:I

    if-ne v3, v4, :cond_6

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/mqgame/lib/SUtility;->httpUpload(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1354
    new-instance v16, Ljava/io/File;

    invoke-direct/range {v16 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1355
    .local v16, "dmpZip":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1356
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 1358
    :cond_4
    invoke-static/range {v23 .. v23}, Lcom/mqgame/lib/SUtility;->delFiles(Ljava/util/LinkedList;)Z

    .line 1359
    const-string v3, "SOG:"

    const-string v4, "Dump sended"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    .end local v16    # "dmpZip":Ljava/io/File;
    :goto_2
    invoke-static {}, Landroid/os/Looper;->prepare()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_7

    .line 1380
    .end local v9    # "DmpFile":Ljava/io/File;
    .end local v10    # "ScreenCapFile":Ljava/io/File;
    .end local v14    # "dmpFiled":Ljava/io/File;
    .end local v15    # "dmpKeyName":Ljava/lang/String;
    .end local v17    # "dmpZipName":Ljava/lang/String;
    .end local v19    # "logFile":Ljava/io/File;
    .end local v22    # "tm":Landroid/telephony/TelephonyManager;
    .end local v23    # "toRmv":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v25    # "uploadUrl":Ljava/lang/String;
    .end local v26    # "zipEntryList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v27    # "zipList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :goto_3
    :try_start_3
    sget-object v3, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/mqgame/lib/SComMessage;->getShowableContex(Landroid/app/Activity;)Landroid/content/Context;

    move-result-object v12

    .line 1381
    .local v12, "ctx":Landroid/content/Context;
    if-eqz v12, :cond_5

    .line 1382
    sget-object v3, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    const v4, 0x7f090149

    const/4 v5, 0x0

    const v6, 0x7f090124

    sget-object v7, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f090151

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static/range {v3 .. v8}, Lcom/mqgame/lib/SComMessage;->showComMessage(Landroid/content/Context;IIILjava/lang/String;Z)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    .line 1387
    .local v11, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    .line 1388
    .local v13, "dlg":Landroid/app/AlertDialog;
    invoke-virtual {v13}, Landroid/app/AlertDialog;->show()V

    .line 1390
    new-instance v20, Lcom/mqgame/lib/SUtility$3;

    invoke-direct/range {v20 .. v20}, Lcom/mqgame/lib/SUtility$3;-><init>()V

    .line 1395
    .local v20, "mHandler":Landroid/os/Handler;
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_5

    .line 1406
    .end local v11    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v12    # "ctx":Landroid/content/Context;
    .end local v13    # "dlg":Landroid/app/AlertDialog;
    .end local v20    # "mHandler":Landroid/os/Handler;
    :cond_5
    :goto_4
    :try_start_4
    sget-object v3, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 1407
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_1

    .line 1409
    :catch_2
    move-exception v18

    .line 1410
    .local v18, "e":Ljava/lang/Exception;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1363
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v9    # "DmpFile":Ljava/io/File;
    .restart local v10    # "ScreenCapFile":Ljava/io/File;
    .restart local v14    # "dmpFiled":Ljava/io/File;
    .restart local v15    # "dmpKeyName":Ljava/lang/String;
    .restart local v17    # "dmpZipName":Ljava/lang/String;
    .restart local v19    # "logFile":Ljava/io/File;
    .restart local v22    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v23    # "toRmv":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .restart local v25    # "uploadUrl":Ljava/lang/String;
    .restart local v26    # "zipEntryList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .restart local v27    # "zipList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :cond_6
    :try_start_5
    invoke-static {}, Lcom/mqgame/lib/SUtility;->chkDumpDir()Z

    .line 1364
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1365
    .local v21, "mov":Ljava/io/File;
    new-instance v24, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mqgame/lib/SUtility;->getDumpPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1366
    .local v24, "tostore":Ljava/io/File;
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1367
    invoke-static/range {v23 .. v23}, Lcom/mqgame/lib/SUtility;->delFiles(Ljava/util/LinkedList;)Z

    .line 1368
    const-string v3, "SOG:"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dump save to:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_7

    goto/16 :goto_2

    .line 1373
    .end local v9    # "DmpFile":Ljava/io/File;
    .end local v10    # "ScreenCapFile":Ljava/io/File;
    .end local v14    # "dmpFiled":Ljava/io/File;
    .end local v15    # "dmpKeyName":Ljava/lang/String;
    .end local v17    # "dmpZipName":Ljava/lang/String;
    .end local v19    # "logFile":Ljava/io/File;
    .end local v21    # "mov":Ljava/io/File;
    .end local v22    # "tm":Landroid/telephony/TelephonyManager;
    .end local v23    # "toRmv":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v24    # "tostore":Ljava/io/File;
    .end local v25    # "uploadUrl":Ljava/lang/String;
    .end local v26    # "zipEntryList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v27    # "zipList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :catch_3
    move-exception v3

    goto/16 :goto_3

    .line 1398
    :catch_4
    move-exception v18

    .line 1399
    .restart local v18    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 1401
    .end local v18    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v18

    .line 1402
    .local v18, "e":Ljava/lang/Error;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_4

    .line 1412
    .end local v18    # "e":Ljava/lang/Error;
    :catch_6
    move-exception v18

    .line 1413
    .restart local v18    # "e":Ljava/lang/Error;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Error;->printStackTrace()V

    goto/16 :goto_1

    .line 1376
    .end local v18    # "e":Ljava/lang/Error;
    :catch_7
    move-exception v3

    goto/16 :goto_3
.end method

.method public static getABIPerfix()Ljava/lang/String;
    .locals 3

    .prologue
    .line 437
    sget-object v1, Lcom/mqgame/lib/SUtility;->CurABI:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 438
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 439
    .local v0, "szABI":Ljava/lang/String;
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-static {v1}, Lcom/mqgame/lib/SUtility;->chkABIInLaw(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 440
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 444
    :cond_0
    :goto_0
    const-string v1, "armeabi-v7a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 445
    invoke-static {}, Lcom/mqgame/lib/SUtility;->isNeonSupport()Z

    move-result v1

    if-nez v1, :cond_1

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-noneon"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 457
    :cond_1
    sput-object v0, Lcom/mqgame/lib/SUtility;->CurABI:Ljava/lang/String;

    .line 459
    :cond_2
    sget-object v1, Lcom/mqgame/lib/SUtility;->CurABI:Ljava/lang/String;

    return-object v1

    .line 441
    :cond_3
    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-static {v1}, Lcom/mqgame/lib/SUtility;->chkABIInLaw(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 442
    sget-object v0, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getAPILevel()I
    .locals 1

    .prologue
    .line 2124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static getAvailableStorePath(Ljava/lang/String;)J
    .locals 9
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x0

    .line 601
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_0

    .line 616
    :goto_0
    return-wide v6

    .line 605
    :cond_0
    :try_start_0
    new-instance v5, Landroid/os/StatFs;

    invoke-direct {v5, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 606
    .local v5, "stat":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v2, v8

    .line 607
    .local v2, "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    int-to-long v0, v6

    .line 608
    .local v0, "availableBlocks":J
    mul-long v6, v0, v2

    goto :goto_0

    .line 610
    .end local v0    # "availableBlocks":J
    .end local v2    # "blockSize":J
    .end local v5    # "stat":Landroid/os/StatFs;
    :catch_0
    move-exception v4

    .line 611
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 613
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 614
    .local v4, "e":Ljava/lang/Error;
    invoke-virtual {v4}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method

.method public static getBatteryRate()I
    .locals 1

    .prologue
    .line 747
    sget v0, Lcom/mqgame/lib/SUtility;->gbatteryP:I

    return v0
.end method

.method public static getBatteryStatus()I
    .locals 1

    .prologue
    .line 772
    sget v0, Lcom/mqgame/lib/SUtility;->gbatteryStatus:I

    return v0
.end method

.method public static getBatteryTemperature()I
    .locals 1

    .prologue
    .line 768
    sget v0, Lcom/mqgame/lib/SUtility;->gbatteryTemperature:I

    return v0
.end method

.method public static getCurVKeyboardTxt()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1640
    :try_start_0
    sget-object v0, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    check-cast v0, Lcom/mqgame/lib/SNativeActivity;

    .line 1641
    .local v0, "Na":Lcom/mqgame/lib/SNativeActivity;
    invoke-virtual {v0}, Lcom/mqgame/lib/SNativeActivity;->getCurVKeyboardTxt()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1649
    :goto_0
    return-object v2

    .line 1643
    :catch_0
    move-exception v1

    .line 1644
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1649
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    const-string v2, ""

    goto :goto_0

    .line 1646
    :catch_1
    move-exception v1

    .line 1647
    .local v1, "e":Ljava/lang/Error;
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_1
.end method

.method public static getDataPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 681
    sget-object v1, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    const-string v2, "global"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 682
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "DataPath"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDefScreenH()I
    .locals 4

    .prologue
    .line 806
    :try_start_0
    sget-object v1, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    check-cast v1, Lcom/mqgame/lib/SNativeActivity;

    .line 807
    .local v1, "nv":Lcom/mqgame/lib/SNativeActivity;
    iget v2, v1, Lcom/mqgame/lib/SNativeActivity;->screenW:I

    iget v3, v1, Lcom/mqgame/lib/SNativeActivity;->screenH:I

    if-le v2, v3, :cond_0

    .line 808
    iget v2, v1, Lcom/mqgame/lib/SNativeActivity;->screenH:I

    .line 818
    :goto_0
    return v2

    .line 810
    :cond_0
    iget v2, v1, Lcom/mqgame/lib/SNativeActivity;->screenW:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 812
    :catch_0
    move-exception v0

    .line 813
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 818
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 815
    :catch_1
    move-exception v0

    .line 816
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_1
.end method

.method public static getDefScreenW()I
    .locals 4

    .prologue
    .line 789
    :try_start_0
    sget-object v1, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    check-cast v1, Lcom/mqgame/lib/SNativeActivity;

    .line 790
    .local v1, "nv":Lcom/mqgame/lib/SNativeActivity;
    iget v2, v1, Lcom/mqgame/lib/SNativeActivity;->screenW:I

    iget v3, v1, Lcom/mqgame/lib/SNativeActivity;->screenH:I

    if-le v2, v3, :cond_0

    .line 791
    iget v2, v1, Lcom/mqgame/lib/SNativeActivity;->screenW:I

    .line 801
    :goto_0
    return v2

    .line 793
    :cond_0
    iget v2, v1, Lcom/mqgame/lib/SNativeActivity;->screenH:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 795
    :catch_0
    move-exception v0

    .line 796
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 801
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 798
    :catch_1
    move-exception v0

    .line 799
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_1
.end method

.method public static getDumpPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mqgame/lib/SUtility;->getDataPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDumpURL(Landroid/app/Activity;)Ljava/lang/String;
    .locals 3
    .param p0, "ac"    # Landroid/app/Activity;

    .prologue
    .line 1668
    const-string v1, "global"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1669
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "DumpURL"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getExternalSDPath()Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 620
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    .line 621
    .local v8, "path":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 622
    .local v1, "cmpt":Ljava/lang/String;
    const-string v10, ""

    .line 624
    .local v10, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v11

    .line 625
    .local v11, "runtime":Ljava/lang/Runtime;
    const-string v12, "mount"

    invoke-virtual {v11, v12}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v9

    .line 626
    .local v9, "proc":Ljava/lang/Process;
    invoke-virtual {v9}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 627
    .local v4, "is":Ljava/io/InputStream;
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 629
    .local v5, "isr":Ljava/io/InputStreamReader;
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7}, Ljava/lang/String;-><init>()V

    .line 630
    .local v7, "mount":Ljava/lang/String;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 631
    .local v0, "br":Ljava/io/BufferedReader;
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "line":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 632
    const-string v12, "secure"

    invoke-virtual {v6, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 633
    const-string v12, "asec"

    invoke-virtual {v6, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 635
    const-string v12, "fat"

    invoke-virtual {v6, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 636
    const-string v12, " "

    invoke-virtual {v6, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 637
    .local v2, "columns":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v12, v2

    if-le v12, v13, :cond_0

    const/4 v12, 0x1

    aget-object v12, v2, v12

    invoke-virtual {v12, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 638
    const/4 v12, 0x1

    aget-object v7, v2, v12

    .line 659
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "columns":[Ljava/lang/String;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "mount":Ljava/lang/String;
    .end local v9    # "proc":Ljava/lang/Process;
    .end local v11    # "runtime":Ljava/lang/Runtime;
    :goto_0
    return-object v7

    .line 641
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v7    # "mount":Ljava/lang/String;
    .restart local v9    # "proc":Ljava/lang/Process;
    .restart local v11    # "runtime":Ljava/lang/Runtime;
    :cond_1
    const-string v12, "fuse"

    invoke-virtual {v6, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 642
    const-string v12, " "

    invoke-virtual {v6, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 643
    .restart local v2    # "columns":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v12, v2

    if-le v12, v13, :cond_0

    const/4 v12, 0x1

    aget-object v12, v2, v12

    invoke-virtual {v12, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 644
    const/4 v12, 0x1

    aget-object v7, v2, v12
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    .line 645
    goto :goto_0

    .line 649
    .end local v2    # "columns":[Ljava/lang/String;
    :cond_2
    move-object v10, v7

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "mount":Ljava/lang/String;
    .end local v9    # "proc":Ljava/lang/Process;
    .end local v11    # "runtime":Ljava/lang/Runtime;
    :goto_1
    move-object v7, v10

    .line 659
    goto :goto_0

    .line 651
    :catch_0
    move-exception v3

    .line 652
    .local v3, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 653
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 654
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 656
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 657
    .local v3, "e":Ljava/lang/Error;
    invoke-virtual {v3}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_1
.end method

.method public static getExternalStorageSize()J
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 582
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 596
    .local v1, "path":Ljava/io/File;
    :cond_0
    :goto_0
    return-wide v2

    .line 584
    .end local v1    # "path":Ljava/io/File;
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 585
    .restart local v1    # "path":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 588
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mqgame/lib/SUtility;->getAvailableStorePath(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    goto :goto_0

    .line 590
    :catch_0
    move-exception v0

    .line 591
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 594
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 595
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method

.method static getGameVersion()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1887
    :try_start_0
    new-instance v1, Lcom/mqgame/lib/SUtility$SIniReader;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mqgame/lib/SUtility;->getDataPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "version.ini"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/mqgame/lib/SSDK;->Language:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Lcom/mqgame/lib/SUtility$SIniReader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    .local v1, "reader":Lcom/mqgame/lib/SUtility$SIniReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Version"

    const-string v5, "MajorVersion"

    invoke-virtual {v1, v4, v5}, Lcom/mqgame/lib/SUtility$SIniReader;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Version"

    const-string v5, "MinorVersion"

    invoke-virtual {v1, v4, v5}, Lcom/mqgame/lib/SUtility$SIniReader;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Version"

    const-string v5, "RevisionVersion"

    invoke-virtual {v1, v4, v5}, Lcom/mqgame/lib/SUtility$SIniReader;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Version"

    const-string v5, "BuildVersion"

    invoke-virtual {v1, v4, v5}, Lcom/mqgame/lib/SUtility$SIniReader;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1900
    :goto_0
    return-object v2

    .line 1893
    :catch_0
    move-exception v0

    .line 1895
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_0

    .line 1897
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1898
    .local v0, "e":Ljava/lang/Error;
    const-string v2, ""

    goto :goto_0
.end method

.method public static getLibPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 686
    sget-object v1, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    const-string v2, "global"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 687
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "LibPath"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getLogPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 691
    sget-object v1, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    const-string v2, "global"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 692
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "LogPath"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getMac()Ljava/lang/String;
    .locals 4

    .prologue
    .line 875
    invoke-static {}, Lcom/mqgame/lib/SUtility;->getMacDef()Ljava/lang/String;

    move-result-object v1

    .line 876
    .local v1, "lMac":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 896
    .end local v1    # "lMac":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 878
    .restart local v1    # "lMac":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/mqgame/lib/SUtility;->getMacSys()Ljava/lang/String;

    move-result-object v1

    .line 879
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 883
    :cond_2
    :try_start_0
    sget-object v2, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 894
    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 896
    :cond_3
    const-string v1, ""

    goto :goto_0

    .line 886
    :catch_0
    move-exception v0

    .line 887
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 888
    const-string v1, ""

    .line 893
    goto :goto_1

    .line 890
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 891
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    .line 892
    const-string v1, ""

    goto :goto_1
.end method

.method public static getMacDef()Ljava/lang/String;
    .locals 6

    .prologue
    .line 823
    :try_start_0
    const-string v2, ""

    .line 824
    .local v2, "macAddress":Ljava/lang/String;
    sget-object v4, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 825
    .local v3, "wifiMgr":Landroid/net/wifi/WifiManager;
    if-nez v3, :cond_1

    const/4 v1, 0x0

    .line 826
    .local v1, "info":Landroid/net/wifi/WifiInfo;
    :goto_0
    if-eqz v1, :cond_0

    .line 827
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    .line 828
    if-nez v2, :cond_0

    .line 829
    const-string v2, ""

    .line 839
    .end local v1    # "info":Landroid/net/wifi/WifiInfo;
    .end local v2    # "macAddress":Ljava/lang/String;
    .end local v3    # "wifiMgr":Landroid/net/wifi/WifiManager;
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-object v2

    .line 825
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "macAddress":Ljava/lang/String;
    .restart local v3    # "wifiMgr":Landroid/net/wifi/WifiManager;
    :cond_1
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 833
    .end local v3    # "wifiMgr":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v0

    .line 834
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 835
    const-string v2, ""

    goto :goto_1

    .line 837
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 838
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    .line 839
    const-string v2, ""

    goto :goto_1
.end method

.method public static getMacSys()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 864
    :try_start_0
    const-string v2, "/sys/class/net/wlan0/address"

    invoke-static {v2}, Lcom/mqgame/lib/SUtility;->loadFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x11

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 870
    :goto_0
    return-object v1

    .line 865
    :catch_0
    move-exception v0

    .line 866
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 869
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 870
    .local v0, "e":Ljava/lang/Error;
    goto :goto_0
.end method

.method public static getMachineIdity()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1132
    :try_start_0
    sget-object v3, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1133
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    const-string v3, "%s|%s|%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1143
    :goto_0
    return-object v1

    .line 1136
    :catch_0
    move-exception v0

    .line 1137
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1138
    const-string v1, ""

    goto :goto_0

    .line 1141
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1142
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    .line 1143
    const-string v1, ""

    goto :goto_0
.end method

.method public static getNetState()I
    .locals 5

    .prologue
    .line 697
    :try_start_0
    sget-object v3, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 698
    .local v2, "conMan":Landroid/net/ConnectivityManager;
    if-nez v2, :cond_0

    .line 699
    sget v3, Lcom/mqgame/lib/SUtility;->SNET_NULL:I

    .line 716
    :goto_0
    return v3

    .line 702
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 703
    .local v1, "bWifi":Z
    if-eqz v1, :cond_1

    .line 704
    sget v3, Lcom/mqgame/lib/SUtility;->SNET_WIFI:I

    goto :goto_0

    .line 707
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    .line 708
    .local v0, "bMobile":Z
    if-eqz v0, :cond_2

    .line 709
    sget v3, Lcom/mqgame/lib/SUtility;->SNET_MOBILE:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 714
    .end local v0    # "bMobile":Z
    .end local v1    # "bWifi":Z
    :catch_0
    move-exception v3

    .line 716
    :cond_2
    :goto_1
    sget v3, Lcom/mqgame/lib/SUtility;->SNET_NULL:I

    goto :goto_0

    .line 711
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public static getPPI()I
    .locals 6

    .prologue
    const/16 v4, 0xb4

    .line 1180
    :try_start_0
    sget-object v3, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    check-cast v3, Lcom/mqgame/lib/SNativeActivity;

    .line 1181
    .local v3, "nv":Lcom/mqgame/lib/SNativeActivity;
    sget-object v5, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1182
    .local v0, "display":Landroid/view/Display;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1183
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1184
    iget v4, v2, Landroid/util/DisplayMetrics;->densityDpi:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 1192
    .end local v0    # "display":Landroid/view/Display;
    .end local v2    # "metrics":Landroid/util/DisplayMetrics;
    :goto_0
    return v4

    .line 1186
    :catch_0
    move-exception v1

    .line 1187
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1190
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1191
    .local v1, "e":Ljava/lang/Error;
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method

.method private static getScreenBrightness()I
    .locals 5

    .prologue
    .line 1978
    const/16 v2, 0xff

    .line 1980
    .local v2, "screenBrightness":I
    :try_start_0
    sget-object v3, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 1988
    :goto_0
    return v2

    .line 1982
    :catch_0
    move-exception v1

    .line 1983
    .local v1, "localException":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1985
    .end local v1    # "localException":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1986
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method

.method public static getScreenMode()I
    .locals 5

    .prologue
    .line 1961
    const/4 v2, 0x0

    .line 1963
    .local v2, "screenMode":I
    :try_start_0
    sget-object v3, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness_mode"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 1971
    :goto_0
    return v2

    .line 1965
    :catch_0
    move-exception v1

    .line 1966
    .local v1, "localException":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1968
    .end local v1    # "localException":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1969
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method

.method public static getScreenOffTime()I
    .locals 5

    .prologue
    .line 2110
    const/16 v2, 0x1e

    .line 2112
    .local v2, "nTime":I
    :try_start_0
    sget-object v3, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_off_timeout"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 2120
    :goto_0
    return v2

    .line 2114
    :catch_0
    move-exception v1

    .line 2115
    .local v1, "localException":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2117
    .end local v1    # "localException":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 2118
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method

.method public static getStorageSize()I
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 664
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    .line 665
    .local v3, "path":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-nez v6, :cond_0

    .line 676
    :goto_0
    return v5

    .line 667
    :cond_0
    new-instance v4, Landroid/os/StatFs;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 668
    .local v4, "stat":Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    .line 669
    .local v1, "blockSize":I
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 670
    .local v0, "availableBlocks":I
    mul-int v5, v0, v1

    goto :goto_0

    .line 672
    .end local v0    # "availableBlocks":I
    .end local v1    # "blockSize":I
    .end local v4    # "stat":Landroid/os/StatFs;
    :catch_0
    move-exception v2

    .line 673
    .local v2, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 675
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 676
    .local v2, "e":Ljava/lang/Error;
    goto :goto_0
.end method

.method public static getTotalMemLow()I
    .locals 2

    .prologue
    .line 1148
    invoke-static {}, Lcom/mqgame/lib/SUtility;->getTotalMemory()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static getTotalMemory()J
    .locals 16

    .prologue
    .line 1151
    const-string v12, "/proc/meminfo"

    .line 1152
    .local v12, "str1":Ljava/lang/String;
    const-string v13, ""

    .line 1154
    .local v13, "str2":Ljava/lang/String;
    const-wide/16 v6, 0x0

    .local v6, "initial_memory":J
    const-wide/16 v2, 0x0

    .line 1156
    .local v2, "free_memory":J
    :try_start_0
    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v12}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 1157
    .local v10, "localFileReader":Ljava/io/FileReader;
    new-instance v9, Ljava/io/BufferedReader;

    const/16 v14, 0x2000

    invoke-direct {v9, v10, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 1159
    .local v9, "localBufferedReader":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/4 v14, 0x2

    if-ge v4, v14, :cond_0

    .line 1160
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1159
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1162
    :cond_0
    const-string v14, "\\s+"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1163
    .local v1, "arrayOfString":[Ljava/lang/String;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v8, v0

    .local v8, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v8, :cond_1

    aget-object v11, v0, v5

    .line 1164
    .local v11, "num":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\t"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1167
    .end local v11    # "num":Ljava/lang/String;
    :cond_1
    const/4 v14, 0x2

    aget-object v14, v1, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    int-to-long v6, v14

    .line 1168
    const/4 v14, 0x5

    aget-object v14, v1, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    int-to-long v2, v14

    .line 1170
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 1175
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "arrayOfString":[Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "localBufferedReader":Ljava/io/BufferedReader;
    .end local v10    # "localFileReader":Ljava/io/FileReader;
    :goto_2
    sub-long v14, v6, v2

    return-wide v14

    .line 1173
    :catch_0
    move-exception v14

    goto :goto_2

    .line 1171
    :catch_1
    move-exception v14

    goto :goto_2
.end method

.method public static getUsedMem()I
    .locals 7

    .prologue
    .line 1503
    :try_start_0
    sget-object v3, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1504
    .local v0, "activityManager":Landroid/app/ActivityManager;
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 1505
    .local v2, "outInfo":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 1506
    sget v3, Lcom/mqgame/lib/SUtility;->gMem:I

    iget-wide v4, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v6, 0xa

    shr-long/2addr v4, v6

    long-to-int v4, v4

    sub-int/2addr v3, v4

    .line 1514
    .end local v2    # "outInfo":Landroid/app/ActivityManager$MemoryInfo;
    :goto_0
    return v3

    .line 1508
    :catch_0
    move-exception v1

    .line 1509
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1514
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1511
    :catch_1
    move-exception v1

    .line 1512
    .local v1, "e":Ljava/lang/Error;
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_1
.end method

.method static getVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 1863
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 1868
    :goto_0
    return-object v1

    .line 1864
    :catch_0
    move-exception v0

    .line 1865
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "?"

    goto :goto_0

    .line 1867
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1868
    .local v0, "e":Ljava/lang/Error;
    const-string v1, "?"

    goto :goto_0
.end method

.method static getVersionCode(Landroid/content/Context;)I
    .locals 5
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 1874
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v1, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 1879
    :goto_0
    return v1

    .line 1875
    :catch_0
    move-exception v0

    .line 1876
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 1878
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1879
    .local v0, "e":Ljava/lang/Error;
    goto :goto_0
.end method

.method public static httpDownload(Ljava/io/File;Ljava/lang/String;)Z
    .locals 13
    .param p0, "destFile"    # Ljava/io/File;
    .param p1, "dwonloadUrl"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 329
    const/4 v6, 0x0

    .line 330
    .local v6, "output":Ljava/io/OutputStream;
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 332
    .local v1, "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 333
    .local v2, "conn":Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 334
    .local v8, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 335
    .local v4, "input":Ljava/io/InputStream;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_19
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    .end local v6    # "output":Ljava/io/OutputStream;
    .local v7, "output":Ljava/io/OutputStream;
    const/16 v10, 0x1000

    :try_start_1
    new-array v0, v10, [B

    .line 338
    .local v0, "buffer":[B
    const/4 v5, 0x0

    .line 339
    .local v5, "len":I
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v10, -0x1

    if-eq v5, v10, :cond_2

    .line 340
    const/4 v10, 0x0

    invoke-virtual {v7, v0, v10, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_17
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_16
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 345
    .end local v0    # "buffer":[B
    .end local v5    # "len":I
    :catch_0
    move-exception v3

    move-object v6, v7

    .line 346
    .end local v2    # "conn":Lorg/apache/http/client/methods/HttpGet;
    .end local v4    # "input":Ljava/io/InputStream;
    .end local v7    # "output":Ljava/io/OutputStream;
    .end local v8    # "response":Lorg/apache/http/HttpResponse;
    .local v3, "e":Ljava/net/MalformedURLException;
    .restart local v6    # "output":Ljava/io/OutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 347
    const-string v10, "SOG_DEBUG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed download from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 366
    if-eqz v1, :cond_0

    .line 367
    :try_start_3
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 368
    :cond_0
    if-eqz v6, :cond_1

    .line 369
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_c

    .line 362
    .end local v3    # "e":Ljava/net/MalformedURLException;
    :cond_1
    :goto_2
    return v9

    .line 342
    .end local v6    # "output":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v2    # "conn":Lorg/apache/http/client/methods/HttpGet;
    .restart local v4    # "input":Ljava/io/InputStream;
    .restart local v5    # "len":I
    .restart local v7    # "output":Ljava/io/OutputStream;
    .restart local v8    # "response":Lorg/apache/http/HttpResponse;
    :cond_2
    :try_start_4
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_18
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_17
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_16
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 344
    const/4 v9, 0x1

    .line 366
    if-eqz v1, :cond_3

    .line 367
    :try_start_5
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 368
    :cond_3
    if-eqz v7, :cond_4

    .line 369
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_13
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_14
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_15

    :cond_4
    :goto_3
    move-object v6, v7

    .line 344
    .end local v7    # "output":Ljava/io/OutputStream;
    .restart local v6    # "output":Ljava/io/OutputStream;
    goto :goto_2

    .line 349
    .end local v0    # "buffer":[B
    .end local v2    # "conn":Lorg/apache/http/client/methods/HttpGet;
    .end local v4    # "input":Ljava/io/InputStream;
    .end local v5    # "len":I
    .end local v8    # "response":Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v3

    .line 350
    .local v3, "e":Ljava/io/IOException;
    :goto_4
    :try_start_6
    const-string v10, "SOG_DEBUG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed download from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 366
    if-eqz v1, :cond_5

    .line 367
    :try_start_7
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 368
    :cond_5
    if-eqz v6, :cond_1

    .line 369
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_e

    goto :goto_2

    .line 371
    :catch_2
    move-exception v3

    .line 372
    const-string v10, "SOG_DEBUG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed download from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :goto_5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 354
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 355
    .local v3, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_8
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 356
    const-string v10, "SOG_DEBUG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed download from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 366
    if-eqz v1, :cond_6

    .line 367
    :try_start_9
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 368
    :cond_6
    if-eqz v6, :cond_1

    .line 369
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_f
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_9} :catch_10

    goto/16 :goto_2

    .line 371
    :catch_4
    move-exception v3

    .line 372
    .local v3, "e":Ljava/io/IOException;
    const-string v10, "SOG_DEBUG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed download from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 359
    .end local v3    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v3

    .line 360
    .local v3, "e":Ljava/lang/Error;
    :goto_7
    :try_start_a
    invoke-virtual {v3}, Ljava/lang/Error;->printStackTrace()V

    .line 361
    const-string v10, "SOG_DEBUG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed download from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 366
    if-eqz v1, :cond_7

    .line 367
    :try_start_b
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 368
    :cond_7
    if-eqz v6, :cond_1

    .line 369
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_11
    .catch Ljava/lang/Error; {:try_start_b .. :try_end_b} :catch_12

    goto/16 :goto_2

    .line 371
    :catch_6
    move-exception v3

    .line 372
    .local v3, "e":Ljava/io/IOException;
    const-string v10, "SOG_DEBUG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed download from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 365
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 366
    :goto_8
    if-eqz v1, :cond_8

    .line 367
    :try_start_c
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 368
    :cond_8
    if-eqz v6, :cond_9

    .line 369
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/lang/Error; {:try_start_c .. :try_end_c} :catch_9

    .line 365
    :cond_9
    :goto_9
    throw v9

    .line 371
    :catch_7
    move-exception v3

    .line 372
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v10, "SOG_DEBUG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed download from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 375
    .end local v3    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v3

    .line 376
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 377
    const-string v10, "SOG_DEBUG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed download from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 379
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_9
    move-exception v3

    .line 380
    .local v3, "e":Ljava/lang/Error;
    const-string v10, "SOG_DEBUG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed download from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-virtual {v3}, Ljava/lang/Error;->printStackTrace()V

    goto/16 :goto_9

    .line 371
    .local v3, "e":Ljava/net/MalformedURLException;
    :catch_a
    move-exception v3

    .line 372
    .local v3, "e":Ljava/io/IOException;
    const-string v10, "SOG_DEBUG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed download from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 375
    .local v3, "e":Ljava/net/MalformedURLException;
    :catch_b
    move-exception v3

    .line 376
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 377
    const-string v10, "SOG_DEBUG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed download from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_a
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 379
    .local v3, "e":Ljava/net/MalformedURLException;
    :catch_c
    move-exception v3

    .line 380
    .local v3, "e":Ljava/lang/Error;
    const-string v10, "SOG_DEBUG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed download from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :goto_b
    invoke-virtual {v3}, Ljava/lang/Error;->printStackTrace()V

    goto/16 :goto_2

    .line 375
    .local v3, "e":Ljava/io/IOException;
    :catch_d
    move-exception v3

    .line 376
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 377
    const-string v10, "SOG_DEBUG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed download from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_a

    .line 379
    .local v3, "e":Ljava/io/IOException;
    :catch_e
    move-exception v3

    .line 380
    .local v3, "e":Ljava/lang/Error;
    const-string v10, "SOG_DEBUG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed download from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 375
    .local v3, "e":Ljava/lang/Exception;
    :catch_f
    move-exception v3

    .line 376
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 377
    const-string v10, "SOG_DEBUG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed download from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_a

    .line 379
    :catch_10
    move-exception v3

    .line 380
    .local v3, "e":Ljava/lang/Error;
    const-string v10, "SOG_DEBUG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed download from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 375
    :catch_11
    move-exception v3

    .line 376
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 377
    const-string v10, "SOG_DEBUG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed download from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_a

    .line 379
    .local v3, "e":Ljava/lang/Error;
    :catch_12
    move-exception v3

    .line 380
    const-string v10, "SOG_DEBUG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed download from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 371
    .end local v3    # "e":Ljava/lang/Error;
    .end local v6    # "output":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v2    # "conn":Lorg/apache/http/client/methods/HttpGet;
    .restart local v4    # "input":Ljava/io/InputStream;
    .restart local v5    # "len":I
    .restart local v7    # "output":Ljava/io/OutputStream;
    .restart local v8    # "response":Lorg/apache/http/HttpResponse;
    :catch_13
    move-exception v3

    .line 372
    .local v3, "e":Ljava/io/IOException;
    const-string v10, "SOG_DEBUG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed download from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 375
    .end local v3    # "e":Ljava/io/IOException;
    :catch_14
    move-exception v3

    .line 376
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 377
    const-string v10, "SOG_DEBUG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed download from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 379
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_15
    move-exception v3

    .line 380
    .local v3, "e":Ljava/lang/Error;
    const-string v10, "SOG_DEBUG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed download from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-virtual {v3}, Ljava/lang/Error;->printStackTrace()V

    goto/16 :goto_3

    .line 365
    .end local v0    # "buffer":[B
    .end local v3    # "e":Ljava/lang/Error;
    .end local v5    # "len":I
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7    # "output":Ljava/io/OutputStream;
    .restart local v6    # "output":Ljava/io/OutputStream;
    goto/16 :goto_8

    .line 359
    .end local v6    # "output":Ljava/io/OutputStream;
    .restart local v7    # "output":Ljava/io/OutputStream;
    :catch_16
    move-exception v3

    move-object v6, v7

    .end local v7    # "output":Ljava/io/OutputStream;
    .restart local v6    # "output":Ljava/io/OutputStream;
    goto/16 :goto_7

    .line 354
    .end local v6    # "output":Ljava/io/OutputStream;
    .restart local v7    # "output":Ljava/io/OutputStream;
    :catch_17
    move-exception v3

    move-object v6, v7

    .end local v7    # "output":Ljava/io/OutputStream;
    .restart local v6    # "output":Ljava/io/OutputStream;
    goto/16 :goto_6

    .line 349
    .end local v6    # "output":Ljava/io/OutputStream;
    .restart local v7    # "output":Ljava/io/OutputStream;
    :catch_18
    move-exception v3

    move-object v6, v7

    .end local v7    # "output":Ljava/io/OutputStream;
    .restart local v6    # "output":Ljava/io/OutputStream;
    goto/16 :goto_4

    .line 345
    .end local v2    # "conn":Lorg/apache/http/client/methods/HttpGet;
    .end local v4    # "input":Ljava/io/InputStream;
    .end local v8    # "response":Lorg/apache/http/HttpResponse;
    :catch_19
    move-exception v3

    goto/16 :goto_1
.end method

.method public static httpDownloadExtractTo(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "destDir"    # Ljava/lang/String;
    .param p1, "dwonloadUrl"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 399
    :try_start_0
    const-string v3, "HTTPDownload"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 401
    .local v0, "TmpFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 402
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 403
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 404
    invoke-static {v0, p1}, Lcom/mqgame/lib/SUtility;->httpDownload(Ljava/io/File;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 405
    const-string v3, "SOG_DEBUG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "httpDownload failed from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 432
    .end local v0    # "TmpFile":Ljava/io/File;
    :goto_0
    return v2

    .line 410
    .restart local v0    # "TmpFile":Ljava/io/File;
    :cond_1
    const-string v3, "Extract"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-static {v0, p0}, Lcom/mqgame/lib/SUtility;->unnZipFolder(Ljava/io/File;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    .line 412
    const-string v3, "SOG_DEBUG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unnZipFolder failed from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 420
    .end local v0    # "TmpFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 421
    .local v1, "e":Ljava/net/MalformedURLException;
    const-string v3, "SOG_DEBUG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unnZipFolder failed from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 417
    .end local v1    # "e":Ljava/net/MalformedURLException;
    .restart local v0    # "TmpFile":Ljava/io/File;
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    .line 418
    const/4 v2, 0x1

    goto :goto_0

    .line 424
    .end local v0    # "TmpFile":Ljava/io/File;
    :catch_1
    move-exception v1

    .line 425
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "SOG_DEBUG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unnZipFolder failed from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 429
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 430
    .local v1, "e":Ljava/lang/Error;
    const-string v3, "SOG_DEBUG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unnZipFolder failed from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static httpUpload(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 18
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "uploadRootUrl"    # Ljava/lang/String;

    .prologue
    .line 250
    const/4 v14, 0x0

    .line 253
    .local v14, "urlconnection":Ljava/net/URLConnection;
    :try_start_0
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 254
    .local v5, "file":Ljava/io/File;
    move-object/from16 v12, p1

    .line 255
    .local v12, "uploadUrl":Ljava/lang/String;
    const-string v15, "/"

    invoke-virtual {v12, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 256
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 257
    :cond_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 259
    new-instance v13, Ljava/net/URL;

    invoke-direct {v13, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 260
    .local v13, "url":Ljava/net/URL;
    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v14

    .line 261
    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 262
    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 264
    instance-of v15, v14, Ljava/net/HttpURLConnection;

    if-nez v15, :cond_1

    .line 265
    const/4 v1, 0x0

    .line 324
    .end local v5    # "file":Ljava/io/File;
    .end local v12    # "uploadUrl":Ljava/lang/String;
    .end local v13    # "url":Ljava/net/URL;
    :goto_0
    return v1

    .line 267
    .restart local v5    # "file":Ljava/io/File;
    .restart local v12    # "uploadUrl":Ljava/lang/String;
    .restart local v13    # "url":Ljava/net/URL;
    :cond_1
    move-object v0, v14

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v15, v0

    const-string v16, "PUT"

    invoke-virtual/range {v15 .. v16}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 268
    move-object v0, v14

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v15, v0

    const-string v16, "Content-type"

    const-string v17, "application/octet-stream"

    invoke-virtual/range {v15 .. v17}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    move-object v0, v14

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->connect()V

    .line 272
    new-instance v9, Ljava/io/DataOutputStream;

    invoke-virtual {v14}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v15

    invoke-direct {v9, v15}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 273
    .local v9, "outStream":Ljava/io/DataOutputStream;
    new-instance v6, Ljava/io/DataInputStream;

    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v15}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 275
    .local v6, "inStream":Ljava/io/DataInputStream;
    const/4 v3, 0x0

    .line 276
    .local v3, "bytes":I
    const/16 v15, 0x1000

    new-array v2, v15, [B

    .line 277
    .local v2, "bufferOut":[B
    :goto_1
    invoke-virtual {v6, v2}, Ljava/io/DataInputStream;->read([B)I

    move-result v3

    const/4 v15, -0x1

    if-eq v3, v15, :cond_3

    .line 278
    const/4 v15, 0x0

    invoke-virtual {v9, v2, v15, v3}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 284
    .end local v2    # "bufferOut":[B
    .end local v3    # "bytes":I
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "inStream":Ljava/io/DataInputStream;
    .end local v9    # "outStream":Ljava/io/DataOutputStream;
    .end local v12    # "uploadUrl":Ljava/lang/String;
    .end local v13    # "url":Ljava/net/URL;
    :catch_0
    move-exception v4

    .line 285
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 286
    if-eqz v14, :cond_2

    move-object v15, v14

    .line 287
    check-cast v15, Ljava/net/HttpURLConnection;

    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 288
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 281
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "bufferOut":[B
    .restart local v3    # "bytes":I
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "inStream":Ljava/io/DataInputStream;
    .restart local v9    # "outStream":Ljava/io/DataOutputStream;
    .restart local v12    # "uploadUrl":Ljava/lang/String;
    .restart local v13    # "url":Ljava/net/URL;
    :cond_3
    :try_start_1
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V

    .line 282
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    .line 295
    const/4 v1, 0x0

    .line 296
    .local v1, "bret":Z
    const/4 v7, 0x0

    .line 297
    .local v7, "inputStream":Ljava/io/InputStream;
    :try_start_2
    move-object v0, v14

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    .line 299
    .local v11, "responseCode":I
    const/16 v15, 0xc8

    if-lt v11, v15, :cond_4

    const/16 v15, 0xcc

    if-gt v11, v15, :cond_4

    .line 300
    move-object v0, v14

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 301
    const/4 v1, 0x1

    .line 307
    :goto_2
    if-eqz v7, :cond_5

    .line 308
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;

    invoke-direct {v15, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v10, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 309
    .local v10, "reader":Ljava/io/BufferedReader;
    const/4 v8, 0x0

    .line 310
    .local v8, "line":Ljava/lang/String;
    :goto_3
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 311
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v15, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    .line 318
    .end local v8    # "line":Ljava/lang/String;
    .end local v10    # "reader":Ljava/io/BufferedReader;
    .end local v11    # "responseCode":I
    :catch_1
    move-exception v4

    .line 319
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 320
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 290
    .end local v1    # "bret":Z
    .end local v2    # "bufferOut":[B
    .end local v3    # "bytes":I
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "inStream":Ljava/io/DataInputStream;
    .end local v7    # "inputStream":Ljava/io/InputStream;
    .end local v9    # "outStream":Ljava/io/DataOutputStream;
    .end local v12    # "uploadUrl":Ljava/lang/String;
    .end local v13    # "url":Ljava/net/URL;
    :catch_2
    move-exception v4

    .line 291
    .local v4, "e":Ljava/lang/Error;
    invoke-virtual {v4}, Ljava/lang/Error;->printStackTrace()V

    .line 292
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 303
    .end local v4    # "e":Ljava/lang/Error;
    .restart local v1    # "bret":Z
    .restart local v2    # "bufferOut":[B
    .restart local v3    # "bytes":I
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "inStream":Ljava/io/DataInputStream;
    .restart local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v9    # "outStream":Ljava/io/DataOutputStream;
    .restart local v11    # "responseCode":I
    .restart local v12    # "uploadUrl":Ljava/lang/String;
    .restart local v13    # "url":Ljava/net/URL;
    :cond_4
    :try_start_3
    move-object v0, v14

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    .line 304
    const/4 v1, 0x0

    goto :goto_2

    .line 315
    :cond_5
    move-object v0, v14

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 322
    .end local v11    # "responseCode":I
    :catch_3
    move-exception v4

    .line 323
    .restart local v4    # "e":Ljava/lang/Error;
    invoke-virtual {v4}, Ljava/lang/Error;->printStackTrace()V

    .line 324
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public static isDefaultABI()Z
    .locals 3

    .prologue
    .line 470
    invoke-static {}, Lcom/mqgame/lib/SUtility;->getABIPerfix()Ljava/lang/String;

    move-result-object v1

    .line 471
    .local v1, "szABI":Ljava/lang/String;
    sget-object v2, Lcom/mqgame/lib/SUtility;->SAT_DEFAULT_ABI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 472
    .local v0, "bDefaultABI":Z
    return v0
.end method

.method public static isLowABI()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 752
    :try_start_0
    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v3, "armeabi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_0

    .line 753
    const/4 v1, 0x1

    .line 763
    :cond_0
    :goto_0
    return v1

    .line 759
    :catch_0
    move-exception v0

    .line 760
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 762
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 763
    .local v0, "e":Ljava/lang/Error;
    goto :goto_0
.end method

.method public static isNeonSupport()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 477
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    const-string v5, "/proc/cpuinfo"

    invoke-direct {v2, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 478
    .local v2, "fr":Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 479
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 480
    .local v3, "text":Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_0

    .line 481
    const-string v5, "neon"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 482
    const/4 v4, 0x1

    .line 495
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "text":Ljava/lang/String;
    :cond_0
    :goto_1
    return v4

    .line 483
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "text":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    goto :goto_0

    .line 486
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "text":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 487
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 489
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 490
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 493
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 494
    .local v1, "e":Ljava/lang/Error;
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_1
.end method

.method public static isSuperVersion()I
    .locals 1

    .prologue
    .line 141
    sget-boolean v0, Lcom/mqgame/lib/SUtility;->gSupperVersion:Z

    if-eqz v0, :cond_0

    .line 142
    const/4 v0, 0x1

    .line 144
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVfpSupport()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 501
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    const-string v5, "/proc/cpuinfo"

    invoke-direct {v2, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 502
    .local v2, "fr":Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 503
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 504
    .local v3, "text":Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_0

    .line 505
    const-string v5, "vfp"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 506
    const/4 v4, 0x1

    .line 519
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "text":Ljava/lang/String;
    :cond_0
    :goto_1
    return v4

    .line 507
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "text":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    goto :goto_0

    .line 510
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "text":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 511
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 513
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 514
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 517
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 518
    .local v1, "e":Ljava/lang/Error;
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_1
.end method

.method public static listFilterApp()Ljava/util/Set;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 900
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 902
    .local v5, "res":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    new-instance v4, Lcom/mqgame/lib/SUtility$SIniReader;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mqgame/lib/SUtility;->getDataPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "filter.ini"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/mqgame/lib/SSDK;->Language:Ljava/lang/String;

    invoke-direct {v4, v6, v7}, Lcom/mqgame/lib/SUtility$SIniReader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    .local v4, "reader":Lcom/mqgame/lib/SUtility$SIniReader;
    const-string v6, "app"

    const-string v7, "Cnt"

    invoke-virtual {v4, v6, v7}, Lcom/mqgame/lib/SUtility$SIniReader;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 904
    .local v2, "myNum":I
    const/4 v3, 0x0

    .local v3, "nIdx":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 905
    const-string v6, "app"

    const-string v7, "t%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/mqgame/lib/SUtility$SIniReader;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 906
    .local v0, "curApp":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 904
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 909
    .end local v0    # "curApp":Ljava/lang/String;
    .end local v2    # "myNum":I
    .end local v3    # "nIdx":I
    .end local v4    # "reader":Lcom/mqgame/lib/SUtility$SIniReader;
    :catch_0
    move-exception v1

    .line 910
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 915
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-object v5

    .line 912
    :catch_1
    move-exception v1

    .line 913
    .local v1, "e":Ljava/lang/Error;
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_1
.end method

.method public static listInstalledApp()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 998
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 1000
    .local v6, "res":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    sget-object v7, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v5

    .line 1001
    .local v5, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 1003
    .local v4, "pack":Landroid/content/pm/PackageInfo;
    sget-object v7, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget-object v0, v7, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 1004
    .local v0, "activityInfo":[Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    .line 1006
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v7, v0

    if-ge v2, v7, :cond_0

    .line 1008
    aget-object v7, v0, v2

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1009
    aget-object v7, v0, v2

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 1006
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1014
    .end local v0    # "activityInfo":[Landroid/content/pm/ActivityInfo;
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "pack":Landroid/content/pm/PackageInfo;
    .end local v5    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catch_0
    move-exception v1

    .line 1015
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1021
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-object v6

    .line 1017
    :catch_1
    move-exception v1

    .line 1018
    .local v1, "e":Ljava/lang/Error;
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_1
.end method

.method public static listRunningApp()Ljava/util/Set;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1053
    const-string v9, "listRunning Apps"

    invoke-static {v9}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    .line 1054
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1056
    .local v4, "res":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    sget-object v9, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    const-string v10, "activity"

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1057
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/16 v9, 0x100

    invoke-virtual {v0, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v6

    .line 1058
    .local v6, "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1059
    .local v8, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v9, v8, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 1060
    .local v3, "obj":Ljava/lang/String;
    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1061
    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1062
    :cond_1
    iget-object v9, v8, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v8, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1064
    iget-object v9, v8, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 1065
    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1066
    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1077
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "obj":Ljava/lang/String;
    .end local v6    # "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v8    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :catch_0
    move-exception v1

    .line 1078
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1083
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-object v4

    .line 1070
    .restart local v0    # "activityManager":Landroid/app/ActivityManager;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v6    # "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_3
    const/16 v9, 0x100

    :try_start_1
    invoke-virtual {v0, v9}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v5

    .line 1071
    .local v5, "runningService":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 1072
    .local v7, "serviceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v9, v7, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 1073
    .restart local v3    # "obj":Ljava/lang/String;
    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 1074
    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1080
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "obj":Ljava/lang/String;
    .end local v5    # "runningService":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .end local v6    # "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v7    # "serviceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    :catch_1
    move-exception v1

    .line 1081
    .local v1, "e":Ljava/lang/Error;
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_1
.end method

.method public static loadFileAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 847
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v5, 0x3e8

    invoke-direct {v1, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 848
    .local v1, "fileData":Ljava/lang/StringBuffer;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 849
    .local v4, "reader":Ljava/io/BufferedReader;
    const/16 v5, 0x400

    new-array v0, v5, [C

    .line 850
    .local v0, "buf":[C
    const/4 v2, 0x0

    .line 851
    .local v2, "numRead":I
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    .line 852
    const/4 v5, 0x0

    invoke-static {v0, v5, v2}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v3

    .line 853
    .local v3, "readData":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 855
    .end local v3    # "readData":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 856
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static native nativeLog(Ljava/lang/String;)V
.end method

.method public static preDestroy()V
    .locals 2

    .prologue
    .line 2081
    :try_start_0
    sget-object v1, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    check-cast v1, Lcom/mqgame/lib/SNativeActivity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 2089
    :goto_0
    return-void

    .line 2083
    :catch_0
    move-exception v0

    .line 2084
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2086
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 2087
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method

.method public static refreshBatteryStatus()V
    .locals 8

    .prologue
    .line 721
    :try_start_0
    new-instance v3, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 722
    .local v3, "ifilter":Landroid/content/IntentFilter;
    sget-object v6, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 725
    .local v1, "batteryStatus":Landroid/content/Intent;
    const-string v6, "level"

    const/4 v7, -0x1

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 726
    .local v4, "level":I
    const-string v6, "scale"

    const/4 v7, -0x1

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 728
    .local v5, "scale":I
    int-to-float v6, v4

    int-to-float v7, v5

    div-float v0, v6, v7

    .line 729
    .local v0, "batteryPct":F
    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v6, v0

    float-to-int v6, v6

    sput v6, Lcom/mqgame/lib/SUtility;->gbatteryP:I

    .line 732
    const-string v6, "temperature"

    const/4 v7, -0x1

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/mqgame/lib/SUtility;->gbatteryTemperature:I

    .line 734
    const-string v6, "status"

    const/4 v7, -0x1

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/mqgame/lib/SUtility;->gbatteryStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 742
    .end local v0    # "batteryPct":F
    .end local v1    # "batteryStatus":Landroid/content/Intent;
    .end local v4    # "level":I
    .end local v5    # "scale":I
    :goto_0
    return-void

    .line 736
    :catch_0
    move-exception v2

    .line 737
    .local v2, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 739
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 740
    .local v2, "e":Ljava/lang/Error;
    goto :goto_0
.end method

.method public static requestDestroy()V
    .locals 5

    .prologue
    .line 2093
    :try_start_0
    sget-object v0, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    check-cast v0, Lcom/mqgame/lib/SNativeActivity;

    .line 2095
    .local v0, "Native":Lcom/mqgame/lib/SNativeActivity;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2096
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "ExitApp"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2097
    invoke-virtual {v0, v2}, Lcom/mqgame/lib/SNativeActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2098
    invoke-virtual {v0}, Lcom/mqgame/lib/SNativeActivity;->finish()V

    .line 2099
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    .line 2100
    const-string v3, "sog_debug"

    const-string v4, "SOG ToRequest Destroy"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 2108
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 2102
    :catch_0
    move-exception v1

    .line 2103
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2105
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 2106
    .local v1, "e":Ljava/lang/Error;
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method

.method private static saveScreenBrightness(I)V
    .locals 4
    .param p0, "paramInt"    # I

    .prologue
    .line 2011
    :try_start_0
    const-string v2, "sog"

    const-string v3, "Chging screen brightness"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    sget-object v2, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 2020
    :goto_0
    return-void

    .line 2014
    :catch_0
    move-exception v1

    .line 2015
    .local v1, "localException":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2017
    .end local v1    # "localException":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 2018
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method

.method public static sdkDeinit()I
    .locals 1

    .prologue
    .line 210
    invoke-static {}, Lcom/mqgame/lib/SSDK;->deinit()I

    move-result v0

    return v0
.end method

.method public static sdkEnterBBS(Ljava/lang/String;)V
    .locals 0
    .param p0, "useless"    # Ljava/lang/String;

    .prologue
    .line 204
    invoke-static {p0}, Lcom/mqgame/lib/SSDK;->enterBBS(Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public static sdkFeedback(Ljava/lang/String;)V
    .locals 0
    .param p0, "useless"    # Ljava/lang/String;

    .prologue
    .line 207
    invoke-static {p0}, Lcom/mqgame/lib/SSDK;->feedback(Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public static sdkInit(Ljava/lang/String;)V
    .locals 1
    .param p0, "gameId"    # Ljava/lang/String;

    .prologue
    .line 184
    sget-object v0, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    invoke-static {v0, p0}, Lcom/mqgame/lib/SSDK;->init(Landroid/app/Activity;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public static sdkLogin(Ljava/lang/String;)V
    .locals 1
    .param p0, "ext"    # Ljava/lang/String;

    .prologue
    .line 187
    sget-object v0, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    invoke-static {v0, p0}, Lcom/mqgame/lib/SSDK;->login(Landroid/app/Activity;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public static sdkLogout(Ljava/lang/String;)V
    .locals 0
    .param p0, "useless"    # Ljava/lang/String;

    .prologue
    .line 190
    invoke-static {p0}, Lcom/mqgame/lib/SSDK;->logout(Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public static sdkPay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "orderId"    # Ljava/lang/String;
    .param p1, "amount"    # Ljava/lang/String;
    .param p2, "customInfo"    # Ljava/lang/String;
    .param p3, "productName"    # Ljava/lang/String;
    .param p4, "productDesc"    # Ljava/lang/String;
    .param p5, "productId"    # Ljava/lang/String;
    .param p6, "rate"    # Ljava/lang/String;
    .param p7, "notifyURL"    # Ljava/lang/String;
    .param p8, "ext"    # Ljava/lang/String;

    .prologue
    .line 198
    invoke-static/range {p0 .. p8}, Lcom/mqgame/lib/SSDK;->pay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public static sdkSetAuth(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "token"    # Ljava/lang/String;
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 193
    invoke-static {p0, p1}, Lcom/mqgame/lib/SSDK;->setAuth(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public static sdkUserCenter(Ljava/lang/String;)V
    .locals 0
    .param p0, "useless"    # Ljava/lang/String;

    .prologue
    .line 201
    invoke-static {p0}, Lcom/mqgame/lib/SSDK;->userCenter(Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public static setScreenBrightness(I)V
    .locals 6
    .param p0, "paramInt"    # I

    .prologue
    .line 2028
    :try_start_0
    sget-object v4, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 2029
    .local v3, "localWindow":Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 2030
    .local v2, "localLayoutParams":Landroid/view/WindowManager$LayoutParams;
    int-to-float v4, p0

    const/high16 v5, 0x437f0000    # 255.0f

    div-float v1, v4, v5

    .line 2031
    .local v1, "f":F
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 2032
    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 2040
    .end local v1    # "f":F
    .end local v2    # "localLayoutParams":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "localWindow":Landroid/view/Window;
    :goto_0
    return-void

    .line 2034
    :catch_0
    move-exception v0

    .line 2035
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2037
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 2038
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method

.method public static setScreenMode(I)V
    .locals 4
    .param p0, "paramInt"    # I

    .prologue
    .line 1997
    :try_start_0
    const-string v2, "sog"

    const-string v3, "Chging screen mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    sget-object v2, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    invoke-static {v2, v3, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 2005
    :goto_0
    return-void

    .line 1999
    :catch_0
    move-exception v1

    .line 2000
    .local v1, "localException":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2002
    .end local v1    # "localException":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 2003
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method

.method public static setup(Landroid/app/Activity;)Z
    .locals 6
    .param p0, "pActivity"    # Landroid/app/Activity;

    .prologue
    .line 102
    sput-object p0, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    .line 103
    sget v3, Lcom/mqgame/lib/SUtility;->UserBrightness:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 104
    invoke-static {}, Lcom/mqgame/lib/SUtility;->getScreenBrightness()I

    move-result v3

    sput v3, Lcom/mqgame/lib/SUtility;->UserBrightness:I

    .line 108
    :cond_0
    :try_start_0
    sget-object v3, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 109
    .local v0, "activityManager":Landroid/app/ActivityManager;
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 110
    .local v2, "outInfo":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 111
    iget-wide v3, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const/16 v5, 0xa

    shr-long/2addr v3, v5

    long-to-int v3, v3

    sput v3, Lcom/mqgame/lib/SUtility;->gMem:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 120
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v2    # "outInfo":Landroid/app/ActivityManager$MemoryInfo;
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 113
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 116
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 117
    .local v1, "e":Ljava/lang/Error;
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method

.method public static setupScreen()V
    .locals 3

    .prologue
    .line 777
    :try_start_0
    sget-object v1, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    check-cast v1, Lcom/mqgame/lib/SNativeActivity;

    .line 778
    .local v1, "nv":Lcom/mqgame/lib/SNativeActivity;
    invoke-virtual {v1}, Lcom/mqgame/lib/SNativeActivity;->setupScreen()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 785
    :goto_0
    return-void

    .line 782
    :catch_0
    move-exception v0

    .line 783
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0

    .line 780
    .end local v0    # "e":Ljava/lang/Error;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public static setupUnhandledException()V
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 127
    :cond_0
    new-instance v0, Lcom/mqgame/lib/SUtility$1;

    invoke-direct {v0}, Lcom/mqgame/lib/SUtility$1;-><init>()V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto :goto_0
.end method

.method public static shake(I)V
    .locals 5
    .param p0, "nminis"    # I

    .prologue
    .line 1654
    :try_start_0
    sget-object v0, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    .line 1655
    .local v0, "Na":Landroid/app/Activity;
    const-string v3, "vibrator"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 1656
    .local v2, "vib":Landroid/os/Vibrator;
    if-eqz v2, :cond_0

    .line 1657
    int-to-long v3, p0

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 1665
    .end local v0    # "Na":Landroid/app/Activity;
    .end local v2    # "vib":Landroid/os/Vibrator;
    :cond_0
    :goto_0
    return-void

    .line 1659
    :catch_0
    move-exception v1

    .line 1660
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1662
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1663
    .local v1, "e":Ljava/lang/Error;
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method

.method public static showWait(Z)V
    .locals 4
    .param p0, "show"    # Z

    .prologue
    .line 1941
    :try_start_0
    sget-object v0, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    check-cast v0, Lcom/mqgame/lib/SNativeActivity;

    .line 1942
    .local v0, "Native":Lcom/mqgame/lib/SNativeActivity;
    invoke-virtual {v0, p0}, Lcom/mqgame/lib/SNativeActivity;->showWait(Z)V

    .line 1943
    const-string v2, "sog"

    const-string v3, "engine wait show"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 1953
    .end local v0    # "Native":Lcom/mqgame/lib/SNativeActivity;
    :goto_0
    return-void

    .line 1945
    :catch_0
    move-exception v1

    .line 1946
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "sog"

    const-string v3, "wait show failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1949
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1950
    .local v1, "e":Ljava/lang/Error;
    const-string v2, "sog"

    const-string v3, "wait show failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method

.method public static showWeb(ZLjava/lang/String;Z)V
    .locals 6
    .param p0, "bshow"    # Z
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bUseWeb"    # Z

    .prologue
    .line 1918
    :try_start_0
    sget-object v0, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    check-cast v0, Lcom/mqgame/lib/SNativeActivity;

    .line 1919
    .local v0, "Native":Lcom/mqgame/lib/SNativeActivity;
    if-eqz p2, :cond_1

    .line 1920
    invoke-virtual {v0, p1, p0}, Lcom/mqgame/lib/SNativeActivity;->showWeb(Ljava/lang/String;Z)V

    .line 1921
    const-string v3, "sog"

    const-string v4, "show Web"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    .end local v0    # "Native":Lcom/mqgame/lib/SNativeActivity;
    :cond_0
    :goto_0
    return-void

    .line 1924
    .restart local v0    # "Native":Lcom/mqgame/lib/SNativeActivity;
    :cond_1
    invoke-static {p1}, Lcom/mqgame/lib/SUtility;->executeHttpGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1925
    .local v2, "result":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1926
    const-string v3, "OnPlayerEvent.IERet(\'%s\')"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mqgame/lib/SUtility;->excFromUIThread(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1929
    .end local v0    # "Native":Lcom/mqgame/lib/SNativeActivity;
    .end local v2    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1930
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "sog"

    const-string v4, "show Web failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1931
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1933
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1934
    .local v1, "e":Ljava/lang/Error;
    const-string v3, "sog"

    const-string v4, "show Web failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method

.method public static takeScreenShot(Landroid/view/View;)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 1674
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1675
    invoke-virtual {p0}, Landroid/view/View;->buildDrawingCache()V

    .line 1676
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 1677
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 1679
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mqgame/lib/SUtility;->getDataPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "screenshot.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1680
    .local v2, "out":Ljava/io/FileOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x32

    invoke-virtual {v0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    .line 1695
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 1681
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 1682
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 1689
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1690
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1684
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_2
    move-exception v1

    .line 1685
    .local v1, "e":Ljava/lang/Error;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 1692
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "e":Ljava/lang/Error;
    :catch_3
    move-exception v1

    .line 1693
    .restart local v1    # "e":Ljava/lang/Error;
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method

.method public static toggleKeyboard(ZIILjava/lang/String;)V
    .locals 2
    .param p0, "show"    # Z
    .param p1, "cursor"    # I
    .param p2, "mask"    # I
    .param p3, "curText"    # Ljava/lang/String;

    .prologue
    .line 1905
    :try_start_0
    sget-object v0, Lcom/mqgame/lib/SUtility;->gCurActivity:Landroid/app/Activity;

    check-cast v0, Lcom/mqgame/lib/SNativeActivity;

    .line 1906
    .local v0, "Native":Lcom/mqgame/lib/SNativeActivity;
    invoke-virtual {v0, p0, p3, p1, p2}, Lcom/mqgame/lib/SNativeActivity;->showVKeyboard(ZLjava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 1914
    .end local v0    # "Native":Lcom/mqgame/lib/SNativeActivity;
    :goto_0
    return-void

    .line 1908
    :catch_0
    move-exception v1

    .line 1909
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1911
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1912
    .local v1, "e":Ljava/lang/Error;
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method

.method public static native triggerInput()V
.end method

.method public static tryhttpDownloadExtractTo(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "destDir"    # Ljava/lang/String;
    .param p1, "dwonloadUrl"    # Ljava/lang/String;

    .prologue
    .line 387
    const/4 v0, 0x0

    .local v0, "nTryTimes":I
    :goto_0
    sget v1, Lcom/mqgame/lib/SUtility;->SAT_DOWNLOAD_TRYTIMES:I

    if-ge v0, v1, :cond_1

    .line 389
    invoke-static {p0, p1}, Lcom/mqgame/lib/SUtility;->httpDownloadExtractTo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 390
    const/4 v1, 0x1

    .line 394
    :goto_1
    return v1

    .line 392
    :cond_0
    const-string v1, "SOG_DEBUG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retrying httpDownload failed from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 394
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static native unCompressData(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static unnZipFolder(Ljava/io/File;Ljava/lang/String;)I
    .locals 17
    .param p0, "fSrc"    # Ljava/io/File;
    .param p1, "outPathString"    # Ljava/lang/String;

    .prologue
    .line 524
    const/4 v8, 0x0

    .line 526
    .local v8, "nextracted":I
    :try_start_0
    new-instance v6, Ljava/util/zip/ZipInputStream;

    new-instance v14, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v14}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 528
    .local v6, "inZip":Ljava/util/zip/ZipInputStream;
    const-string v10, ""

    .line 530
    .local v10, "szName":Ljava/lang/String;
    :goto_0
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v13

    .local v13, "zipEntry":Ljava/util/zip/ZipEntry;
    if-eqz v13, :cond_3

    .line 531
    invoke-virtual {v13}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    .line 533
    invoke-virtual {v13}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 536
    const/4 v14, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v10, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 537
    new-instance v5, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v5, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 538
    .local v5, "folder":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 568
    .end local v5    # "folder":Ljava/io/File;
    .end local v6    # "inZip":Ljava/util/zip/ZipInputStream;
    .end local v10    # "szName":Ljava/lang/String;
    .end local v13    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v3

    .line 569
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 570
    const/4 v14, 0x0

    .line 577
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    return v14

    .line 541
    .restart local v6    # "inZip":Ljava/util/zip/ZipInputStream;
    .restart local v10    # "szName":Ljava/lang/String;
    .restart local v13    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_0
    :try_start_1
    invoke-virtual {v13}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v11

    .line 542
    .local v11, "uCRC":J
    new-instance v4, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v4, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 543
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 545
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 546
    .local v9, "out":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    .line 548
    .local v2, "curCRC32":Ljava/util/zip/CRC32;
    const/16 v14, 0x1000

    new-array v1, v14, [B

    .line 550
    .local v1, "buffer":[B
    :goto_2
    invoke-virtual {v6, v1}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v7

    .local v7, "len":I
    const/4 v14, -0x1

    if-eq v7, v14, :cond_1

    .line 552
    const/4 v14, 0x0

    invoke-virtual {v2, v1, v14, v7}, Ljava/util/zip/CRC32;->update([BII)V

    .line 553
    const/4 v14, 0x0

    invoke-virtual {v9, v1, v14, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 554
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 572
    .end local v1    # "buffer":[B
    .end local v2    # "curCRC32":Ljava/util/zip/CRC32;
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "inZip":Ljava/util/zip/ZipInputStream;
    .end local v7    # "len":I
    .end local v9    # "out":Ljava/io/FileOutputStream;
    .end local v10    # "szName":Ljava/lang/String;
    .end local v11    # "uCRC":J
    .end local v13    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_1
    move-exception v3

    .line 573
    .local v3, "e":Ljava/lang/Error;
    invoke-virtual {v3}, Ljava/lang/Error;->printStackTrace()V

    .line 574
    const/4 v14, 0x0

    goto :goto_1

    .line 556
    .end local v3    # "e":Ljava/lang/Error;
    .restart local v1    # "buffer":[B
    .restart local v2    # "curCRC32":Ljava/util/zip/CRC32;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "inZip":Ljava/util/zip/ZipInputStream;
    .restart local v7    # "len":I
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v10    # "szName":Ljava/lang/String;
    .restart local v11    # "uCRC":J
    .restart local v13    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_1
    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 558
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v14

    cmp-long v14, v11, v14

    if-eqz v14, :cond_2

    .line 559
    const-string v14, "SOG_FATTAERROR"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "UnCompress CRC Failed:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_2
    add-int/lit8 v8, v8, 0x1

    .line 563
    goto/16 :goto_0

    .line 566
    .end local v1    # "buffer":[B
    .end local v2    # "curCRC32":Ljava/util/zip/CRC32;
    .end local v4    # "file":Ljava/io/File;
    .end local v7    # "len":I
    .end local v9    # "out":Ljava/io/FileOutputStream;
    .end local v11    # "uCRC":J
    :cond_3
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1

    move v14, v8

    .line 577
    goto :goto_1
.end method

.method public static voiceClearRecord(ILjava/lang/String;)V
    .locals 3
    .param p0, "nType"    # I
    .param p1, "szVoiceId"    # Ljava/lang/String;

    .prologue
    .line 2264
    :try_start_0
    invoke-static {}, Lcom/linekong/voice/VoiceManager;->getInstance()Lcom/linekong/voice/VoiceManager;

    move-result-object v1

    .line 2265
    .local v1, "mgr":Lcom/linekong/voice/VoiceManager;
    if-nez v1, :cond_0

    .line 2279
    .end local v1    # "mgr":Lcom/linekong/voice/VoiceManager;
    :goto_0
    return-void

    .line 2267
    .restart local v1    # "mgr":Lcom/linekong/voice/VoiceManager;
    :cond_0
    const-string v2, "all"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2268
    invoke-virtual {v1}, Lcom/linekong/voice/VoiceManager;->clearCache()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2273
    .end local v1    # "mgr":Lcom/linekong/voice/VoiceManager;
    :catch_0
    move-exception v0

    .line 2274
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2271
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "mgr":Lcom/linekong/voice/VoiceManager;
    :cond_1
    :try_start_1
    invoke-virtual {v1, p1, p0}, Lcom/linekong/voice/VoiceManager;->clearRecord(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2276
    .end local v1    # "mgr":Lcom/linekong/voice/VoiceManager;
    :catch_1
    move-exception v0

    .line 2277
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method

.method public static voiceInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "szGameID"    # Ljava/lang/String;
    .param p1, "szAccount"    # Ljava/lang/String;
    .param p2, "szURL"    # Ljava/lang/String;

    .prologue
    .line 2169
    :try_start_0
    invoke-static {}, Lcom/linekong/voice/VoiceManager;->getInstance()Lcom/linekong/voice/VoiceManager;

    move-result-object v1

    .line 2170
    .local v1, "mgr":Lcom/linekong/voice/VoiceManager;
    if-nez v1, :cond_0

    .line 2182
    .end local v1    # "mgr":Lcom/linekong/voice/VoiceManager;
    :goto_0
    return-void

    .line 2172
    .restart local v1    # "mgr":Lcom/linekong/voice/VoiceManager;
    :cond_0
    invoke-virtual {v1, p0}, Lcom/linekong/voice/VoiceManager;->setGameID(Ljava/lang/String;)V

    .line 2173
    invoke-virtual {v1, p1}, Lcom/linekong/voice/VoiceManager;->setUserID(Ljava/lang/String;)V

    .line 2174
    invoke-virtual {v1, p2}, Lcom/linekong/voice/VoiceManager;->setServerUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2176
    .end local v1    # "mgr":Lcom/linekong/voice/VoiceManager;
    :catch_0
    move-exception v0

    .line 2177
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2179
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 2180
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method

.method public static voiceStartPlay(ILjava/lang/String;)V
    .locals 3
    .param p0, "nType"    # I
    .param p1, "szVoiceID"    # Ljava/lang/String;

    .prologue
    .line 2225
    :try_start_0
    invoke-static {}, Lcom/linekong/voice/VoiceManager;->getInstance()Lcom/linekong/voice/VoiceManager;

    move-result-object v1

    .line 2226
    .local v1, "mgr":Lcom/linekong/voice/VoiceManager;
    if-nez v1, :cond_0

    .line 2246
    .end local v1    # "mgr":Lcom/linekong/voice/VoiceManager;
    :goto_0
    return-void

    .line 2228
    .restart local v1    # "mgr":Lcom/linekong/voice/VoiceManager;
    :cond_0
    new-instance v2, Lcom/mqgame/lib/SUtility$5;

    invoke-direct {v2}, Lcom/mqgame/lib/SUtility$5;-><init>()V

    invoke-virtual {v1, p1, p0, v2}, Lcom/linekong/voice/VoiceManager;->startPlay(Ljava/lang/String;ILcom/linekong/voice/VoiceManager$PlayerListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2240
    .end local v1    # "mgr":Lcom/linekong/voice/VoiceManager;
    :catch_0
    move-exception v0

    .line 2241
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2243
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 2244
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method

.method public static voiceStartRecord(I)V
    .locals 3
    .param p0, "nType"    # I

    .prologue
    .line 2186
    :try_start_0
    invoke-static {}, Lcom/linekong/voice/VoiceManager;->getInstance()Lcom/linekong/voice/VoiceManager;

    move-result-object v1

    .line 2187
    .local v1, "mgr":Lcom/linekong/voice/VoiceManager;
    if-nez v1, :cond_0

    .line 2206
    .end local v1    # "mgr":Lcom/linekong/voice/VoiceManager;
    :goto_0
    return-void

    .line 2189
    .restart local v1    # "mgr":Lcom/linekong/voice/VoiceManager;
    :cond_0
    new-instance v2, Lcom/mqgame/lib/SUtility$4;

    invoke-direct {v2}, Lcom/mqgame/lib/SUtility$4;-><init>()V

    invoke-virtual {v1, v2, p0}, Lcom/linekong/voice/VoiceManager;->startRecord(Lcom/linekong/voice/VoiceManager$RecordListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2200
    .end local v1    # "mgr":Lcom/linekong/voice/VoiceManager;
    :catch_0
    move-exception v0

    .line 2201
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2203
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 2204
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method

.method public static voiceStopPlay()V
    .locals 2

    .prologue
    .line 2249
    :try_start_0
    invoke-static {}, Lcom/linekong/voice/VoiceManager;->getInstance()Lcom/linekong/voice/VoiceManager;

    move-result-object v1

    .line 2250
    .local v1, "mgr":Lcom/linekong/voice/VoiceManager;
    if-nez v1, :cond_0

    .line 2260
    :goto_0
    return-void

    .line 2252
    :cond_0
    invoke-virtual {v1}, Lcom/linekong/voice/VoiceManager;->stopPlay()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2254
    :catch_0
    move-exception v0

    .line 2255
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2257
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 2258
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method

.method public static voiceStopRecord()V
    .locals 2

    .prologue
    .line 2210
    :try_start_0
    invoke-static {}, Lcom/linekong/voice/VoiceManager;->getInstance()Lcom/linekong/voice/VoiceManager;

    move-result-object v1

    .line 2211
    .local v1, "mgr":Lcom/linekong/voice/VoiceManager;
    if-nez v1, :cond_0

    .line 2221
    :goto_0
    return-void

    .line 2213
    :cond_0
    invoke-virtual {v1}, Lcom/linekong/voice/VoiceManager;->stopRecord()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2215
    :catch_0
    move-exception v0

    .line 2216
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2218
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 2219
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method

.method public static zipChkValid(Ljava/lang/String;)Z
    .locals 12
    .param p0, "Path"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 147
    const/4 v5, 0x0

    .line 149
    .local v5, "nextracted":I
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v10}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 151
    .local v3, "inZip":Ljava/util/zip/ZipInputStream;
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v8

    .local v8, "zipEntry":Ljava/util/zip/ZipEntry;
    if-eqz v8, :cond_4

    .line 152
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_0

    .line 154
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v6

    .line 155
    .local v6, "uCRC":J
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 157
    .local v1, "curCRC32":Ljava/util/zip/CRC32;
    const/16 v10, 0x1000

    new-array v0, v10, [B

    .line 159
    .local v0, "buffer":[B
    :goto_1
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v4

    .local v4, "len":I
    const/4 v10, -0x1

    if-eq v4, v10, :cond_2

    .line 161
    const/4 v10, 0x0

    invoke-virtual {v1, v0, v10, v4}, Ljava/util/zip/CRC32;->update([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 173
    .end local v0    # "buffer":[B
    .end local v1    # "curCRC32":Ljava/util/zip/CRC32;
    .end local v3    # "inZip":Ljava/util/zip/ZipInputStream;
    .end local v4    # "len":I
    .end local v6    # "uCRC":J
    .end local v8    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v2

    .line 174
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 179
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    return v9

    .line 163
    .restart local v0    # "buffer":[B
    .restart local v1    # "curCRC32":Ljava/util/zip/CRC32;
    .restart local v3    # "inZip":Ljava/util/zip/ZipInputStream;
    .restart local v4    # "len":I
    .restart local v6    # "uCRC":J
    .restart local v8    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_2
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-lez v10, :cond_3

    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v10

    cmp-long v10, v6, v10

    if-nez v10, :cond_1

    .line 167
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 168
    goto :goto_0

    .line 170
    .end local v0    # "buffer":[B
    .end local v1    # "curCRC32":Ljava/util/zip/CRC32;
    .end local v4    # "len":I
    .end local v6    # "uCRC":J
    :cond_4
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    .line 171
    const/4 v9, 0x1

    goto :goto_2

    .line 177
    .end local v3    # "inZip":Ljava/util/zip/ZipInputStream;
    .end local v8    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_1
    move-exception v2

    .line 178
    .local v2, "e":Ljava/lang/Error;
    invoke-virtual {v2}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_2
.end method

.method public static zipFiles(Ljava/util/LinkedList;Ljava/util/LinkedList;Ljava/lang/String;)Z
    .locals 13
    .param p2, "targetPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "fileList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .local p1, "entryList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 1519
    :try_start_0
    new-instance v9, Ljava/util/zip/ZipOutputStream;

    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v12}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1520
    .local v9, "outZip":Ljava/util/zip/ZipOutputStream;
    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1521
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1522
    .local v5, "itE":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1523
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1524
    .local v7, "lcurFile":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1525
    .local v6, "lEntry":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1526
    .local v1, "curFile":Ljava/io/File;
    new-instance v10, Ljava/util/zip/ZipEntry;

    invoke-direct {v10, v6}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 1527
    .local v10, "zipEntry":Ljava/util/zip/ZipEntry;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1528
    .local v3, "inputStream":Ljava/io/FileInputStream;
    invoke-virtual {v9, v10}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 1530
    const/16 v12, 0x1000

    new-array v0, v12, [B

    .line 1531
    .local v0, "buffer":[B
    :goto_1
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    .local v8, "len":I
    const/4 v12, -0x1

    if-eq v8, v12, :cond_0

    .line 1532
    const/4 v12, 0x0

    invoke-virtual {v9, v0, v12, v8}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 1539
    .end local v0    # "buffer":[B
    .end local v1    # "curFile":Ljava/io/File;
    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "itE":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v6    # "lEntry":Ljava/lang/String;
    .end local v7    # "lcurFile":Ljava/lang/String;
    .end local v8    # "len":I
    .end local v9    # "outZip":Ljava/util/zip/ZipOutputStream;
    .end local v10    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v2

    .line 1540
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 1547
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2
    return v11

    .line 1533
    .restart local v0    # "buffer":[B
    .restart local v1    # "curFile":Ljava/io/File;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v5    # "itE":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v6    # "lEntry":Ljava/lang/String;
    .restart local v7    # "lcurFile":Ljava/lang/String;
    .restart local v8    # "len":I
    .restart local v9    # "outZip":Ljava/util/zip/ZipOutputStream;
    .restart local v10    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_0
    :try_start_1
    invoke-virtual {v9}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1543
    .end local v0    # "buffer":[B
    .end local v1    # "curFile":Ljava/io/File;
    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "itE":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v6    # "lEntry":Ljava/lang/String;
    .end local v7    # "lcurFile":Ljava/lang/String;
    .end local v8    # "len":I
    .end local v9    # "outZip":Ljava/util/zip/ZipOutputStream;
    .end local v10    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_1
    move-exception v2

    .line 1544
    .local v2, "e":Ljava/lang/Error;
    invoke-virtual {v2}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_2

    .line 1536
    .end local v2    # "e":Ljava/lang/Error;
    .restart local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v5    # "itE":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v9    # "outZip":Ljava/util/zip/ZipOutputStream;
    :cond_1
    :try_start_2
    invoke-virtual {v9}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 1537
    invoke-virtual {v9}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1

    .line 1547
    const/4 v11, 0x1

    goto :goto_2
.end method

.class public Lcom/jodo/common/JodoDebugConfig;
.super Ljava/lang/Object;
.source "JodoDebugConfig.java"


# static fields
.field private static preferencesName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "JodoplayDebugConfig"

    sput-object v0, Lcom/jodo/common/JodoDebugConfig;->preferencesName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDebugConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defVal"    # Ljava/lang/String;

    .prologue
    .line 59
    sget-object v1, Lcom/jodo/common/JodoDebugConfig;->preferencesName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 60
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static parseConfig(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 51
    sget-object v3, Lcom/jodo/common/JodoDebugConfig;->preferencesName:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 52
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 53
    .local v0, "editorAfter":Landroid/content/SharedPreferences$Editor;
    const-string v3, "_"

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 54
    .local v2, "underlineNum":I
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 55
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 56
    return-void
.end method

.method public static readConfig(Landroid/content/Context;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 21
    .local v0, "appinfo":Landroid/content/pm/ApplicationInfo;
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 22
    .local v6, "sourceDir":Ljava/lang/String;
    const/4 v8, 0x0

    .line 23
    .local v8, "zipFile":Ljava/util/zip/ZipFile;
    sget-object v10, Lcom/jodo/common/JodoDebugConfig;->preferencesName:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 24
    .local v7, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 25
    .local v2, "editorBefore":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 26
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 28
    :try_start_0
    new-instance v9, Ljava/util/zip/ZipFile;

    invoke-direct {v9, v6}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .end local v8    # "zipFile":Ljava/util/zip/ZipFile;
    .local v9, "zipFile":Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 30
    .local v3, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 31
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    .line 32
    .local v4, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    .line 33
    .local v5, "entryName":Ljava/lang/String;
    const-string v10, "META-INF/jodoplay_"

    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 34
    invoke-static {p0, v5}, Lcom/jodo/common/JodoDebugConfig;->parseConfig(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 37
    .end local v3    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    .end local v5    # "entryName":Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v8, v9

    .line 38
    .end local v9    # "zipFile":Ljava/util/zip/ZipFile;
    .local v1, "e":Ljava/io/IOException;
    .restart local v8    # "zipFile":Ljava/util/zip/ZipFile;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    if-eqz v8, :cond_1

    .line 42
    :try_start_3
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 48
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    return-void

    .line 40
    .end local v8    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v3    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .restart local v9    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_2
    if-eqz v9, :cond_4

    .line 42
    :try_start_4
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v8, v9

    .line 45
    .end local v9    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v8    # "zipFile":Ljava/util/zip/ZipFile;
    goto :goto_2

    .line 43
    .end local v8    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v9    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_1
    move-exception v1

    .line 44
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v8, v9

    .line 45
    .end local v9    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v8    # "zipFile":Ljava/util/zip/ZipFile;
    goto :goto_2

    .line 43
    .end local v3    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :catch_2
    move-exception v1

    .line 44
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 40
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_3
    if-eqz v8, :cond_3

    .line 42
    :try_start_5
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 45
    :cond_3
    :goto_4
    throw v10

    .line 43
    :catch_3
    move-exception v1

    .line 44
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 40
    .end local v1    # "e":Ljava/io/IOException;
    .end local v8    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v9    # "zipFile":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v10

    move-object v8, v9

    .end local v9    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v8    # "zipFile":Ljava/util/zip/ZipFile;
    goto :goto_3

    .line 37
    :catch_4
    move-exception v1

    goto :goto_1

    .end local v8    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v3    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .restart local v9    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_4
    move-object v8, v9

    .end local v9    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v8    # "zipFile":Ljava/util/zip/ZipFile;
    goto :goto_2
.end method

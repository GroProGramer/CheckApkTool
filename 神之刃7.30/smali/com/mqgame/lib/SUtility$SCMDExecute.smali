.class public Lcom/mqgame/lib/SUtility$SCMDExecute;
.super Ljava/lang/Object;
.source "SUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mqgame/lib/SUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SCMDExecute"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "cmd"    # [Ljava/lang/String;
    .param p2, "workdirectory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1609
    monitor-enter p0

    :try_start_0
    const-string v7, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1611
    .local v7, "result":Ljava/lang/String;
    :try_start_1
    new-instance v0, Ljava/lang/ProcessBuilder;

    invoke-direct {v0, p1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 1612
    .local v0, "builder":Ljava/lang/ProcessBuilder;
    const/4 v3, 0x0

    .line 1613
    .local v3, "in":Ljava/io/InputStream;
    if-eqz p2, :cond_0

    .line 1614
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/ProcessBuilder;->directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    .line 1615
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 1616
    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v5

    .line 1617
    .local v5, "process":Ljava/lang/Process;
    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 1618
    const/16 v8, 0x400

    new-array v6, v8, [B

    .line 1619
    .local v6, "re":[B
    const/4 v8, 0x0

    const/16 v9, 0x400

    invoke-virtual {v3, v6, v8, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 1620
    .local v4, "nLen":I
    :goto_0
    const/4 v8, -0x1

    if-eq v4, v8, :cond_0

    .line 1621
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v9, v6, v10, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1622
    const/4 v8, 0x0

    const/16 v9, 0x400

    invoke-virtual {v3, v6, v8, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    goto :goto_0

    .line 1625
    .end local v4    # "nLen":I
    .end local v5    # "process":Ljava/lang/Process;
    .end local v6    # "re":[B
    :cond_0
    if-eqz v3, :cond_1

    .line 1626
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1634
    .end local v0    # "builder":Ljava/lang/ProcessBuilder;
    .end local v3    # "in":Ljava/io/InputStream;
    :cond_1
    :goto_1
    monitor-exit p0

    return-object v7

    .line 1628
    :catch_0
    move-exception v2

    .line 1629
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1609
    .end local v2    # "ex":Ljava/lang/Exception;
    .end local v7    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 1631
    .restart local v7    # "result":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 1632
    .local v1, "e":Ljava/lang/Error;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

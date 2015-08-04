.class public final Lcom/jodo/paysdk/http/a/c;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/jodo/paysdk/http/a/e;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/jodo/paysdk/http/a/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/jodo/paysdk/http/a/e;

.field c:Lcom/jodo/paysdk/http/a/d;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:I

.field g:Z

.field h:Z

.field i:Ljava/io/File;

.field j:I

.field k:I

.field l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/jodo/paysdk/http/a/c;->m:Ljava/util/HashMap;

    return-void
.end method

.method private varargs a([Lcom/jodo/paysdk/http/a/e;)Ljava/lang/Void;
    .locals 8

    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/jodo/paysdk/http/a/c;->b:Lcom/jodo/paysdk/http/a/e;

    iget-object v0, p0, Lcom/jodo/paysdk/http/a/c;->b:Lcom/jodo/paysdk/http/a/e;

    invoke-virtual {v0}, Lcom/jodo/paysdk/http/a/e;->a()Ljava/net/URL;

    move-result-object v1

    iget-object v0, p0, Lcom/jodo/paysdk/http/a/c;->b:Lcom/jodo/paysdk/http/a/e;

    iget-object v0, v0, Lcom/jodo/paysdk/http/a/e;->b:Landroid/content/Context;

    iput-object v0, p0, Lcom/jodo/paysdk/http/a/c;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/jodo/paysdk/http/a/c;->b:Lcom/jodo/paysdk/http/a/e;

    iget v0, v0, Lcom/jodo/paysdk/http/a/e;->c:I

    iput v0, p0, Lcom/jodo/paysdk/http/a/c;->f:I

    iget-object v0, p0, Lcom/jodo/paysdk/http/a/c;->b:Lcom/jodo/paysdk/http/a/e;

    iget-object v0, v0, Lcom/jodo/paysdk/http/a/e;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/jodo/paysdk/http/a/c;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/jodo/paysdk/http/a/c;->b:Lcom/jodo/paysdk/http/a/e;

    invoke-virtual {v0}, Lcom/jodo/paysdk/http/a/e;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/paysdk/http/a/c;->e:Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/jodo/paysdk/http/a/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".tmp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/jodo/paysdk/http/a/c;->d:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jodo/paysdk/http/a/c;->i:Ljava/io/File;

    sget-object v0, Lcom/jodo/paysdk/http/a/c;->m:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/jodo/paysdk/http/a/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v5}, Lcom/jodo/paysdk/http/a/c;->cancel(Z)Z

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    sget-object v0, Lcom/jodo/paysdk/http/a/c;->m:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/jodo/paysdk/http/a/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/jodo/paysdk/http/a/c;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jodo/paysdk/http/a/c;->c:Lcom/jodo/paysdk/http/a/d;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jodo/paysdk/http/a/c;->c:Lcom/jodo/paysdk/http/a/d;

    invoke-interface {v0}, Lcom/jodo/paysdk/http/a/d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    :try_start_1
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iget-object v3, p0, Lcom/jodo/paysdk/http/a/c;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/jodo/paysdk/http/a/b;->a(Landroid/content/Context;)Lcom/jodo/paysdk/http/a/b;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/jodo/paysdk/http/a/b;->b(Ljava/lang/String;)Lcom/jodo/paysdk/http/a/a;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/jodo/paysdk/http/a/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/jodo/paysdk/http/a/k;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "If-Modified-Since"

    invoke-virtual {v1}, Lcom/jodo/paysdk/http/a/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v1}, Lcom/jodo/paysdk/http/a/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/jodo/paysdk/http/a/k;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "If-None-Match"

    invoke-virtual {v1}, Lcom/jodo/paysdk/http/a/a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jodo/paysdk/http/a/c;->g:Z

    iput v3, p0, Lcom/jodo/paysdk/http/a/c;->k:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    move-object v3, v2

    :goto_2
    if-eqz v1, :cond_7

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    :cond_8
    :goto_3
    iget-boolean v0, p0, Lcom/jodo/paysdk/http/a/c;->h:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/jodo/paysdk/http/a/c;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/http/a/c;->i:Ljava/io/File;

    invoke-virtual {v4, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :sswitch_0
    :try_start_3
    iget-object v1, p0, Lcom/jodo/paysdk/http/a/c;->i:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/jodo/paysdk/http/a/c;->i:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    iget-object v1, p0, Lcom/jodo/paysdk/http/a/c;->i:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    :cond_9
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/high16 v5, 0x80000

    invoke-direct {v3, v1, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/high16 v6, 0x80000

    invoke-direct {v1, v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    iput v0, p0, Lcom/jodo/paysdk/http/a/c;->j:I

    invoke-direct {p0, v3, v1}, Lcom/jodo/paysdk/http/a/c;->a(Ljava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_4
    :try_start_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jodo/paysdk/http/a/c;->g:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v1, :cond_a

    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    :cond_a
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_b
    :goto_5
    iget-boolean v0, p0, Lcom/jodo/paysdk/http/a/c;->h:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/jodo/paysdk/http/a/c;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/http/a/c;->i:Ljava/io/File;

    invoke-virtual {v4, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto/16 :goto_0

    :sswitch_1
    :try_start_8
    new-instance v5, Ljava/io/File;

    invoke-virtual {v1}, Lcom/jodo/paysdk/http/a/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/high16 v1, 0x80000

    invoke-direct {v3, v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v6, p0, Lcom/jodo/paysdk/http/a/c;->i:Ljava/io/File;

    invoke-direct {v0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/high16 v6, 0x80000

    invoke-direct {v1, v0, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v0, v5

    iput v0, p0, Lcom/jodo/paysdk/http/a/c;->j:I

    invoke-direct {p0, v3, v1}, Lcom/jodo/paysdk/http/a/c;->a(Ljava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_6
    if-eqz v2, :cond_c

    :try_start_b
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    :cond_c
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    :cond_d
    :goto_7
    iget-boolean v1, p0, Lcom/jodo/paysdk/http/a/c;->h:Z

    if-nez v1, :cond_e

    iget-boolean v1, p0, Lcom/jodo/paysdk/http/a/c;->g:Z

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/jodo/paysdk/http/a/c;->i:Ljava/io/File;

    invoke-virtual {v4, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_e
    throw v0

    :catch_2
    move-exception v1

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v2, v1

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object v2, v1

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto/16 :goto_4

    :catch_5
    move-exception v0

    move-object v1, v2

    goto/16 :goto_4

    :catch_6
    move-exception v0

    goto/16 :goto_3

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x130 -> :sswitch_1
    .end sparse-switch
.end method

.method private a(Ljava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;)V
    .locals 13

    const/high16 v0, 0x80000

    new-array v8, v0, [B

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v8}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    iget-boolean v6, p0, Lcom/jodo/paysdk/http/a/c;->h:Z

    if-nez v6, :cond_2

    const/4 v6, 0x0

    invoke-virtual {p2, v8, v6, v5}, Ljava/io/BufferedOutputStream;->write([BII)V

    add-int/2addr v3, v5

    add-int/2addr v0, v5

    int-to-double v5, v3

    iget v7, p0, Lcom/jodo/paysdk/http/a/c;->j:I

    int-to-double v9, v7

    div-double/2addr v5, v9

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    mul-double/2addr v5, v9

    double-to-int v5, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-int v4, v5, v4

    if-lez v4, :cond_1

    sub-long v9, v6, v1

    const-wide/16 v11, 0x3e8

    cmp-long v4, v9, v11

    if-lez v4, :cond_0

    int-to-float v0, v0

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v0, v4

    const/high16 v4, 0x44800000    # 1024.0f

    div-float/2addr v0, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v4

    sub-long v1, v6, v1

    long-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/jodo/paysdk/http/a/c;->l:I

    const/4 v0, 0x0

    move-wide v1, v6

    :cond_0
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-virtual {p0, v4}, Lcom/jodo/paysdk/http/a/c;->publishProgress([Ljava/lang/Object;)V

    :cond_1
    move v4, v5

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/jodo/paysdk/http/a/c;->h:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/jodo/paysdk/http/a/c;->j:I

    if-ne v3, v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/jodo/paysdk/http/a/c;->publishProgress([Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/jodo/paysdk/http/a/c;->m:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jodo/paysdk/http/a/c;->m:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/paysdk/http/a/c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/jodo/paysdk/http/a/c;->h:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/jodo/paysdk/http/a/e;

    invoke-direct {p0, p1}, Lcom/jodo/paysdk/http/a/c;->a([Lcom/jodo/paysdk/http/a/e;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final onCancelled()V
    .locals 2

    sget-object v0, Lcom/jodo/paysdk/http/a/c;->m:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jodo/paysdk/http/a/c;->m:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/jodo/paysdk/http/a/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    return-void
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    sget-object v0, Lcom/jodo/paysdk/http/a/c;->m:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jodo/paysdk/http/a/c;->m:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/jodo/paysdk/http/a/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected final onPreExecute()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method

.method protected final synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 1

    check-cast p1, [Ljava/lang/Integer;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    return-void
.end method

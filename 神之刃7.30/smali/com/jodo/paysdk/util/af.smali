.class public final Lcom/jodo/paysdk/util/af;
.super Ljava/lang/Object;


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/jodo/paysdk/util/af;->a:I

    return-void
.end method

.method public static a(Ljava/lang/String;Z)Lcom/jodo/paysdk/util/ag;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1}, Lcom/jodo/paysdk/util/af;->a([Ljava/lang/String;Z)Lcom/jodo/paysdk/util/ag;

    move-result-object v0

    return-object v0
.end method

.method private static a([Ljava/lang/String;Z)Lcom/jodo/paysdk/util/ag;
    .locals 10

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    if-eqz p1, :cond_1

    const-string v1, "su"

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    :try_start_1
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-virtual {v8}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    if-gtz v0, :cond_2

    const/4 v1, 0x0

    :try_start_2
    aget-object v1, p0, v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/io/DataOutputStream;->write([B)V

    const-string v1, "\n"

    invoke-virtual {v5, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :try_start_3
    const-string v1, "sh"
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_2
    :try_start_4
    const-string v0, "exit\n"

    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v8}, Ljava/lang/Process;->waitFor()I

    move-result v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v8}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_a
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v8}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_b
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :goto_2
    :try_start_8
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_2

    :catch_0
    move-exception v4

    :goto_3
    :try_start_9
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz v5, :cond_3

    :try_start_a
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V

    :cond_3
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    :cond_4
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    :cond_5
    :goto_4
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V

    :cond_6
    :goto_5
    new-instance v4, Lcom/jodo/paysdk/util/ag;

    if-nez v1, :cond_10

    move-object v1, v3

    :goto_6
    if-nez v0, :cond_11

    move-object v0, v3

    :goto_7
    invoke-direct {v4, v2, v1, v0}, Lcom/jodo/paysdk/util/ag;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_7
    :goto_8
    :try_start_b
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_8

    :catch_1
    move-exception v4

    :goto_9
    :try_start_c
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    if-eqz v5, :cond_8

    :try_start_d
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V

    :cond_8
    if-eqz v7, :cond_9

    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    :cond_9
    if-eqz v6, :cond_a

    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    :cond_a
    :goto_a
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V

    goto :goto_5

    :cond_b
    :try_start_e
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2

    :goto_b
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V

    goto :goto_5

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    :catch_3
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_4
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    :catchall_0
    move-exception v0

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    :goto_c
    if-eqz v5, :cond_c

    :try_start_f
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V

    :cond_c
    if-eqz v7, :cond_d

    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    :cond_d
    if-eqz v3, :cond_e

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    :cond_e
    :goto_d
    if-eqz v8, :cond_f

    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V

    :cond_f
    throw v0

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    :cond_10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v5, v3

    move-object v7, v3

    goto :goto_c

    :catchall_2
    move-exception v0

    move-object v7, v3

    goto :goto_c

    :catchall_3
    move-exception v0

    goto :goto_c

    :catchall_4
    move-exception v0

    move-object v3, v6

    goto :goto_c

    :catch_6
    move-exception v0

    move-object v4, v0

    move-object v5, v3

    move-object v1, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move-object v0, v3

    goto :goto_9

    :catch_7
    move-exception v0

    move-object v4, v0

    move-object v5, v3

    move-object v1, v3

    move-object v6, v3

    move-object v7, v3

    move-object v0, v3

    goto :goto_9

    :catch_8
    move-exception v0

    move-object v4, v0

    move-object v1, v3

    move-object v6, v3

    move-object v7, v3

    move-object v0, v3

    goto/16 :goto_9

    :catch_9
    move-exception v0

    move-object v4, v0

    move-object v6, v3

    move-object v7, v3

    move-object v0, v3

    goto/16 :goto_9

    :catch_a
    move-exception v4

    move-object v6, v3

    move-object v7, v3

    goto/16 :goto_9

    :catch_b
    move-exception v4

    move-object v6, v3

    goto/16 :goto_9

    :catch_c
    move-exception v0

    move-object v4, v0

    move-object v5, v3

    move-object v1, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move-object v0, v3

    goto/16 :goto_3

    :catch_d
    move-exception v0

    move-object v4, v0

    move-object v5, v3

    move-object v1, v3

    move-object v6, v3

    move-object v7, v3

    move-object v0, v3

    goto/16 :goto_3

    :catch_e
    move-exception v0

    move-object v4, v0

    move-object v1, v3

    move-object v6, v3

    move-object v7, v3

    move-object v0, v3

    goto/16 :goto_3

    :catch_f
    move-exception v0

    move-object v4, v0

    move-object v6, v3

    move-object v7, v3

    move-object v0, v3

    goto/16 :goto_3

    :catch_10
    move-exception v4

    move-object v6, v3

    move-object v7, v3

    goto/16 :goto_3

    :catch_11
    move-exception v4

    move-object v6, v3

    goto/16 :goto_3
.end method

.method public static a()Z
    .locals 8

    const/4 v7, 0x5

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget v2, Lcom/jodo/paysdk/util/af;->a:I

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    sget v2, Lcom/jodo/paysdk/util/af;->a:I

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    new-array v3, v7, [Ljava/lang/String;

    const-string v2, "/system/bin/"

    aput-object v2, v3, v1

    const-string v2, "/system/xbin/"

    aput-object v2, v3, v0

    const/4 v2, 0x2

    const-string v4, "/system/sbin/"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string v4, "/sbin/"

    aput-object v4, v3, v2

    const/4 v2, 0x4

    const-string v4, "/vendor/bin/"

    aput-object v4, v3, v2

    move v2, v1

    :goto_1
    if-ge v2, v7, :cond_2

    :try_start_0
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v3, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "su"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x1

    sput v2, Lcom/jodo/paysdk/util/af;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    sput v1, Lcom/jodo/paysdk/util/af;->a:I

    move v0, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

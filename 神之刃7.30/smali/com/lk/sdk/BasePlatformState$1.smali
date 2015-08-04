.class Lcom/lk/sdk/BasePlatformState$1;
.super Ljava/lang/Object;
.source "BasePlatformState.java"

# interfaces
.implements Lcom/lk/sdk/Utils$CheckListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lk/sdk/BasePlatformState;->check(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lk/sdk/BasePlatformState;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/lk/sdk/BasePlatformState;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lk/sdk/BasePlatformState$1;->this$0:Lcom/lk/sdk/BasePlatformState;

    iput-object p2, p0, Lcom/lk/sdk/BasePlatformState$1;->val$context:Landroid/content/Context;

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Ljava/lang/String;)V
    .locals 11
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 412
    if-nez p1, :cond_0

    .line 463
    :goto_0
    return-void

    .line 416
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 417
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v8, "gameid"

    iget-object v9, p0, Lcom/lk/sdk/BasePlatformState$1;->this$0:Lcom/lk/sdk/BasePlatformState;

    # invokes: Lcom/lk/sdk/BasePlatformState;->getPlatform()Ljava/lang/String;
    invoke-static {v9}, Lcom/lk/sdk/BasePlatformState;->access$0(Lcom/lk/sdk/BasePlatformState;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 418
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object p1

    .line 425
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    :try_start_1
    new-instance v7, Ljava/net/URL;

    # getter for: Lcom/lk/sdk/BasePlatformState;->mCheckUrl:Ljava/lang/String;
    invoke-static {}, Lcom/lk/sdk/BasePlatformState;->access$1()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 426
    .local v7, "uri":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 428
    .local v2, "httpConn":Ljava/net/HttpURLConnection;
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 429
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 430
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 431
    const-string v8, "POST"

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 433
    const-string v8, "UTF-8"

    invoke-virtual {p1, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 434
    .local v5, "requestStringBytes":[B
    const-string v8, "Content-length"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    array-length v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const-string v8, "Content-Type"

    const-string v9, "text/plain"

    invoke-virtual {v2, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const-string v8, "Connection"

    const-string v9, "Keep-Alive"

    invoke-virtual {v2, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const-string v8, "Charset"

    const-string v9, "UTF-8"

    invoke-virtual {v2, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 440
    .local v4, "outputStream":Ljava/io/OutputStream;
    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    .line 441
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 443
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 444
    .local v6, "responseCode":I
    const/16 v8, 0xc8

    if-ne v8, v6, :cond_1

    .line 445
    const-string v8, "BasePlatformState"

    const-string v9, "upload check result successful!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 447
    :try_start_2
    iget-object v8, p0, Lcom/lk/sdk/BasePlatformState$1;->val$context:Landroid/content/Context;

    const-string v9, "lk-check-config"

    .line 448
    const/4 v10, 0x0

    .line 447
    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 449
    .local v1, "fos":Ljava/io/FileOutputStream;
    const-string v8, "init"

    const-string v9, "UTF-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 450
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    .line 451
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 452
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v8, "BasePlatformState"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 458
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "httpConn":Ljava/net/HttpURLConnection;
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .end local v5    # "requestStringBytes":[B
    .end local v6    # "responseCode":I
    .end local v7    # "uri":Ljava/net/URL;
    :catch_1
    move-exception v0

    .line 459
    .local v0, "e":Ljava/net/MalformedURLException;
    const-string v8, "BasePlatformState"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Check result MalformedURLException:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 419
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :catch_2
    move-exception v0

    .line 420
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "BasePlatformState"

    const-string v9, "Check():json object error!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 456
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "httpConn":Ljava/net/HttpURLConnection;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v5    # "requestStringBytes":[B
    .restart local v6    # "responseCode":I
    .restart local v7    # "uri":Ljava/net/URL;
    :cond_1
    :try_start_4
    const-string v8, "BasePlatformState"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "upload check result failed!"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 460
    .end local v2    # "httpConn":Ljava/net/HttpURLConnection;
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .end local v5    # "requestStringBytes":[B
    .end local v6    # "responseCode":I
    .end local v7    # "uri":Ljava/net/URL;
    :catch_3
    move-exception v0

    .line 461
    .local v0, "e":Ljava/io/IOException;
    const-string v8, "BasePlatformState"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Check result IOException:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

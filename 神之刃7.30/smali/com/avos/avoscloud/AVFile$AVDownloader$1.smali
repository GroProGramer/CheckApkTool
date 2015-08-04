.class Lcom/avos/avoscloud/AVFile$AVDownloader$1;
.super Lcom/loopj/android/http/BinaryHttpResponseHandler;
.source "AVFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVFile$AVDownloader;->doWork(Ljava/lang/String;)Lcom/avos/avoscloud/AVException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVFile$AVDownloader;

.field final synthetic val$errors:[Lcom/avos/avoscloud/AVException;

.field final synthetic val$etag:Ljava/lang/String;

.field final synthetic val$urlStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVFile$AVDownloader;[Ljava/lang/String;[Lcom/avos/avoscloud/AVException;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # [Ljava/lang/String;

    .prologue
    .line 839
    iput-object p1, p0, Lcom/avos/avoscloud/AVFile$AVDownloader$1;->this$0:Lcom/avos/avoscloud/AVFile$AVDownloader;

    iput-object p3, p0, Lcom/avos/avoscloud/AVFile$AVDownloader$1;->val$errors:[Lcom/avos/avoscloud/AVException;

    iput-object p4, p0, Lcom/avos/avoscloud/AVFile$AVDownloader$1;->val$urlStr:Ljava/lang/String;

    iput-object p5, p0, Lcom/avos/avoscloud/AVFile$AVDownloader$1;->val$etag:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/loopj/android/http/BinaryHttpResponseHandler;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 3
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "data"    # [B
    .param p4, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 871
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile$AVDownloader$1;->val$errors:[Lcom/avos/avoscloud/AVException;

    const/4 v1, 0x0

    new-instance v2, Lcom/avos/avoscloud/AVException;

    invoke-direct {v2, p4}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    aput-object v2, v0, v1

    .line 872
    return-void
.end method

.method public onProgress(II)V
    .locals 5
    .param p1, "bytesWritten"    # I
    .param p2, "totalSize"    # I

    .prologue
    .line 876
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile$AVDownloader$1;->this$0:Lcom/avos/avoscloud/AVFile$AVDownloader;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    mul-int/lit8 v3, p1, 0x62

    int-to-float v3, v3

    int-to-float v4, p2

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    # invokes: Lcom/avos/avoscloud/AVFile$AVDownloader;->publishProgress([Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVFile$AVDownloader;->access$900(Lcom/avos/avoscloud/AVFile$AVDownloader;[Ljava/lang/Object;)V

    .line 877
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 7
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "data"    # [B

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 843
    const/4 v1, 0x0

    .line 844
    .local v1, "fileMd5":Ljava/lang/String;
    iget-object v5, p0, Lcom/avos/avoscloud/AVFile$AVDownloader$1;->this$0:Lcom/avos/avoscloud/AVFile$AVDownloader;

    # getter for: Lcom/avos/avoscloud/AVFile$AVDownloader;->parseFile:Lcom/avos/avoscloud/AVFile;
    invoke-static {v5}, Lcom/avos/avoscloud/AVFile$AVDownloader;->access$200(Lcom/avos/avoscloud/AVFile$AVDownloader;)Lcom/avos/avoscloud/AVFile;

    move-result-object v5

    # invokes: Lcom/avos/avoscloud/AVFile;->getFileSum()Ljava/lang/String;
    invoke-static {v5}, Lcom/avos/avoscloud/AVFile;->access$300(Lcom/avos/avoscloud/AVFile;)Ljava/lang/String;

    move-result-object v3

    .line 845
    .local v3, "metaFileSum":Ljava/lang/String;
    const/16 v5, 0x130

    if-ne p1, v5, :cond_4

    .line 846
    iget-object v5, p0, Lcom/avos/avoscloud/AVFile$AVDownloader$1;->this$0:Lcom/avos/avoscloud/AVFile$AVDownloader;

    # getter for: Lcom/avos/avoscloud/AVFile$AVDownloader;->parseFile:Lcom/avos/avoscloud/AVFile;
    invoke-static {v5}, Lcom/avos/avoscloud/AVFile$AVDownloader;->access$200(Lcom/avos/avoscloud/AVFile$AVDownloader;)Lcom/avos/avoscloud/AVFile;

    move-result-object v5

    # invokes: Lcom/avos/avoscloud/AVFile;->fetchCacheData()[B
    invoke-static {v5}, Lcom/avos/avoscloud/AVFile;->access$400(Lcom/avos/avoscloud/AVFile;)[B

    move-result-object v0

    .line 847
    .local v0, "cacheData":[B
    if-eqz v0, :cond_3

    array-length v5, v0

    if-lez v5, :cond_3

    .line 848
    iget-object v5, p0, Lcom/avos/avoscloud/AVFile$AVDownloader$1;->this$0:Lcom/avos/avoscloud/AVFile$AVDownloader;

    # getter for: Lcom/avos/avoscloud/AVFile$AVDownloader;->parseFile:Lcom/avos/avoscloud/AVFile;
    invoke-static {v5}, Lcom/avos/avoscloud/AVFile$AVDownloader;->access$200(Lcom/avos/avoscloud/AVFile$AVDownloader;)Lcom/avos/avoscloud/AVFile;

    move-result-object v5

    # setter for: Lcom/avos/avoscloud/AVFile;->data:[B
    invoke-static {v5, v0}, Lcom/avos/avoscloud/AVFile;->access$502(Lcom/avos/avoscloud/AVFile;[B)[B

    .line 849
    iget-object v5, p0, Lcom/avos/avoscloud/AVFile$AVDownloader$1;->val$errors:[Lcom/avos/avoscloud/AVException;

    aput-object v6, v5, v4

    .line 858
    .end local v0    # "cacheData":[B
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/avos/avoscloud/AVFile$AVDownloader$1;->this$0:Lcom/avos/avoscloud/AVFile$AVDownloader;

    # getter for: Lcom/avos/avoscloud/AVFile$AVDownloader;->parseFile:Lcom/avos/avoscloud/AVFile;
    invoke-static {v5}, Lcom/avos/avoscloud/AVFile$AVDownloader;->access$200(Lcom/avos/avoscloud/AVFile$AVDownloader;)Lcom/avos/avoscloud/AVFile;

    move-result-object v5

    # getter for: Lcom/avos/avoscloud/AVFile;->data:[B
    invoke-static {v5}, Lcom/avos/avoscloud/AVFile;->access$500(Lcom/avos/avoscloud/AVFile;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/avos/avoscloud/AVUtils;->computeMD5([B)Ljava/lang/String;

    move-result-object v1

    .line 859
    if-eqz v3, :cond_5

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const/4 v2, 0x1

    .line 860
    .local v2, "isFileSumNotMatch":Z
    :goto_1
    if-eqz v2, :cond_1

    .line 861
    iget-object v5, p0, Lcom/avos/avoscloud/AVFile$AVDownloader$1;->this$0:Lcom/avos/avoscloud/AVFile$AVDownloader;

    # getter for: Lcom/avos/avoscloud/AVFile$AVDownloader;->parseFile:Lcom/avos/avoscloud/AVFile;
    invoke-static {v5}, Lcom/avos/avoscloud/AVFile$AVDownloader;->access$200(Lcom/avos/avoscloud/AVFile$AVDownloader;)Lcom/avos/avoscloud/AVFile;

    move-result-object v5

    # setter for: Lcom/avos/avoscloud/AVFile;->data:[B
    invoke-static {v5, v6}, Lcom/avos/avoscloud/AVFile;->access$502(Lcom/avos/avoscloud/AVFile;[B)[B

    .line 862
    iget-object v5, p0, Lcom/avos/avoscloud/AVFile$AVDownloader$1;->val$errors:[Lcom/avos/avoscloud/AVException;

    invoke-static {}, Lcom/avos/avoscloud/AVErrorUtils;->fileDownloadInConsistentFailureException()Lcom/avos/avoscloud/AVException;

    move-result-object v6

    aput-object v6, v5, v4

    .line 864
    :cond_1
    if-nez v2, :cond_2

    iget-object v4, p0, Lcom/avos/avoscloud/AVFile$AVDownloader$1;->val$etag:Ljava/lang/String;

    invoke-static {v4}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 865
    iget-object v4, p0, Lcom/avos/avoscloud/AVFile$AVDownloader$1;->this$0:Lcom/avos/avoscloud/AVFile$AVDownloader;

    # getter for: Lcom/avos/avoscloud/AVFile$AVDownloader;->parseFile:Lcom/avos/avoscloud/AVFile;
    invoke-static {v4}, Lcom/avos/avoscloud/AVFile$AVDownloader;->access$200(Lcom/avos/avoscloud/AVFile$AVDownloader;)Lcom/avos/avoscloud/AVFile;

    move-result-object v4

    iget-object v5, p0, Lcom/avos/avoscloud/AVFile$AVDownloader$1;->val$etag:Ljava/lang/String;

    # invokes: Lcom/avos/avoscloud/AVFile;->cacheFile([BLjava/lang/String;)V
    invoke-static {v4, p3, v5}, Lcom/avos/avoscloud/AVFile;->access$800(Lcom/avos/avoscloud/AVFile;[BLjava/lang/String;)V

    .line 867
    .end local v2    # "isFileSumNotMatch":Z
    :cond_2
    :goto_2
    return-void

    .line 850
    .restart local v0    # "cacheData":[B
    :cond_3
    iget-object v5, p0, Lcom/avos/avoscloud/AVFile$AVDownloader$1;->this$0:Lcom/avos/avoscloud/AVFile$AVDownloader;

    # getter for: Lcom/avos/avoscloud/AVFile$AVDownloader;->retries:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v5}, Lcom/avos/avoscloud/AVFile$AVDownloader;->access$600(Lcom/avos/avoscloud/AVFile$AVDownloader;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v5

    if-lez v5, :cond_0

    .line 851
    iget-object v4, p0, Lcom/avos/avoscloud/AVFile$AVDownloader$1;->this$0:Lcom/avos/avoscloud/AVFile$AVDownloader;

    # getter for: Lcom/avos/avoscloud/AVFile$AVDownloader;->parseFile:Lcom/avos/avoscloud/AVFile;
    invoke-static {v4}, Lcom/avos/avoscloud/AVFile$AVDownloader;->access$200(Lcom/avos/avoscloud/AVFile$AVDownloader;)Lcom/avos/avoscloud/AVFile;

    move-result-object v4

    # invokes: Lcom/avos/avoscloud/AVFile;->removeCacheTag()Z
    invoke-static {v4}, Lcom/avos/avoscloud/AVFile;->access$700(Lcom/avos/avoscloud/AVFile;)Z

    .line 852
    iget-object v4, p0, Lcom/avos/avoscloud/AVFile$AVDownloader$1;->this$0:Lcom/avos/avoscloud/AVFile$AVDownloader;

    iget-object v5, p0, Lcom/avos/avoscloud/AVFile$AVDownloader$1;->val$urlStr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/avos/avoscloud/AVFile$AVDownloader;->doWork(Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    goto :goto_2

    .line 855
    .end local v0    # "cacheData":[B
    :cond_4
    const/16 v5, 0xc8

    if-ne p1, v5, :cond_0

    .line 856
    iget-object v5, p0, Lcom/avos/avoscloud/AVFile$AVDownloader$1;->this$0:Lcom/avos/avoscloud/AVFile$AVDownloader;

    # getter for: Lcom/avos/avoscloud/AVFile$AVDownloader;->parseFile:Lcom/avos/avoscloud/AVFile;
    invoke-static {v5}, Lcom/avos/avoscloud/AVFile$AVDownloader;->access$200(Lcom/avos/avoscloud/AVFile$AVDownloader;)Lcom/avos/avoscloud/AVFile;

    move-result-object v5

    # setter for: Lcom/avos/avoscloud/AVFile;->data:[B
    invoke-static {v5, p3}, Lcom/avos/avoscloud/AVFile;->access$502(Lcom/avos/avoscloud/AVFile;[B)[B

    goto :goto_0

    :cond_5
    move v2, v4

    .line 859
    goto :goto_1
.end method

.class Lcom/avos/avoscloud/AVFile$AVDownloader;
.super Landroid/os/AsyncTask;
.source "AVFile.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/AVFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AVDownloader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Lcom/avos/avoscloud/AVException;",
        ">;"
    }
.end annotation


# static fields
.field private static final client:Lcom/loopj/android/http/AsyncHttpClient;


# instance fields
.field private final dataCallback:Lcom/avos/avoscloud/GetDataCallback;

.field private etag:Ljava/lang/String;

.field private final parseFile:Lcom/avos/avoscloud/AVFile;

.field private final progressCallback:Lcom/avos/avoscloud/ProgressCallback;

.field private final retries:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 818
    new-instance v0, Lcom/loopj/android/http/SyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/SyncHttpClient;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/AVFile$AVDownloader;->client:Lcom/loopj/android/http/AsyncHttpClient;

    return-void
.end method

.method constructor <init>(Lcom/avos/avoscloud/AVFile;Lcom/avos/avoscloud/ProgressCallback;Lcom/avos/avoscloud/GetDataCallback;)V
    .locals 2
    .param p1, "parseFile"    # Lcom/avos/avoscloud/AVFile;
    .param p2, "progressCallback"    # Lcom/avos/avoscloud/ProgressCallback;
    .param p3, "dataCallback"    # Lcom/avos/avoscloud/GetDataCallback;

    .prologue
    .line 826
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 827
    iput-object p1, p0, Lcom/avos/avoscloud/AVFile$AVDownloader;->parseFile:Lcom/avos/avoscloud/AVFile;

    .line 828
    iput-object p3, p0, Lcom/avos/avoscloud/AVFile$AVDownloader;->dataCallback:Lcom/avos/avoscloud/GetDataCallback;

    .line 829
    iput-object p2, p0, Lcom/avos/avoscloud/AVFile$AVDownloader;->progressCallback:Lcom/avos/avoscloud/ProgressCallback;

    .line 830
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVFile$AVDownloader;->retries:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 831
    return-void
.end method

.method static synthetic access$200(Lcom/avos/avoscloud/AVFile$AVDownloader;)Lcom/avos/avoscloud/AVFile;
    .locals 1
    .param p0, "x0"    # Lcom/avos/avoscloud/AVFile$AVDownloader;

    .prologue
    .line 817
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile$AVDownloader;->parseFile:Lcom/avos/avoscloud/AVFile;

    return-object v0
.end method

.method static synthetic access$600(Lcom/avos/avoscloud/AVFile$AVDownloader;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/avos/avoscloud/AVFile$AVDownloader;

    .prologue
    .line 817
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile$AVDownloader;->retries:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$900(Lcom/avos/avoscloud/AVFile$AVDownloader;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/avos/avoscloud/AVFile$AVDownloader;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 817
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVFile$AVDownloader;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/avos/avoscloud/AVException;
    .locals 1
    .param p1, "sUrl"    # [Ljava/lang/String;

    .prologue
    .line 885
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVFile$AVDownloader;->doWork(Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 816
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVFile$AVDownloader;->doInBackground([Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    return-object v0
.end method

.method protected doWork(Ljava/lang/String;)Lcom/avos/avoscloud/AVException;
    .locals 9
    .param p1, "urlStr"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 834
    new-array v3, v8, [Lcom/avos/avoscloud/AVException;

    .line 835
    .local v3, "errors":[Lcom/avos/avoscloud/AVException;
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile$AVDownloader;->parseFile:Lcom/avos/avoscloud/AVFile;

    # invokes: Lcom/avos/avoscloud/AVFile;->fetchCacheTag()Ljava/lang/String;
    invoke-static {v0}, Lcom/avos/avoscloud/AVFile;->access$100(Lcom/avos/avoscloud/AVFile;)Ljava/lang/String;

    move-result-object v5

    .line 836
    .local v5, "etag":Ljava/lang/String;
    invoke-static {v5}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 837
    sget-object v0, Lcom/avos/avoscloud/AVFile$AVDownloader;->client:Lcom/loopj/android/http/AsyncHttpClient;

    const-string v1, "If-None-Match"

    invoke-virtual {v0, v1, v5}, Lcom/loopj/android/http/AsyncHttpClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    :cond_0
    sget-object v6, Lcom/avos/avoscloud/AVFile$AVDownloader;->client:Lcom/loopj/android/http/AsyncHttpClient;

    new-instance v0, Lcom/avos/avoscloud/AVFile$AVDownloader$1;

    new-array v2, v8, [Ljava/lang/String;

    const-string v1, ".*"

    aput-object v1, v2, v7

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/avos/avoscloud/AVFile$AVDownloader$1;-><init>(Lcom/avos/avoscloud/AVFile$AVDownloader;[Ljava/lang/String;[Lcom/avos/avoscloud/AVException;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, p1, v0}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 879
    new-array v0, v8, [Ljava/lang/Integer;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVFile$AVDownloader;->publishProgress([Ljava/lang/Object;)V

    .line 880
    aget-object v0, v3, v7

    if-eqz v0, :cond_1

    aget-object v0, v3, v7

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 3

    .prologue
    .line 908
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 909
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download cancel, file downloaded length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVFile$AVDownloader;->parseFile:Lcom/avos/avoscloud/AVFile;

    # invokes: Lcom/avos/avoscloud/AVFile;->localPath()Ljava/io/File;
    invoke-static {v1}, Lcom/avos/avoscloud/AVFile;->access$1000(Lcom/avos/avoscloud/AVFile;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    .line 910
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile$AVDownloader;->parseFile:Lcom/avos/avoscloud/AVFile;

    # invokes: Lcom/avos/avoscloud/AVFile;->localPath()Ljava/io/File;
    invoke-static {v0}, Lcom/avos/avoscloud/AVFile;->access$1000(Lcom/avos/avoscloud/AVFile;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 911
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile$AVDownloader;->parseFile:Lcom/avos/avoscloud/AVFile;

    const/4 v1, 0x0

    # setter for: Lcom/avos/avoscloud/AVFile;->data:[B
    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVFile;->access$502(Lcom/avos/avoscloud/AVFile;[B)[B

    .line 912
    return-void
.end method

.method protected onPostExecute(Lcom/avos/avoscloud/AVException;)V
    .locals 2
    .param p1, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 896
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 898
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile$AVDownloader;->dataCallback:Lcom/avos/avoscloud/GetDataCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/AVFile$AVDownloader;->dataCallback:Lcom/avos/avoscloud/GetDataCallback;

    iget-object v1, p0, Lcom/avos/avoscloud/AVFile$AVDownloader;->parseFile:Lcom/avos/avoscloud/AVFile;

    # getter for: Lcom/avos/avoscloud/AVFile;->data:[B
    invoke-static {v1}, Lcom/avos/avoscloud/AVFile;->access$500(Lcom/avos/avoscloud/AVFile;)[B

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/avos/avoscloud/GetDataCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 899
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 816
    check-cast p1, Lcom/avos/avoscloud/AVException;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVFile$AVDownloader;->onPostExecute(Lcom/avos/avoscloud/AVException;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 903
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 904
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3
    .param p1, "progress"    # [Ljava/lang/Integer;

    .prologue
    .line 890
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 891
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile$AVDownloader;->progressCallback:Lcom/avos/avoscloud/ProgressCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/AVFile$AVDownloader;->progressCallback:Lcom/avos/avoscloud/ProgressCallback;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/ProgressCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 892
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 816
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVFile$AVDownloader;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

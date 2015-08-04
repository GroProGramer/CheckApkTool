.class Lcom/lk/sdk/exception/CrashHandler$1;
.super Ljava/lang/Object;
.source "CrashHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lk/sdk/exception/CrashHandler;->createHttpRequest(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lk/sdk/exception/CrashHandler;

.field private final synthetic val$content:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lk/sdk/exception/CrashHandler;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lk/sdk/exception/CrashHandler$1;->this$0:Lcom/lk/sdk/exception/CrashHandler;

    iput-object p2, p0, Lcom/lk/sdk/exception/CrashHandler$1;->val$content:Ljava/lang/String;

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 355
    iget-object v0, p0, Lcom/lk/sdk/exception/CrashHandler$1;->this$0:Lcom/lk/sdk/exception/CrashHandler;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/lk/sdk/exception/CrashHandler$1;->val$content:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    # invokes: Lcom/lk/sdk/exception/CrashHandler;->uploadFile(Ljava/io/File;)V
    invoke-static {v0, v1}, Lcom/lk/sdk/exception/CrashHandler;->access$0(Lcom/lk/sdk/exception/CrashHandler;Ljava/io/File;)V

    .line 356
    return-void
.end method

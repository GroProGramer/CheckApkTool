.class Lcom/mqgame/lib/SLaunchActivity$5;
.super Ljava/lang/Object;
.source "SLaunchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mqgame/lib/SLaunchActivity;->chkInstall()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mqgame/lib/SLaunchActivity;

.field final synthetic val$ToPath:Ljava/lang/String;

.field final synthetic val$lsT:Ljava/util/LinkedList;


# direct methods
.method constructor <init>(Lcom/mqgame/lib/SLaunchActivity;Ljava/util/LinkedList;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1450
    iput-object p1, p0, Lcom/mqgame/lib/SLaunchActivity$5;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    iput-object p2, p0, Lcom/mqgame/lib/SLaunchActivity$5;->val$lsT:Ljava/util/LinkedList;

    iput-object p3, p0, Lcom/mqgame/lib/SLaunchActivity$5;->val$ToPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1452
    iget-object v3, p0, Lcom/mqgame/lib/SLaunchActivity$5;->val$lsT:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1453
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1454
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1456
    .local v2, "szPkName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mqgame/lib/SLaunchActivity$5;->val$ToPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mqgame/lib/SUtility;->unCompressData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1457
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uncompress failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    .line 1458
    const-string v3, "SOG Exception"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unCompressData failed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    iget-object v3, p0, Lcom/mqgame/lib/SLaunchActivity$5;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    const v4, 0x7f09014f

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v6, v5, v6}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 1468
    .end local v2    # "szPkName":Ljava/lang/String;
    :cond_0
    return-void

    .line 1464
    .restart local v2    # "szPkName":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1465
    .local v0, "delOper":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

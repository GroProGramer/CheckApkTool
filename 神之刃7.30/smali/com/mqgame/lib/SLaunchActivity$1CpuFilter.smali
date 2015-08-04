.class Lcom/mqgame/lib/SLaunchActivity$1CpuFilter;
.super Ljava/lang/Object;
.source "SLaunchActivity.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mqgame/lib/SLaunchActivity;->getNumCores()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CpuFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mqgame/lib/SLaunchActivity;


# direct methods
.method constructor <init>(Lcom/mqgame/lib/SLaunchActivity;)V
    .locals 0

    .prologue
    .line 2173
    iput-object p1, p0, Lcom/mqgame/lib/SLaunchActivity$1CpuFilter;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2
    .param p1, "pathname"    # Ljava/io/File;

    .prologue
    .line 2177
    const-string v0, "cpu[0-9]"

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2178
    const/4 v0, 0x1

    .line 2180
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class final Lcom/jodo/paysdk/d/j;
.super Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    const-string v0, "jodo unzip"

    const-string v1, "downloading..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/jodo/paysdk/d/g;->a()V

    return-void
.end method

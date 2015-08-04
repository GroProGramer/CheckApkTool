.class final Lcom/jodo/paysdk/y;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jodo/paysdk/g/g;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/y;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoginFailed(IILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onLoginFailed(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onLoginSuccess(Lcom/jodo/paysdk/account/JodoAccount;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/jodo/paysdk/y;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/jodo/paysdk/f/d;->a(Landroid/content/Context;Lcom/jodo/paysdk/account/JodoAccount;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.class final Lcom/jodo/paysdk/aa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# instance fields
.field final synthetic a:Lcom/jodo/paysdk/JodoLoginActivity;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/JodoLoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/aa;->a:Lcom/jodo/paysdk/JodoLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/facebook/Session;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jodo/paysdk/aa;->a:Lcom/jodo/paysdk/JodoLoginActivity;

    invoke-virtual {v0}, Lcom/jodo/paysdk/JodoLoginActivity;->getContext()Landroid/content/Context;

    new-instance v0, Lcom/jodo/paysdk/ab;

    invoke-direct {v0, p0}, Lcom/jodo/paysdk/ab;-><init>(Lcom/jodo/paysdk/aa;)V

    invoke-static {v0}, Lcom/jodo/paysdk/f/a;->a(Lcom/jodo/paysdk/f/c;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/aa;->a:Lcom/jodo/paysdk/JodoLoginActivity;

    const/4 v1, 0x0

    # invokes: Lcom/jodo/paysdk/JodoLoginActivity;->oauthPreLoginFailed(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/jodo/paysdk/JodoLoginActivity;->access$500(Lcom/jodo/paysdk/JodoLoginActivity;Ljava/lang/String;)V

    goto :goto_0
.end method

.class final Lcom/jodo/paysdk/ab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jodo/paysdk/f/c;


# instance fields
.field final synthetic a:Lcom/jodo/paysdk/aa;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/ab;->a:Lcom/jodo/paysdk/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/model/GraphUser;Lcom/facebook/Session;)V
    .locals 6

    invoke-interface {p1}, Lcom/facebook/model/GraphUser;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/facebook/Session;->getExpirationDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-static {v1}, Lcom/jodo/paysdk/util/e;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Lcom/jodo/paysdk/util/e;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/jodo/paysdk/ab;->a:Lcom/jodo/paysdk/aa;

    iget-object v3, v3, Lcom/jodo/paysdk/aa;->a:Lcom/jodo/paysdk/JodoLoginActivity;

    const/4 v4, 0x2

    # invokes: Lcom/jodo/paysdk/JodoLoginActivity;->oauthLogin(ILjava/lang/String;Ljava/lang/String;I)V
    invoke-static {v3, v4, v0, v1, v2}, Lcom/jodo/paysdk/JodoLoginActivity;->access$300(Lcom/jodo/paysdk/JodoLoginActivity;ILjava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/jodo/paysdk/ab;->a:Lcom/jodo/paysdk/aa;

    iget-object v0, v0, Lcom/jodo/paysdk/aa;->a:Lcom/jodo/paysdk/JodoLoginActivity;

    iget-object v1, p0, Lcom/jodo/paysdk/ab;->a:Lcom/jodo/paysdk/aa;

    iget-object v1, v1, Lcom/jodo/paysdk/aa;->a:Lcom/jodo/paysdk/JodoLoginActivity;

    const-string v2, "jodoplay_get_fackbook_account_message_failed"

    # invokes: Lcom/jodo/paysdk/JodoLoginActivity;->getStringByName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/jodo/paysdk/JodoLoginActivity;->access$400(Lcom/jodo/paysdk/JodoLoginActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/jodo/paysdk/JodoLoginActivity;->oauthPreLoginFailed(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/jodo/paysdk/JodoLoginActivity;->access$500(Lcom/jodo/paysdk/JodoLoginActivity;Ljava/lang/String;)V

    goto :goto_0
.end method

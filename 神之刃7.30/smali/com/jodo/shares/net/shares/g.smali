.class final Lcom/jodo/shares/net/shares/g;
.super Lcom/jodo/paysdk/http/f;


# instance fields
.field final synthetic a:Lcom/jodo/shares/net/shares/h;


# direct methods
.method constructor <init>(Lcom/jodo/shares/net/shares/h;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/shares/net/shares/g;->a:Lcom/jodo/shares/net/shares/h;

    invoke-direct {p0}, Lcom/jodo/paysdk/http/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/jodo/shares/net/shares/g;->a:Lcom/jodo/shares/net/shares/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/shares/net/shares/g;->a:Lcom/jodo/shares/net/shares/h;

    invoke-interface {v0, p1}, Lcom/jodo/shares/net/shares/h;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/jodo/shares/net/shares/g;->a:Lcom/jodo/shares/net/shares/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/shares/net/shares/g;->a:Lcom/jodo/shares/net/shares/h;

    invoke-interface {v0, p1}, Lcom/jodo/shares/net/shares/h;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

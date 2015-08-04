.class final Lcom/jodo/paysdk/http/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/jodo/paysdk/http/a/h;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/http/a/h;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/http/a/i;->b:Lcom/jodo/paysdk/http/a/h;

    iput-object p2, p0, Lcom/jodo/paysdk/http/a/i;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/jodo/paysdk/http/a/i;->b:Lcom/jodo/paysdk/http/a/h;

    iget-object v0, v0, Lcom/jodo/paysdk/http/a/h;->a:Lcom/jodo/paysdk/http/a/f;

    invoke-static {v0}, Lcom/jodo/paysdk/http/a/f;->b(Lcom/jodo/paysdk/http/a/f;)Lcom/jodo/paysdk/http/a/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/http/a/i;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/http/a/i;->b:Lcom/jodo/paysdk/http/a/h;

    iget-object v0, v0, Lcom/jodo/paysdk/http/a/h;->a:Lcom/jodo/paysdk/http/a/f;

    invoke-static {v0}, Lcom/jodo/paysdk/http/a/f;->b(Lcom/jodo/paysdk/http/a/f;)Lcom/jodo/paysdk/http/a/j;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/paysdk/http/a/i;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/jodo/paysdk/http/a/j;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.class final Lcom/jodo/paysdk/http/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/jodo/paysdk/http/a/f;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/http/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/http/a/h;->a:Lcom/jodo/paysdk/http/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/jodo/paysdk/http/a/h;->a:Lcom/jodo/paysdk/http/a/f;

    invoke-virtual {v0}, Lcom/jodo/paysdk/http/a/f;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/jodo/paysdk/http/a/i;

    invoke-direct {v1, p0, v0}, Lcom/jodo/paysdk/http/a/i;-><init>(Lcom/jodo/paysdk/http/a/h;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/jodo/paysdk/http/a/f;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.class final Lcom/jodo/paysdk/http/g;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/jodo/paysdk/http/f;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/http/f;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/http/g;->a:Lcom/jodo/paysdk/http/f;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/http/g;->a:Lcom/jodo/paysdk/http/f;

    invoke-virtual {v0, p1}, Lcom/jodo/paysdk/http/f;->a(Landroid/os/Message;)V

    return-void
.end method

.class final Lcom/jodo/paysdk/demo/a;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/jodo/paysdk/demo/MainActivity;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/demo/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/demo/a;->a:Lcom/jodo/paysdk/demo/MainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    return-void
.end method

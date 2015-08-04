.class final Lcom/jodo/paysdk/buoy/b;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/jodo/paysdk/buoy/a;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/buoy/a;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/buoy/b;->a:Lcom/jodo/paysdk/buoy/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "showCtrlView"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/jodo/paysdk/buoy/b;->a:Lcom/jodo/paysdk/buoy/a;

    iget-object v1, v1, Lcom/jodo/paysdk/buoy/a;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/jodo/paysdk/buoy/b;->a:Lcom/jodo/paysdk/buoy/a;

    iget-object v1, v1, Lcom/jodo/paysdk/buoy/a;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/b;->a:Lcom/jodo/paysdk/buoy/a;

    invoke-static {v0}, Lcom/jodo/paysdk/buoy/a;->c(Lcom/jodo/paysdk/buoy/a;)V

    return-void
.end method

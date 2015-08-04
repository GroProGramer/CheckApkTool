.class final Lcom/jodo/paysdk/service/a;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/jodo/paysdk/service/JPointAPR_Service;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/service/JPointAPR_Service;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/service/a;->a:Lcom/jodo/paysdk/service/JPointAPR_Service;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v0, 0x1

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/jodo/paysdk/service/a;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/jodo/paysdk/service/a;->a:Lcom/jodo/paysdk/service/JPointAPR_Service;

    invoke-virtual {v0}, Lcom/jodo/paysdk/service/JPointAPR_Service;->b()V

    return-void
.end method

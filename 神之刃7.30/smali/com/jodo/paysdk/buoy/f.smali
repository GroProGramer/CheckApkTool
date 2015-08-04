.class final Lcom/jodo/paysdk/buoy/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/jodo/paysdk/buoy/d;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/buoy/d;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/buoy/f;->a:Lcom/jodo/paysdk/buoy/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/f;->a:Lcom/jodo/paysdk/buoy/d;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->d:Lcom/jodo/paysdk/buoy/d;

    invoke-virtual {v0}, Lcom/jodo/paysdk/buoy/d;->a()V

    sget-object v0, Lcom/jodo/paysdk/config/a;->a:Lcom/jodo/paysdk/config/a;

    invoke-virtual {v0}, Lcom/jodo/paysdk/config/a;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/jodo/paysdk/config/a;->a:Lcom/jodo/paysdk/config/a;

    invoke-virtual {v1}, Lcom/jodo/paysdk/config/a;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jodo/paysdk/buoy/f;->a:Lcom/jodo/paysdk/buoy/d;

    iget-object v2, v2, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v2, v2, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jodo/paysdk/buoy/f;->a:Lcom/jodo/paysdk/buoy/d;

    iget-object v3, v3, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v3, v3, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://giftcard.jodoplay.com/gift/list?cpid="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "&gameid="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&pn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xf99

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-static {v3, v0, v1, v2, v4}, Lcom/jodo/paysdk/JodoWebviewActivity;->loadUrl(Landroid/content/Context;Ljava/lang/String;IZLcom/jodo/paysdk/webviews/GLCWebviewCallbackListener;)V

    return-void
.end method

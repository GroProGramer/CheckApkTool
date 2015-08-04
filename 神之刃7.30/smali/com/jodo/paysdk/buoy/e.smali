.class final Lcom/jodo/paysdk/buoy/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/jodo/paysdk/buoy/d;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/buoy/d;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/buoy/e;->a:Lcom/jodo/paysdk/buoy/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/e;->a:Lcom/jodo/paysdk/buoy/d;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->d:Lcom/jodo/paysdk/buoy/d;

    invoke-virtual {v0}, Lcom/jodo/paysdk/buoy/d;->a()V

    invoke-static {}, Lcom/jodo/paysdk/f/d;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/e;->a:Lcom/jodo/paysdk/buoy/d;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    const-string v1, "http://account.jodoplay.com/usercenter/mainpage"

    const/16 v2, 0xf99

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/jodo/paysdk/JodoWebviewActivity;->loadUrl(Landroid/content/Context;Ljava/lang/String;IZLcom/jodo/paysdk/webviews/GLCWebviewCallbackListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/jodo/paysdk/buoy/e;->a:Lcom/jodo/paysdk/buoy/d;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    const-string v1, "jodoplay_buoy_should_login_first"

    invoke-static {v0, v1}, Lcom/jodo/paysdk/util/ResourceUtil;->getResourceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/paysdk/buoy/e;->a:Lcom/jodo/paysdk/buoy/d;

    iget-object v1, v1, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v1, v1, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/jodo/paysdk/util/aj;->c(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method

.class final Lcom/jodo/paysdk/buoy/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/jodo/paysdk/buoy/d;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/buoy/d;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/buoy/h;->a:Lcom/jodo/paysdk/buoy/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/h;->a:Lcom/jodo/paysdk/buoy/d;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->d:Lcom/jodo/paysdk/buoy/d;

    invoke-virtual {v0}, Lcom/jodo/paysdk/buoy/d;->a()V

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/h;->a:Lcom/jodo/paysdk/buoy/d;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    const-string v1, "com.facebook.katana"

    invoke-static {v0, v1}, Lcom/jodo/paysdk/util/ab;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/paysdk/buoy/h;->a:Lcom/jodo/paysdk/buoy/d;

    iget-object v1, v1, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v1, v1, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/jodo/paysdk/config/JodoConfig;->getBuoyFacebookFansUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jodo/paysdk/buoy/h;->a:Lcom/jodo/paysdk/buoy/d;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v0, v0, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    const/16 v2, 0xf99

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/jodo/paysdk/JodoWebviewActivity;->loadUrl(Landroid/content/Context;Ljava/lang/String;IZLcom/jodo/paysdk/webviews/GLCWebviewCallbackListener;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fb://facewebmodal/f?href="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/jodo/paysdk/buoy/h;->a:Lcom/jodo/paysdk/buoy/d;

    iget-object v1, v1, Lcom/jodo/paysdk/buoy/d;->g:Lcom/jodo/paysdk/buoy/a;

    iget-object v1, v1, Lcom/jodo/paysdk/buoy/a;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

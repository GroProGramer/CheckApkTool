.class public Lcom/jodo/shares/net/shares/GLActionActivity;
.super Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/jodo/shares/net/shares/GLActionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "0x12345"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "0x12345"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/jodo/shares/net/shares/GLActionActivity;->finish()V

    :goto_1
    return-void

    :pswitch_0
    :try_start_1
    const-string v1, "0x78945"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0x78142"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/jodo/shares/net/shares/b/a;

    invoke-direct {v1}, Lcom/jodo/shares/net/shares/b/a;-><init>()V

    invoke-virtual {v1, v2}, Lcom/jodo/shares/net/shares/b/a;->a(Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/jodo/shares/net/shares/GLActionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x9

    invoke-static {v2, v1, v3}, Lcom/jodo/shares/net/shares/service/ES_Service;->a(Landroid/content/Context;Lcom/jodo/shares/net/shares/b/a;I)V

    invoke-virtual {v1}, Lcom/jodo/shares/net/shares/b/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/jodo/paysdk/util/ab;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p0, v2}, Lcom/jodo/paysdk/util/n;->e(Landroid/content/Context;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jodo/shares/net/shares/GLActionActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-virtual {v1}, Lcom/jodo/shares/net/shares/b/a;->g()I

    move-result v3

    invoke-virtual {v1}, Lcom/jodo/shares/net/shares/b/a;->f()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    and-int/lit8 v6, v3, 0x8

    if-lez v6, :cond_2

    const-string v0, "http://api.getapk.cn/sharesdk/webview/pushguide.do?pkg=%s&filepath=%s&downurl=%s&from=%s&pid=%s"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v3, v6

    const/4 v2, 0x1

    aput-object v5, v3, v2

    const/4 v2, 0x2

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string v4, "shortcut"

    aput-object v4, v3, v2

    const/4 v2, 0x4

    invoke-virtual {v1}, Lcom/jodo/shares/net/shares/b/a;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/jodo/shares/net/shares/GLWebviewActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/jodo/shares/net/shares/GLActionActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_2
    and-int/lit8 v1, v3, 0x4

    if-lez v1, :cond_0

    invoke-static {p0, v0}, Lcom/jodo/paysdk/util/ab;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0, v0}, Lcom/jodo/paysdk/util/ab;->e(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "http://api.getapk.cn/sharesdk/webview/pushguide.do?pkg=%s&filepath=%s&downurl=%s&from=%s&pid=%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v5, v1, v2

    const/4 v2, 0x2

    aput-object v4, v1, v2

    const/4 v2, 0x3

    const-string v3, "shortcut"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/jodo/shares/net/shares/GLWebviewActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/jodo/shares/net/shares/GLActionActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_1
    const-string v1, "0x78945"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/jodo/shares/net/shares/b/a;

    invoke-direct {v1}, Lcom/jodo/shares/net/shares/b/a;-><init>()V

    invoke-virtual {v1, v2}, Lcom/jodo/shares/net/shares/b/a;->a(Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/jodo/shares/net/shares/GLActionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x9

    invoke-static {v2, v1, v3}, Lcom/jodo/shares/net/shares/service/ES_Service;->a(Landroid/content/Context;Lcom/jodo/shares/net/shares/b/a;I)V

    invoke-virtual {v1}, Lcom/jodo/shares/net/shares/b/a;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jodo/shares/net/shares/GLActionActivity;->startActivity(Landroid/content/Intent;)V

    :cond_4
    :pswitch_2
    const-string v1, "0x78945"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/jodo/shares/net/shares/b/a;

    invoke-direct {v1}, Lcom/jodo/shares/net/shares/b/a;-><init>()V

    invoke-virtual {v1, v2}, Lcom/jodo/shares/net/shares/b/a;->a(Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/jodo/shares/net/shares/b/a;->g()I

    move-result v2

    and-int/lit8 v3, v2, 0x2

    if-lez v3, :cond_6

    const-string v2, "0x78142"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/jodo/shares/net/shares/GLWebviewActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v2, 0x800000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/jodo/shares/net/shares/GLActionActivity;->startActivity(Landroid/content/Intent;)V

    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/jodo/shares/net/shares/GLActionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Lcom/jodo/shares/net/shares/service/ES_Service;->a(Landroid/content/Context;Lcom/jodo/shares/net/shares/b/a;I)V

    invoke-virtual {v1}, Lcom/jodo/shares/net/shares/b/a;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jodo/shares/net/shares/GLActionActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    and-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_5

    const-string v2, "0x78142"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/jodo/shares/net/shares/b/a;->f()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0}, Lcom/jodo/paysdk/util/ab;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    invoke-virtual {v1}, Lcom/jodo/shares/net/shares/b/a;->h()Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_7

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {p0, v0}, Lcom/jodo/paysdk/util/ab;->e(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const-string v0, "http://api.getapk.cn/sharesdk/webview/pushguide.do?pkg=%s&filepath=%s&downurl=%s&from=%s&pid=%s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const/4 v2, 0x2

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "notify"

    aput-object v3, v4, v2

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/jodo/shares/net/shares/GLWebviewActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v2, 0x800000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/jodo/shares/net/shares/GLActionActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

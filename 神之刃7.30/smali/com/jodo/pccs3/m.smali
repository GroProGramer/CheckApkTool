.class final Lcom/jodo/pccs3/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jodo/pccs3/a/e;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lorg/json/JSONObject;

.field final synthetic d:Lcom/jodo/pccs3/o;

.field final synthetic e:Lcom/jodo/pccs3/a;


# direct methods
.method constructor <init>(Lcom/jodo/pccs3/a;Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/jodo/pccs3/o;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/m;->e:Lcom/jodo/pccs3/a;

    iput-object p2, p0, Lcom/jodo/pccs3/m;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/jodo/pccs3/m;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/jodo/pccs3/m;->c:Lorg/json/JSONObject;

    iput-object p5, p0, Lcom/jodo/pccs3/m;->d:Lcom/jodo/pccs3/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lcom/jodo/pccs3/m;->e:Lcom/jodo/pccs3/a;

    iget-object v1, p0, Lcom/jodo/pccs3/m;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/jodo/pccs3/m;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/jodo/pccs3/m;->c:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/jodo/pccs3/m;->d:Lcom/jodo/pccs3/o;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/jodo/pccs3/a;->a(Lcom/jodo/pccs3/a;Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/jodo/pccs3/o;)V

    return-void
.end method

.method public final a(ILjava/lang/Exception;)V
    .locals 5

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/jodo/pccs3/m;->d:Lcom/jodo/pccs3/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/pccs3/m;->d:Lcom/jodo/pccs3/o;

    invoke-interface {v0, v3, p2}, Lcom/jodo/pccs3/o;->a(Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/lang/Exception;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/jodo/pccs3/m;->e:Lcom/jodo/pccs3/a;

    iget-object v1, p0, Lcom/jodo/pccs3/m;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lcom/jodo/pccs3/a;->a(Landroid/content/Context;Lcom/jodo/pccs3/a/d;)V

    iget-object v0, p0, Lcom/jodo/pccs3/m;->e:Lcom/jodo/pccs3/a;

    iget-object v1, p0, Lcom/jodo/pccs3/m;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/jodo/pccs3/m;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/jodo/pccs3/m;->c:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/jodo/pccs3/m;->d:Lcom/jodo/pccs3/o;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/jodo/pccs3/a;->b(Lcom/jodo/pccs3/a;Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/jodo/pccs3/o;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/jodo/pccs3/m;->e:Lcom/jodo/pccs3/a;

    iget-object v1, p0, Lcom/jodo/pccs3/m;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/jodo/pccs3/m;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/jodo/pccs3/m;->c:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/jodo/pccs3/m;->d:Lcom/jodo/pccs3/o;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/jodo/pccs3/a;->a(Lcom/jodo/pccs3/a;Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/jodo/pccs3/o;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/jodo/pccs3/m;->d:Lcom/jodo/pccs3/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/pccs3/m;->d:Lcom/jodo/pccs3/o;

    new-instance v1, Lcom/jodo/pccs3/n;

    iget-object v2, p0, Lcom/jodo/pccs3/m;->e:Lcom/jodo/pccs3/a;

    invoke-direct {v1, v2}, Lcom/jodo/pccs3/n;-><init>(Lcom/jodo/pccs3/a;)V

    invoke-interface {v0, v3, v1}, Lcom/jodo/pccs3/o;->a(Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/lang/Exception;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.class final Lcom/jodo/pccs3/f;
.super Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lorg/json/JSONObject;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/jodo/pccs3/o;

.field final synthetic e:Lcom/jodo/pccs3/a;


# direct methods
.method constructor <init>(Lcom/jodo/pccs3/a;Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;Lcom/jodo/pccs3/o;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/f;->e:Lcom/jodo/pccs3/a;

    iput-object p2, p0, Lcom/jodo/pccs3/f;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/jodo/pccs3/f;->b:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/jodo/pccs3/f;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/jodo/pccs3/f;->d:Lcom/jodo/pccs3/o;

    invoke-direct {p0}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final done(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/AVException;)V
    .locals 4

    if-eqz p2, :cond_1

    :try_start_0
    invoke-static {p2}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/jodo/pccs3/f;->e:Lcom/jodo/pccs3/a;

    iget-object v1, p0, Lcom/jodo/pccs3/f;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/jodo/pccs3/f;->b:Lorg/json/JSONObject;

    invoke-static {v0, v1, p1, v2}, Lcom/jodo/pccs3/a;->a(Lcom/jodo/pccs3/a;Landroid/content/Context;Lcom/avos/avoscloud/im/v2/AVIMConversation;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/jodo/pccs3/f;->e:Lcom/jodo/pccs3/a;

    iget-object v1, p0, Lcom/jodo/pccs3/f;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/jodo/pccs3/f;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/jodo/pccs3/a;->a(Lcom/jodo/pccs3/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jodo/pccs3/f;->d:Lcom/jodo/pccs3/o;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/jodo/pccs3/o;->a(Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

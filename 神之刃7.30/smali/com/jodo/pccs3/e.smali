.class final Lcom/jodo/pccs3/e;
.super Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;


# instance fields
.field final synthetic a:Lcom/jodo/pccs3/message/d;

.field final synthetic b:Z

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/jodo/pccs3/a/g;

.field final synthetic e:Lcom/jodo/pccs3/a;


# direct methods
.method constructor <init>(Lcom/jodo/pccs3/a;Lcom/jodo/pccs3/message/d;ZLandroid/content/Context;Lcom/jodo/pccs3/a/g;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/e;->e:Lcom/jodo/pccs3/a;

    iput-object p2, p0, Lcom/jodo/pccs3/e;->a:Lcom/jodo/pccs3/message/d;

    iput-boolean p3, p0, Lcom/jodo/pccs3/e;->b:Z

    iput-object p4, p0, Lcom/jodo/pccs3/e;->c:Landroid/content/Context;

    iput-object p5, p0, Lcom/jodo/pccs3/e;->d:Lcom/jodo/pccs3/a/g;

    invoke-direct {p0}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final done(Lcom/avos/avoscloud/AVException;)V
    .locals 2

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/jodo/pccs3/e;->a:Lcom/jodo/pccs3/message/d;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/jodo/pccs3/message/d;->c(I)V

    iget-boolean v0, p0, Lcom/jodo/pccs3/e;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/pccs3/e;->e:Lcom/jodo/pccs3/a;

    iget-object v1, p0, Lcom/jodo/pccs3/e;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/jodo/pccs3/a;->b(Landroid/content/Context;)Lcom/jodo/pccs3/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/pccs3/e;->a:Lcom/jodo/pccs3/message/d;

    invoke-virtual {v0, v1}, Lcom/jodo/pccs3/b/a;->a(Lcom/jodo/pccs3/message/a;)J

    :cond_0
    iget-object v0, p0, Lcom/jodo/pccs3/e;->d:Lcom/jodo/pccs3/a/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jodo/pccs3/e;->d:Lcom/jodo/pccs3/a/g;

    iget-object v1, p0, Lcom/jodo/pccs3/e;->a:Lcom/jodo/pccs3/message/d;

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVException;->getLocalizedMessage()Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/jodo/pccs3/a/g;->a(Lcom/jodo/pccs3/message/f;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/jodo/pccs3/e;->a:Lcom/jodo/pccs3/message/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jodo/pccs3/message/d;->c(I)V

    iget-boolean v0, p0, Lcom/jodo/pccs3/e;->b:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jodo/pccs3/e;->e:Lcom/jodo/pccs3/a;

    iget-object v1, p0, Lcom/jodo/pccs3/e;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/jodo/pccs3/a;->b(Landroid/content/Context;)Lcom/jodo/pccs3/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/pccs3/e;->a:Lcom/jodo/pccs3/message/d;

    invoke-virtual {v0, v1}, Lcom/jodo/pccs3/b/a;->a(Lcom/jodo/pccs3/message/a;)J

    :cond_3
    iget-object v0, p0, Lcom/jodo/pccs3/e;->d:Lcom/jodo/pccs3/a/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jodo/pccs3/e;->d:Lcom/jodo/pccs3/a/g;

    iget-object v1, p0, Lcom/jodo/pccs3/e;->a:Lcom/jodo/pccs3/message/d;

    invoke-interface {v0, v1}, Lcom/jodo/pccs3/a/g;->b(Lcom/jodo/pccs3/message/f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

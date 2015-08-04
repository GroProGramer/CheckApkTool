.class final Lcom/jodo/pccs3/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jodo/pccs3/o;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/jodo/pccs3/message/d;

.field final synthetic c:Z

.field final synthetic d:Lcom/jodo/pccs3/a/g;

.field final synthetic e:Lcom/jodo/pccs3/a;


# direct methods
.method constructor <init>(Lcom/jodo/pccs3/a;Landroid/content/Context;Lcom/jodo/pccs3/message/d;ZLcom/jodo/pccs3/a/g;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/l;->e:Lcom/jodo/pccs3/a;

    iput-object p2, p0, Lcom/jodo/pccs3/l;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/jodo/pccs3/l;->b:Lcom/jodo/pccs3/message/d;

    iput-boolean p4, p0, Lcom/jodo/pccs3/l;->c:Z

    iput-object p5, p0, Lcom/jodo/pccs3/l;->d:Lcom/jodo/pccs3/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/lang/Exception;)V
    .locals 6

    if-nez p2, :cond_1

    invoke-static {}, Lcom/jodo/pccs3/a;->a()Lcom/jodo/pccs3/a;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/pccs3/l;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jodo/pccs3/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jodo/pccs3/l;->e:Lcom/jodo/pccs3/a;

    iget-object v1, p0, Lcom/jodo/pccs3/l;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/jodo/pccs3/l;->b:Lcom/jodo/pccs3/message/d;

    iget-boolean v4, p0, Lcom/jodo/pccs3/l;->c:Z

    iget-object v5, p0, Lcom/jodo/pccs3/l;->d:Lcom/jodo/pccs3/a/g;

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/jodo/pccs3/a;->a(Lcom/jodo/pccs3/a;Landroid/content/Context;Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/jodo/pccs3/message/d;ZLcom/jodo/pccs3/a/g;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p2, Lcom/jodo/pccs3/n;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jodo/pccs3/l;->d:Lcom/jodo/pccs3/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/pccs3/l;->d:Lcom/jodo/pccs3/a/g;

    iget-object v1, p0, Lcom/jodo/pccs3/l;->b:Lcom/jodo/pccs3/message/d;

    invoke-virtual {p2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/jodo/pccs3/a/g;->a(Lcom/jodo/pccs3/message/f;)V

    goto :goto_0

    :cond_2
    invoke-static {p2}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/jodo/pccs3/l;->d:Lcom/jodo/pccs3/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jodo/pccs3/l;->d:Lcom/jodo/pccs3/a/g;

    iget-object v1, p0, Lcom/jodo/pccs3/l;->b:Lcom/jodo/pccs3/message/d;

    invoke-virtual {p2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/jodo/pccs3/a/g;->a(Lcom/jodo/pccs3/message/f;)V

    goto :goto_0
.end method

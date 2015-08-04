.class public abstract Lcom/jodo/pccs3/message/a/c;
.super Lcom/avos/avoscloud/im/v2/AVIMTypedMessageHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;",
        ">",
        "Lcom/avos/avoscloud/im/v2/AVIMTypedMessageHandler",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/avos/avoscloud/im/v2/AVIMTypedMessageHandler;-><init>()V

    iput-object p1, p0, Lcom/jodo/pccs3/message/a/c;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public bridge synthetic onMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/AVIMClient;)V
    .locals 0

    check-cast p1, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;

    invoke-virtual {p0, p1, p2, p3}, Lcom/jodo/pccs3/message/a/c;->onMessage(Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/AVIMClient;)V

    return-void
.end method

.method public onMessage(Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/AVIMClient;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/avos/avoscloud/im/v2/AVIMConversation;",
            "Lcom/avos/avoscloud/im/v2/AVIMClient;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x1

    invoke-static {}, Lcom/jodo/pccs3/a;->a()Lcom/jodo/pccs3/a;

    iget-object v1, p0, Lcom/jodo/pccs3/message/a/c;->a:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/jodo/pccs3/a;->a(Landroid/content/Context;Lcom/avos/avoscloud/im/v2/AVIMConversation;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/jodo/pccs3/message/d;->a(Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;)Lcom/jodo/pccs3/message/d;

    move-result-object v2

    instance-of v1, v2, Lcom/jodo/pccs3/message/b;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/jodo/pccs3/a;->a()Lcom/jodo/pccs3/a;

    move-result-object v1

    iget-object v3, p0, Lcom/jodo/pccs3/message/a/c;->a:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v2, v4, v5}, Lcom/jodo/pccs3/a;->a(Landroid/content/Context;Lcom/jodo/pccs3/message/a;Ljava/lang/String;Z)J

    goto :goto_0

    :cond_2
    move-object v1, v2

    check-cast v1, Lcom/jodo/pccs3/message/e;

    invoke-static {v1}, Lcom/jodo/pccs3/e/b;->b(Lcom/jodo/pccs3/message/e;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, "FilterChatMessageHandler"

    invoke-static {v1}, Lcom/jodo/paysdk/util/r;->e(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/jodo/pccs3/message/a/c;->a:Landroid/content/Context;

    const-string v4, "jodoplay_service_receive_message_invalid"

    invoke-static {v3, v4}, Lcom/jodo/paysdk/util/ResourceUtil;->getResourceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Lcom/jodo/pccs3/message/a;->d()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Lcom/jodo/pccs3/message/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jodo/pccs3/message/a/c;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/jodo/paysdk/util/aj;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jodo/pccs3/e/b;

    move-object v0, v2

    check-cast v0, Lcom/jodo/pccs3/message/e;

    move-object v3, v0

    invoke-virtual {v1, v3}, Lcom/jodo/pccs3/e/b;->a(Lcom/jodo/pccs3/message/e;)V

    invoke-virtual {v1}, Lcom/jodo/pccs3/e/b;->d()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lcom/jodo/pccs3/e/b;->h()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1}, Lcom/jodo/pccs3/e/b;->i()V

    invoke-static {}, Lcom/jodo/pccs3/a;->a()Lcom/jodo/pccs3/a;

    move-result-object v3

    iget-object v4, p0, Lcom/jodo/pccs3/message/a/c;->a:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getConversationId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v2, v5, v6}, Lcom/jodo/pccs3/a;->a(Landroid/content/Context;Lcom/jodo/pccs3/message/a;Ljava/lang/String;Z)J

    :cond_4
    invoke-virtual {v1}, Lcom/jodo/pccs3/e/b;->h()Z

    move-result v2

    invoke-virtual {v1}, Lcom/jodo/pccs3/e/b;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/jodo/pccs3/a;->a()Lcom/jodo/pccs3/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jodo/pccs3/a;->h()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/jodo/pccs3/a;->a()Lcom/jodo/pccs3/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jodo/pccs3/a;->h()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jodo/pccs3/a/a;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-interface {v2, v1}, Lcom/jodo/pccs3/a/a;->a(Lcom/jodo/pccs3/e/b;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    invoke-static {v2}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_2
    move-exception v1

    invoke-static {v1}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

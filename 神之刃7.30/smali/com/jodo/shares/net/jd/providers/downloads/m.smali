.class final Lcom/jodo/shares/net/jd/providers/downloads/m;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/content/Context;

.field b:Ljava/lang/String;

.field c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/jodo/shares/net/jd/providers/downloads/n;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/jodo/shares/net/jd/providers/downloads/al;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/jodo/shares/net/jd/providers/downloads/al;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jodo/shares/net/jd/providers/downloads/m;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/jodo/shares/net/jd/providers/downloads/m;->d:Lcom/jodo/shares/net/jd/providers/downloads/al;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/m;->c:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/m;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/m;->b:Ljava/lang/String;

    return-void
.end method

.method private b(Ljava/util/Collection;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/jodo/shares/net/jd/providers/downloads/g;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/shares/net/jd/providers/downloads/g;

    iget v1, v0, Lcom/jodo/shares/net/jd/providers/downloads/g;->j:I

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_3

    iget v1, v0, Lcom/jodo/shares/net/jd/providers/downloads/g;->h:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_0

    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    const v1, 0x1080082

    iput v1, v5, Landroid/app/Notification;->icon:I

    iget-wide v2, v0, Lcom/jodo/shares/net/jd/providers/downloads/g;->a:J

    iget-object v1, v0, Lcom/jodo/shares/net/jd/providers/downloads/g;->C:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/jodo/shares/net/jd/providers/downloads/m;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v6, p0, Lcom/jodo/shares/net/jd/providers/downloads/m;->a:Landroid/content/Context;

    const-string v7, "string"

    const-string v8, "download_unknown_title"

    invoke-static {v6, v7, v8}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_2
    sget-object v6, Lcom/jodo/shares/net/jd/providers/downloads/ab;->b:Landroid/net/Uri;

    invoke-static {v6, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    iget v2, v0, Lcom/jodo/shares/net/jd/providers/downloads/g;->j:I

    invoke-static {v2}, Lcom/jodo/shares/net/jd/providers/downloads/ab;->b(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/jodo/shares/net/jd/providers/downloads/m;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/jodo/shares/net/jd/providers/downloads/m;->a:Landroid/content/Context;

    const-string v7, "string"

    const-string v8, "notification_download_failed"

    invoke-static {v3, v7, v8}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.DOWNLOAD_LIST"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_2
    iget-object v7, p0, Lcom/jodo/shares/net/jd/providers/downloads/m;->b:Ljava/lang/String;

    const-class v8, Lcom/jodo/shares/net/jd/providers/downloads/DownloadReceiver;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-wide v7, v0, Lcom/jodo/shares/net/jd/providers/downloads/g;->m:J

    iput-wide v7, v5, Landroid/app/Notification;->when:J

    iget-object v7, p0, Lcom/jodo/shares/net/jd/providers/downloads/m;->a:Landroid/content/Context;

    iget-object v8, p0, Lcom/jodo/shares/net/jd/providers/downloads/m;->a:Landroid/content/Context;

    iget-wide v9, v0, Lcom/jodo/shares/net/jd/providers/downloads/g;->a:J

    long-to-int v9, v9

    const/high16 v10, 0x8000000

    invoke-static {v8, v9, v2, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v5, v7, v1, v3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DOWNLOAD_HIDE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jodo/shares/net/jd/providers/downloads/m;->b:Ljava/lang/String;

    const-class v3, Lcom/jodo/shares/net/jd/providers/downloads/DownloadReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/jodo/shares/net/jd/providers/downloads/m;->a:Landroid/content/Context;

    iget-wide v6, v0, Lcom/jodo/shares/net/jd/providers/downloads/g;->a:J

    long-to-int v3, v6

    const/high16 v6, 0x8000000

    invoke-static {v2, v3, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v5, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/jodo/shares/net/jd/providers/downloads/m;->d:Lcom/jodo/shares/net/jd/providers/downloads/al;

    iget-wide v2, v0, Lcom/jodo/shares/net/jd/providers/downloads/g;->a:J

    invoke-interface {v1, v2, v3, v5}, Lcom/jodo/shares/net/jd/providers/downloads/al;->a(JLandroid/app/Notification;)V

    goto/16 :goto_0

    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_4
    iget-object v2, p0, Lcom/jodo/shares/net/jd/providers/downloads/m;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/jodo/shares/net/jd/providers/downloads/m;->a:Landroid/content/Context;

    const-string v7, "string"

    const-string v8, "notification_download_complete"

    invoke-static {v3, v7, v8}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/jodo/shares/net/jd/providers/downloads/g;->d:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/jodo/shares/net/jd/providers/downloads/g;->d:Ljava/lang/String;

    const-string v7, ".apk"

    invoke-virtual {v3, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    iget-object v3, v0, Lcom/jodo/shares/net/jd/providers/downloads/g;->e:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, v0, Lcom/jodo/shares/net/jd/providers/downloads/g;->e:Ljava/lang/String;

    const-string v7, ".apk"

    invoke-virtual {v3, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/jodo/shares/net/jd/providers/downloads/m;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/jodo/shares/net/jd/providers/downloads/m;->a:Landroid/content/Context;

    const-string v7, "string"

    const-string v8, "notification_apk_download_complete"

    invoke-static {v3, v7, v8}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_7
    iget v3, v0, Lcom/jodo/shares/net/jd/providers/downloads/g;->g:I

    if-eqz v3, :cond_a

    iget-object v3, v0, Lcom/jodo/shares/net/jd/providers/downloads/g;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    const-string v8, "file"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not a file URI: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b

    const/4 v3, 0x4

    :goto_3
    if-nez v3, :cond_d

    :cond_a
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.DOWNLOAD_OPEN"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v11, v3

    move-object v3, v2

    move-object v2, v11

    goto/16 :goto_2

    :cond_b
    invoke-static {}, Lcom/jodo/shares/net/jd/providers/downloads/ac;->a()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    const/4 v3, 0x4

    goto :goto_3

    :cond_c
    const/4 v3, 0x0

    goto :goto_3

    :cond_d
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.DOWNLOAD_LIST"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v11, v3

    move-object v3, v2

    move-object v2, v11

    goto/16 :goto_2

    :cond_e
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Collection;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/jodo/shares/net/jd/providers/downloads/g;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/m;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/jodo/shares/net/jd/providers/downloads/g;

    const/16 v0, 0x64

    iget v1, v6, Lcom/jodo/shares/net/jd/providers/downloads/g;->j:I

    if-gt v0, v1, :cond_3

    iget v0, v6, Lcom/jodo/shares/net/jd/providers/downloads/g;->j:I

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_3

    iget v0, v6, Lcom/jodo/shares/net/jd/providers/downloads/g;->h:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_0

    iget-object v8, v6, Lcom/jodo/shares/net/jd/providers/downloads/g;->n:Ljava/lang/String;

    iget-wide v4, v6, Lcom/jodo/shares/net/jd/providers/downloads/g;->t:J

    iget-wide v2, v6, Lcom/jodo/shares/net/jd/providers/downloads/g;->u:J

    iget-wide v9, v6, Lcom/jodo/shares/net/jd/providers/downloads/g;->a:J

    iget-object v1, v6, Lcom/jodo/shares/net/jd/providers/downloads/g;->C:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/m;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/shares/net/jd/providers/downloads/m;->a:Landroid/content/Context;

    const-string v11, "string"

    const-string v12, "download_unknown_title"

    invoke-static {v1, v11, v12}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_2
    iget-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/m;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/m;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/shares/net/jd/providers/downloads/n;

    invoke-virtual/range {v0 .. v5}, Lcom/jodo/shares/net/jd/providers/downloads/n;->a(Ljava/lang/String;JJ)V

    :goto_2
    iget v1, v6, Lcom/jodo/shares/net/jd/providers/downloads/g;->j:I

    const/16 v2, 0xc4

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/jodo/shares/net/jd/providers/downloads/n;->h:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/jodo/shares/net/jd/providers/downloads/m;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/jodo/shares/net/jd/providers/downloads/m;->a:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "notification_need_wifi_for_size"

    invoke-static {v2, v3, v4}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jodo/shares/net/jd/providers/downloads/n;->h:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/jodo/shares/net/jd/providers/downloads/n;

    invoke-direct {v0}, Lcom/jodo/shares/net/jd/providers/downloads/n;-><init>()V

    long-to-int v9, v9

    iput v9, v0, Lcom/jodo/shares/net/jd/providers/downloads/n;->a:I

    iput-object v8, v0, Lcom/jodo/shares/net/jd/providers/downloads/n;->e:Ljava/lang/String;

    iget-object v9, v6, Lcom/jodo/shares/net/jd/providers/downloads/g;->D:Ljava/lang/String;

    iput-object v9, v0, Lcom/jodo/shares/net/jd/providers/downloads/n;->f:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/jodo/shares/net/jd/providers/downloads/n;->a(Ljava/lang/String;JJ)V

    iget-object v1, p0, Lcom/jodo/shares/net/jd/providers/downloads/m;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/jodo/shares/net/jd/providers/downloads/m;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/shares/net/jd/providers/downloads/n;

    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    iget-object v1, v0, Lcom/jodo/shares/net/jd/providers/downloads/n;->h:Ljava/lang/String;

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    move v2, v1

    :goto_4
    const v1, 0x1080081

    if-eqz v2, :cond_6

    const v1, 0x108008a

    :cond_6
    iput v1, v4, Landroid/app/Notification;->icon:I

    iget v5, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v4, Landroid/app/Notification;->flags:I

    new-instance v5, Landroid/widget/RemoteViews;

    iget-object v6, p0, Lcom/jodo/shares/net/jd/providers/downloads/m;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/jodo/shares/net/jd/providers/downloads/m;->a:Landroid/content/Context;

    const-string v8, "layout"

    const-string v9, "jodoplay_sharesdklocal_dm_status_bar_ongoing_event_progress_bar"

    invoke-static {v7, v8, v9}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/jodo/shares/net/jd/providers/downloads/n;->g:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v0, Lcom/jodo/shares/net/jd/providers/downloads/n;->d:I

    const/4 v8, 0x1

    if-le v7, v8, :cond_9

    iget-object v7, p0, Lcom/jodo/shares/net/jd/providers/downloads/m;->a:Landroid/content/Context;

    iget-object v8, p0, Lcom/jodo/shares/net/jd/providers/downloads/m;->a:Landroid/content/Context;

    const-string v9, "string"

    const-string v10, "notification_filename_separator"

    invoke-static {v8, v9, v10}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/jodo/shares/net/jd/providers/downloads/n;->g:[Ljava/lang/String;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/jodo/shares/net/jd/providers/downloads/n;->d:I

    iput v7, v4, Landroid/app/Notification;->number:I

    iget v7, v0, Lcom/jodo/shares/net/jd/providers/downloads/n;->d:I

    const/4 v8, 0x2

    if-le v7, v8, :cond_7

    iget-object v7, p0, Lcom/jodo/shares/net/jd/providers/downloads/m;->a:Landroid/content/Context;

    iget-object v8, p0, Lcom/jodo/shares/net/jd/providers/downloads/m;->a:Landroid/content/Context;

    const-string v9, "string"

    const-string v10, "notification_filename_extras"

    invoke-static {v8, v9, v10}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, v0, Lcom/jodo/shares/net/jd/providers/downloads/n;->d:I

    add-int/lit8 v11, v11, -0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    :goto_5
    iget-object v7, p0, Lcom/jodo/shares/net/jd/providers/downloads/m;->a:Landroid/content/Context;

    const-string v8, "id"

    const-string v9, "jodoplay_sharesdklocal_title"

    invoke-static {v7, v8, v9}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/jodo/shares/net/jd/providers/downloads/m;->a:Landroid/content/Context;

    const-string v6, "id"

    const-string v7, "jodoplay_sharesdklocal_progress_bar"

    invoke-static {v2, v6, v7}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/16 v6, 0x8

    invoke-virtual {v5, v2, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v2, p0, Lcom/jodo/shares/net/jd/providers/downloads/m;->a:Landroid/content/Context;

    const-string v6, "id"

    const-string v7, "jodoplay_sharesdklocal_paused_text"

    invoke-static {v2, v6, v7}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v6, v0, Lcom/jodo/shares/net/jd/providers/downloads/n;->h:Ljava/lang/String;

    invoke-virtual {v5, v2, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_6
    iget-object v2, p0, Lcom/jodo/shares/net/jd/providers/downloads/m;->a:Landroid/content/Context;

    const-string v6, "id"

    const-string v7, "jodoplay_sharesdklocal_progress_text"

    invoke-static {v2, v6, v7}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iget-wide v7, v0, Lcom/jodo/shares/net/jd/providers/downloads/n;->c:J

    iget-wide v9, v0, Lcom/jodo/shares/net/jd/providers/downloads/n;->b:J

    const-wide/16 v11, 0x0

    cmp-long v2, v7, v11

    if-gtz v2, :cond_c

    const-string v2, ""

    :goto_7
    invoke-virtual {v5, v6, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/jodo/shares/net/jd/providers/downloads/m;->a:Landroid/content/Context;

    const-string v6, "id"

    const-string v7, "jodoplay_sharesdklocal_appIcon"

    invoke-static {v2, v6, v7}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v5, v2, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    iput-object v5, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOWNLOAD_LIST"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jodo/shares/net/jd/providers/downloads/m;->b:Ljava/lang/String;

    const-class v5, Lcom/jodo/shares/net/jd/providers/downloads/DownloadReceiver;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/jodo/shares/net/jd/providers/downloads/ab;->b:Landroid/net/Uri;

    iget v5, v0, Lcom/jodo/shares/net/jd/providers/downloads/n;->a:I

    int-to-long v5, v5

    invoke-static {v1, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v5, "multiple"

    iget v1, v0, Lcom/jodo/shares/net/jd/providers/downloads/n;->d:I

    const/4 v6, 0x1

    if-le v1, v6, :cond_d

    const/4 v1, 0x1

    :goto_8
    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/jodo/shares/net/jd/providers/downloads/m;->a:Landroid/content/Context;

    iget v5, v0, Lcom/jodo/shares/net/jd/providers/downloads/n;->a:I

    const/high16 v6, 0x8000000

    invoke-static {v1, v5, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/jodo/shares/net/jd/providers/downloads/m;->d:Lcom/jodo/shares/net/jd/providers/downloads/al;

    iget v0, v0, Lcom/jodo/shares/net/jd/providers/downloads/n;->a:I

    int-to-long v5, v0

    invoke-interface {v1, v5, v6, v4}, Lcom/jodo/shares/net/jd/providers/downloads/al;->a(JLandroid/app/Notification;)V

    goto/16 :goto_3

    :cond_8
    const/4 v1, 0x0

    move v2, v1

    goto/16 :goto_4

    :cond_9
    iget-object v7, p0, Lcom/jodo/shares/net/jd/providers/downloads/m;->a:Landroid/content/Context;

    const-string v8, "id"

    const-string v9, "jodoplay_sharesdklocal_description"

    invoke-static {v7, v8, v9}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    iget-object v8, v0, Lcom/jodo/shares/net/jd/providers/downloads/n;->f:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_a
    iget-object v2, p0, Lcom/jodo/shares/net/jd/providers/downloads/m;->a:Landroid/content/Context;

    const-string v6, "id"

    const-string v7, "jodoplay_sharesdklocal_paused_text"

    invoke-static {v2, v6, v7}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/16 v6, 0x8

    invoke-virtual {v5, v2, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v2, p0, Lcom/jodo/shares/net/jd/providers/downloads/m;->a:Landroid/content/Context;

    const-string v6, "id"

    const-string v7, "jodoplay_sharesdklocal_progress_bar"

    invoke-static {v2, v6, v7}, Lcom/jodo/paysdk/util/ResourceUtil;->getIdByReflection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iget-wide v7, v0, Lcom/jodo/shares/net/jd/providers/downloads/n;->c:J

    long-to-int v7, v7

    iget-wide v8, v0, Lcom/jodo/shares/net/jd/providers/downloads/n;->b:J

    long-to-int v8, v8

    iget-wide v9, v0, Lcom/jodo/shares/net/jd/providers/downloads/n;->c:J

    const-wide/16 v11, -0x1

    cmp-long v2, v9, v11

    if-nez v2, :cond_b

    const/4 v2, 0x1

    :goto_9
    invoke-virtual {v5, v6, v7, v8, v2}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    goto/16 :goto_6

    :cond_b
    const/4 v2, 0x0

    goto :goto_9

    :cond_c
    const-wide/16 v11, 0x64

    mul-long/2addr v9, v11

    div-long v7, v9, v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v7, 0x25

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_7

    :cond_d
    const/4 v1, 0x0

    goto :goto_8

    :cond_e
    invoke-direct {p0, p1}, Lcom/jodo/shares/net/jd/providers/downloads/m;->b(Ljava/util/Collection;)V

    return-void
.end method

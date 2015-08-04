.class final Lcom/jodo/shares/net/jd/providers/downloads/u;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;


# direct methods
.method public constructor <init>(Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;)V
    .locals 1

    iput-object p1, p0, Lcom/jodo/shares/net/jd/providers/downloads/u;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    const-string v0, "Download Service"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jodo/shares/net/jd/providers/downloads/u;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    invoke-static {v1}, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->c(Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jodo/shares/net/jd/providers/downloads/u;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    invoke-static {v1}, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->d(Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;)V

    const/4 v3, 0x0

    const-wide v1, 0x7fffffffffffffffL

    move-wide/from16 v17, v1

    move v1, v3

    move-wide/from16 v2, v17

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jodo/shares/net/jd/providers/downloads/u;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    monitor-enter v4

    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jodo/shares/net/jd/providers/downloads/u;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    iget-object v5, v5, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->a:Lcom/jodo/shares/net/jd/providers/downloads/u;

    move-object/from16 v0, p0

    if-eq v5, v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "multiple UpdateThreads in DownloadService"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jodo/shares/net/jd/providers/downloads/u;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    invoke-static {v5}, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->e(Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;)Z

    move-result v5

    if-nez v5, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jodo/shares/net/jd/providers/downloads/u;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->a:Lcom/jodo/shares/net/jd/providers/downloads/u;

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jodo/shares/net/jd/providers/downloads/u;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    invoke-virtual {v1}, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->stopSelf()V

    :cond_1
    const-wide v5, 0x7fffffffffffffffL

    cmp-long v1, v2, v5

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jodo/shares/net/jd/providers/downloads/u;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    const-string v5, "alarm"

    invoke-virtual {v1, v5}, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    if-nez v1, :cond_3

    const-string v1, "DownloadManager"

    const-string v2, "couldn\'t get alarm manager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    monitor-exit v4

    return-void

    :cond_3
    sget-boolean v5, Lcom/jodo/shares/net/jd/providers/downloads/f;->a:Z

    if-eqz v5, :cond_4

    const-string v5, "DownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "scheduling retry in "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.DOWNLOAD_WAKEUP"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jodo/shares/net/jd/providers/downloads/u;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    invoke-virtual {v6}, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/jodo/shares/net/jd/providers/downloads/DownloadReceiver;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/jodo/shares/net/jd/providers/downloads/u;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    iget-object v7, v7, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->b:Lcom/jodo/shares/net/jd/providers/downloads/al;

    invoke-interface {v7}, Lcom/jodo/shares/net/jd/providers/downloads/al;->a()J

    move-result-wide v7

    add-long/2addr v2, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/jodo/shares/net/jd/providers/downloads/u;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    const/4 v8, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v7, v8, v5, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v1, v6, v2, v3, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jodo/shares/net/jd/providers/downloads/u;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    invoke-static {v1}, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->f(Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;)Z

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jodo/shares/net/jd/providers/downloads/u;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    iget-object v1, v1, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->b:Lcom/jodo/shares/net/jd/providers/downloads/al;

    invoke-interface {v1}, Lcom/jodo/shares/net/jd/providers/downloads/al;->a()J

    move-result-wide v11

    const/4 v10, 0x0

    const/4 v9, 0x0

    const-wide v7, 0x7fffffffffffffffL

    new-instance v13, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jodo/shares/net/jd/providers/downloads/u;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    invoke-static {v1}, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->g(Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v13, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jodo/shares/net/jd/providers/downloads/u;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    invoke-virtual {v1}, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/jodo/shares/net/jd/providers/downloads/ab;->b:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    if-eqz v14, :cond_1b

    :try_start_2
    new-instance v15, Lcom/jodo/shares/net/jd/providers/downloads/h;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jodo/shares/net/jd/providers/downloads/u;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    invoke-virtual {v1}, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v15, v1, v14}, Lcom/jodo/shares/net/jd/providers/downloads/h;-><init>(Landroid/content/ContentResolver;Landroid/database/Cursor;)V

    const-string v1, "_id"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move v4, v10

    move-wide v2, v7

    move v5, v9

    :goto_2
    invoke-interface {v14}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_e

    move/from16 v0, v16

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jodo/shares/net/jd/providers/downloads/u;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    invoke-static {v1}, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->g(Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jodo/shares/net/jd/providers/downloads/g;

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jodo/shares/net/jd/providers/downloads/u;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    invoke-static {v6, v15, v1, v11, v12}, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->a(Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;Lcom/jodo/shares/net/jd/providers/downloads/h;Lcom/jodo/shares/net/jd/providers/downloads/g;J)V

    move-object v7, v1

    :goto_3
    invoke-virtual {v7}, Lcom/jodo/shares/net/jd/providers/downloads/g;->e()Z

    move-result v1

    if-eqz v1, :cond_1a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jodo/shares/net/jd/providers/downloads/u;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    const/4 v6, 0x1

    const/4 v8, 0x0

    invoke-static {v1, v7, v6, v8}, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->a(Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;Lcom/jodo/shares/net/jd/providers/downloads/g;ZZ)Z

    move-result v1

    if-nez v1, :cond_1a

    const/4 v4, 0x1

    const/4 v5, 0x1

    move v6, v4

    move v1, v5

    :goto_4
    iget v4, v7, Lcom/jodo/shares/net/jd/providers/downloads/g;->j:I

    invoke-static {v4}, Lcom/jodo/shares/net/jd/providers/downloads/ab;->c(I)Z

    move-result v4

    if-eqz v4, :cond_9

    iget v4, v7, Lcom/jodo/shares/net/jd/providers/downloads/g;->h:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    const/4 v4, 0x1

    :goto_5
    if-eqz v4, :cond_6

    const/4 v1, 0x1

    :cond_6
    iget v4, v7, Lcom/jodo/shares/net/jd/providers/downloads/g;->j:I

    invoke-static {v4}, Lcom/jodo/shares/net/jd/providers/downloads/ab;->c(I)Z

    move-result v4

    if-eqz v4, :cond_a

    const-wide/16 v4, -0x1

    :goto_6
    const-wide/16 v7, 0x0

    cmp-long v7, v4, v7

    if-nez v7, :cond_d

    const/4 v1, 0x1

    :cond_7
    :goto_7
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move v4, v6

    move v5, v1

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jodo/shares/net/jd/providers/downloads/u;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    invoke-static {v1, v15, v11, v12}, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->a(Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;Lcom/jodo/shares/net/jd/providers/downloads/h;J)Lcom/jodo/shares/net/jd/providers/downloads/g;

    move-result-object v1

    move-object v7, v1

    goto :goto_3

    :cond_9
    const/4 v4, 0x0

    goto :goto_5

    :cond_a
    iget v4, v7, Lcom/jodo/shares/net/jd/providers/downloads/g;->j:I

    const/16 v5, 0xc2

    if-eq v4, v5, :cond_b

    const-wide/16 v4, 0x0

    goto :goto_6

    :cond_b
    invoke-virtual {v7, v11, v12}, Lcom/jodo/shares/net/jd/providers/downloads/g;->a(J)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v4

    cmp-long v7, v4, v11

    if-gtz v7, :cond_c

    const-wide/16 v4, 0x0

    goto :goto_6

    :cond_c
    sub-long/2addr v4, v11

    goto :goto_6

    :cond_d
    const-wide/16 v7, 0x0

    cmp-long v7, v4, v7

    if-lez v7, :cond_7

    cmp-long v7, v4, v2

    if-gez v7, :cond_7

    move-wide v2, v4

    goto :goto_7

    :cond_e
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/jodo/shares/net/jd/providers/downloads/u;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->a(Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;J)V

    goto :goto_8

    :catchall_1
    move-exception v1

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_f
    if-nez v4, :cond_19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jodo/shares/net/jd/providers/downloads/u;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    invoke-static {v1}, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->g(Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jodo/shares/net/jd/providers/downloads/g;

    iget-boolean v7, v1, Lcom/jodo/shares/net/jd/providers/downloads/g;->x:Z

    if-eqz v7, :cond_10

    iget-object v1, v1, Lcom/jodo/shares/net/jd/providers/downloads/g;->y:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    const/4 v4, 0x1

    :goto_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jodo/shares/net/jd/providers/downloads/u;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    invoke-static {v5}, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->h(Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;)Lcom/jodo/shares/net/jd/providers/downloads/m;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jodo/shares/net/jd/providers/downloads/u;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    invoke-static {v6}, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->g(Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jodo/shares/net/jd/providers/downloads/m;->a(Ljava/util/Collection;)V

    if-eqz v1, :cond_13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jodo/shares/net/jd/providers/downloads/u;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    invoke-static {v1}, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->j(Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;)Z

    move-result v1

    if-nez v1, :cond_11

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.android.providers.media"

    const-string v6, "com.android.providers.media.MediaScannerService"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jodo/shares/net/jd/providers/downloads/u;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->a(Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;Z)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jodo/shares/net/jd/providers/downloads/u;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jodo/shares/net/jd/providers/downloads/u;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    invoke-static {v6}, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->i(Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;)Lcom/jodo/shares/net/jd/providers/downloads/t;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v5, v1, v6, v7}, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_11
    :goto_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jodo/shares/net/jd/providers/downloads/u;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    invoke-static {v1}, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->g(Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_12
    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jodo/shares/net/jd/providers/downloads/g;

    iget-boolean v6, v1, Lcom/jodo/shares/net/jd/providers/downloads/g;->x:Z

    if-eqz v6, :cond_12

    iget-object v6, v1, Lcom/jodo/shares/net/jd/providers/downloads/g;->y:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-virtual {v1}, Lcom/jodo/shares/net/jd/providers/downloads/g;->e()Z

    move-result v6

    if-eqz v6, :cond_16

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jodo/shares/net/jd/providers/downloads/u;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v6, v1, v7, v8}, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->a(Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;Lcom/jodo/shares/net/jd/providers/downloads/g;ZZ)Z

    move-result v1

    if-nez v1, :cond_12

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "scanFile failed!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jodo/shares/net/jd/providers/downloads/u;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    invoke-static {v1}, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->i(Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;)Lcom/jodo/shares/net/jd/providers/downloads/t;

    move-result-object v5

    iget-object v6, v5, Lcom/jodo/shares/net/jd/providers/downloads/t;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    monitor-enter v6

    :try_start_3
    iget-object v1, v5, Lcom/jodo/shares/net/jd/providers/downloads/t;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    const/4 v7, 0x0

    invoke-static {v1, v7}, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->a(Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;Z)Z

    iget-object v1, v5, Lcom/jodo/shares/net/jd/providers/downloads/t;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    invoke-static {v1}, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->b(Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;)Landroid/media/IMediaScannerService;

    move-result-object v1

    if-eqz v1, :cond_15

    iget-object v1, v5, Lcom/jodo/shares/net/jd/providers/downloads/t;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    const/4 v7, 0x0

    invoke-static {v1, v7}, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->a(Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;Landroid/media/IMediaScannerService;)Landroid/media/IMediaScannerService;

    sget-boolean v1, Lcom/jodo/shares/net/jd/providers/downloads/f;->b:Z

    if-eqz v1, :cond_14

    const-string v1, "DownloadManager"

    const-string v7, "Disconnecting from Media Scanner"

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_14
    :try_start_4
    iget-object v1, v5, Lcom/jodo/shares/net/jd/providers/downloads/t;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    invoke-virtual {v1, v5}, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    iget-object v1, v5, Lcom/jodo/shares/net/jd/providers/downloads/t;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :cond_15
    :goto_c
    monitor-exit v6

    goto :goto_a

    :catchall_2
    move-exception v1

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1

    :catch_0
    move-exception v1

    :try_start_6
    const-string v7, "DownloadManager"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "unbindService failed: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    iget-object v1, v5, Lcom/jodo/shares/net/jd/providers/downloads/t;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_c

    :catchall_3
    move-exception v1

    iget-object v2, v5, Lcom/jodo/shares/net/jd/providers/downloads/t;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_16
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jodo/shares/net/jd/providers/downloads/u;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    invoke-virtual {v6}, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-wide v7, v1, Lcom/jodo/shares/net/jd/providers/downloads/g;->a:J

    iget-object v1, v1, Lcom/jodo/shares/net/jd/providers/downloads/g;->e:Ljava/lang/String;

    invoke-static {v6, v7, v8, v1}, Lcom/jodo/shares/net/jd/providers/downloads/af;->a(Landroid/content/ContentResolver;JLjava/lang/String;)V

    goto/16 :goto_b

    :cond_17
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jodo/shares/net/jd/providers/downloads/u;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    invoke-virtual {v6}, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, v1, Lcom/jodo/shares/net/jd/providers/downloads/g;->y:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jodo/shares/net/jd/providers/downloads/u;->a:Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;

    invoke-virtual {v6}, Lcom/jodo/shares/net/jd/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-wide v7, v1, Lcom/jodo/shares/net/jd/providers/downloads/g;->a:J

    iget-object v1, v1, Lcom/jodo/shares/net/jd/providers/downloads/g;->e:Ljava/lang/String;

    invoke-static {v6, v7, v8, v1}, Lcom/jodo/shares/net/jd/providers/downloads/af;->a(Landroid/content/ContentResolver;JLjava/lang/String;)V

    goto/16 :goto_b

    :cond_18
    move v1, v4

    goto/16 :goto_0

    :cond_19
    move v1, v4

    move v4, v5

    goto/16 :goto_9

    :cond_1a
    move v6, v4

    move v1, v5

    goto/16 :goto_4

    :cond_1b
    move-wide v2, v7

    move v1, v9

    goto/16 :goto_0
.end method

.class Lcom/mqgame/lib/SLaunchActivity$1;
.super Ljava/lang/Object;
.source "SLaunchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mqgame/lib/SLaunchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mqgame/lib/SLaunchActivity;


# direct methods
.method constructor <init>(Lcom/mqgame/lib/SLaunchActivity;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/mqgame/lib/SLaunchActivity$1;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const v4, 0x7f090117

    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 321
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity$1;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    invoke-virtual {v0}, Lcom/mqgame/lib/SLaunchActivity;->chkReinstall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity$1;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    # setter for: Lcom/mqgame/lib/SLaunchActivity;->needexit:Z
    invoke-static {v0, v11}, Lcom/mqgame/lib/SLaunchActivity;->access$002(Lcom/mqgame/lib/SLaunchActivity;Z)Z

    .line 323
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity$1;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    invoke-virtual {v0}, Lcom/mqgame/lib/SLaunchActivity;->quit()V

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity$1;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    const-string v2, "global"

    invoke-virtual {v0, v2, v11}, Lcom/mqgame/lib/SLaunchActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 329
    .local v9, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 330
    .local v8, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v0, "UpdateApk"

    invoke-interface {v8, v0, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 331
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 334
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity$1;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    invoke-virtual {v0}, Lcom/mqgame/lib/SLaunchActivity;->chkSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity$1;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    invoke-virtual {v0}, Lcom/mqgame/lib/SLaunchActivity;->prepare()V

    .line 342
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity$1;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    invoke-virtual {v0}, Lcom/mqgame/lib/SLaunchActivity;->chkInstall()Z

    move-result v0

    if-nez v0, :cond_2

    .line 344
    invoke-static {}, Lcom/mqgame/lib/SUtility;->getNetState()I

    move-result v0

    sget v2, Lcom/mqgame/lib/SUtility;->SNET_WIFI:I

    if-ne v0, v2, :cond_0

    .line 345
    invoke-static {}, Lcom/mqgame/lib/SUtility;->UploadReport()V

    goto :goto_0

    .line 352
    :cond_2
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity$1;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    invoke-virtual {v0}, Lcom/mqgame/lib/SLaunchActivity;->reloadLauncherCfg()V

    .line 358
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity$1;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    const/4 v2, 0x5

    invoke-virtual {v0, v4, v2, v12, v11}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 359
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity$1;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    const/16 v2, 0x60

    const/16 v3, 0x3e8

    invoke-virtual {v0, v4, v2, v12, v3}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 360
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity$1;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/mqgame/lib/SLaunchActivity;->updateSmallProTxt(Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity$1;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    invoke-virtual {v0}, Lcom/mqgame/lib/SLaunchActivity;->preLog()Z

    .line 366
    invoke-static {}, Lcom/mqgame/lib/SUtility;->chkUploadingDmp()V

    .line 368
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity$1;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    const/16 v2, 0x64

    invoke-virtual {v0, v4, v2, v12, v11}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    .line 371
    :cond_3
    invoke-static {}, Lcom/mqgame/lib/SUtility;->getNetState()I

    move-result v0

    sget v2, Lcom/mqgame/lib/SUtility;->SNET_NULL:I

    if-ne v0, v2, :cond_4

    .line 372
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity$1;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    invoke-virtual {v0}, Lcom/mqgame/lib/SLaunchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 373
    .local v6, "ctx":Landroid/content/Context;
    if-eqz v6, :cond_0

    .line 375
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity$1;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    const v2, 0x7f09011f

    const v3, 0x7f090122

    const v4, 0x7f090124

    const v5, 0x7f09011d

    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/mqgame/lib/SLaunchActivity;->showComMsg(IIILjava/lang/String;)V

    .line 378
    invoke-static {}, Lcom/mqgame/lib/SComMessage;->waitSel()V

    .line 379
    sget v0, Lcom/mqgame/lib/SComMessage;->selresult:I

    sget v2, Lcom/mqgame/lib/SComMessage;->SAT_COMMSG_SEL_CANCEL:I

    if-ne v0, v2, :cond_3

    .line 380
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity$1;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    # setter for: Lcom/mqgame/lib/SLaunchActivity;->needexit:Z
    invoke-static {v0, v11}, Lcom/mqgame/lib/SLaunchActivity;->access$002(Lcom/mqgame/lib/SLaunchActivity;Z)Z

    .line 381
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity$1;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    invoke-virtual {v0}, Lcom/mqgame/lib/SLaunchActivity;->quit()V

    goto/16 :goto_0

    .line 387
    .end local v6    # "ctx":Landroid/content/Context;
    :cond_4
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity$1;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    invoke-virtual {v0}, Lcom/mqgame/lib/SLaunchActivity;->chkUpdate()I

    move-result v10

    .line 388
    .local v10, "result":I
    const/4 v0, 0x2

    if-ne v10, v0, :cond_5

    .line 389
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity$1;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    invoke-virtual {v0}, Lcom/mqgame/lib/SLaunchActivity;->launchSelf()V

    goto/16 :goto_0

    .line 390
    :cond_5
    if-ne v10, v13, :cond_8

    .line 392
    invoke-static {}, Lcom/mqgame/lib/SUtility;->isDefaultABI()Z

    move-result v0

    if-nez v0, :cond_6

    .line 393
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity$1;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    const-string v2, "global"

    invoke-virtual {v0, v2, v11}, Lcom/mqgame/lib/SLaunchActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 394
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 395
    const-string v0, "FullInstalled"

    invoke-interface {v8, v0, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 396
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 399
    :cond_6
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity$1;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    invoke-virtual {v0}, Lcom/mqgame/lib/SLaunchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 400
    .restart local v6    # "ctx":Landroid/content/Context;
    if-eqz v6, :cond_7

    .line 409
    :cond_7
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mqgame/lib/SUtility;->getDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "filter.ini"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 410
    .local v1, "updateTipsLocalPath":Ljava/lang/String;
    const-string v0, "filter.ini"

    iget-object v2, p0, Lcom/mqgame/lib/SLaunchActivity$1;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    iget-object v2, v2, Lcom/mqgame/lib/SLaunchActivity;->FilterURL:Ljava/lang/String;

    iget-object v3, p0, Lcom/mqgame/lib/SLaunchActivity$1;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    iget-object v3, v3, Lcom/mqgame/lib/SLaunchActivity;->FilterURLCRC:Ljava/lang/String;

    const-string v4, "filter.ini.crc"

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/mqgame/lib/SLaunchActivity;->chkUpdateCfg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 422
    .end local v1    # "updateTipsLocalPath":Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity$1;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    invoke-virtual {v0}, Lcom/mqgame/lib/SLaunchActivity;->launchGame()V

    goto/16 :goto_0

    .line 412
    :catch_0
    move-exception v7

    .line 413
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 414
    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto :goto_1

    .line 416
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 417
    .local v7, "e":Ljava/lang/Error;
    invoke-virtual {v7}, Ljava/lang/Error;->printStackTrace()V

    .line 418
    invoke-virtual {v7}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto :goto_1

    .line 424
    .end local v6    # "ctx":Landroid/content/Context;
    .end local v7    # "e":Ljava/lang/Error;
    :cond_8
    if-nez v10, :cond_0

    .line 425
    invoke-static {}, Lcom/mqgame/lib/SUtility;->getNetState()I

    move-result v0

    sget v2, Lcom/mqgame/lib/SUtility;->SNET_WIFI:I

    if-ne v0, v2, :cond_9

    .line 426
    invoke-static {}, Lcom/mqgame/lib/SUtility;->UploadReport()V

    .line 429
    :cond_9
    iget-object v0, p0, Lcom/mqgame/lib/SLaunchActivity$1;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    const v2, 0x7f090150

    invoke-virtual {v0, v2, v11, v12, v11}, Lcom/mqgame/lib/SLaunchActivity;->updateUIProgress(IILjava/lang/String;I)V

    goto/16 :goto_0
.end method

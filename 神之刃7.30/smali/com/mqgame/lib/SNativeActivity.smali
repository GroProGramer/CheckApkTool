.class public Lcom/mqgame/lib/SNativeActivity;
.super Landroid/app/NativeActivity;
.source "SNativeActivity.java"


# instance fields
.field protected nativecallbacking:Z

.field public screenH:I

.field public screenW:I

.field protected userScreenMode:I

.field protected vKeyboard:Lcom/mqgame/lib/SVKeyboard;

.field public vWait:Lcom/mqgame/lib/SWait;

.field public vWeb:Lcom/mqgame/lib/SWebCenter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 484
    invoke-direct {p0}, Landroid/app/NativeActivity;-><init>()V

    .line 492
    iput-boolean v0, p0, Lcom/mqgame/lib/SNativeActivity;->nativecallbacking:Z

    .line 493
    iput v0, p0, Lcom/mqgame/lib/SNativeActivity;->userScreenMode:I

    return-void
.end method


# virtual methods
.method public getCurVKeyboardTxt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 765
    sget-object v0, Lcom/mqgame/lib/SVKeyboard;->curVKString:Ljava/lang/String;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 588
    invoke-static {p1, p2, p3}, Lcom/mqgame/lib/SSDK;->onActivityResult(IILandroid/content/Intent;)V

    .line 589
    invoke-super {p0, p1, p2, p3}, Landroid/app/NativeActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 590
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 572
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 574
    :try_start_0
    invoke-static {p1}, Lcom/mqgame/lib/SSDK;->onConfigChged(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 584
    :goto_0
    return-void

    .line 576
    :catch_0
    move-exception v0

    .line 577
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 578
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto :goto_0

    .line 580
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 581
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    .line 582
    invoke-virtual {v0}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 498
    :try_start_0
    invoke-static {p0}, Lcom/mqgame/lib/SUtility;->setup(Landroid/app/Activity;)Z

    .line 499
    const v3, 0x7f03003e

    invoke-virtual {p0, v3}, Lcom/mqgame/lib/SNativeActivity;->setContentView(I)V

    .line 500
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/mqgame/lib/SUtility;->showWait(Z)V

    .line 502
    invoke-virtual {p0}, Lcom/mqgame/lib/SNativeActivity;->preRun()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 513
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/mqgame/lib/SNativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 514
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 515
    .local v2, "wl":Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 516
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_3

    .line 526
    .end local v1    # "window":Landroid/view/Window;
    .end local v2    # "wl":Landroid/view/WindowManager$LayoutParams;
    :goto_1
    invoke-static {}, Lcom/mqgame/lib/SSDK;->onCreate()V

    .line 527
    invoke-static {}, Lcom/mqgame/lib/SUtility;->setupUnhandledException()V

    .line 528
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 529
    return-void

    .line 504
    :catch_0
    move-exception v0

    .line 505
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 507
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 508
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0

    .line 518
    .end local v0    # "e":Ljava/lang/Error;
    :catch_2
    move-exception v0

    .line 519
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 521
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 522
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 532
    const-string v0, "sog_debug"

    const-string v1, "OnDestroy called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    invoke-super {p0}, Landroid/app/NativeActivity;->onDestroy()V

    .line 535
    :try_start_0
    invoke-static {}, Lcom/linekong/voice/VoiceManager;->deinit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 542
    :goto_0
    invoke-static {}, Lcom/mqgame/lib/SSDK;->onDestroy()V

    .line 543
    const-string v0, "sog_debug:exit0"

    invoke-static {v0}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    .line 544
    const-string v0, "sog_debug"

    const-string v1, "sog_debug:exit0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 546
    return-void

    .line 537
    :catch_0
    move-exception v0

    goto :goto_0

    .line 539
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 594
    invoke-static {p1}, Lcom/mqgame/lib/SSDK;->onNewIntent(Landroid/content/Intent;)V

    .line 595
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 596
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 550
    invoke-super {p0}, Landroid/app/NativeActivity;->onPause()V

    .line 551
    invoke-static {}, Lcom/mqgame/lib/SSDK;->onPause()V

    .line 552
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 566
    invoke-super {p0}, Landroid/app/NativeActivity;->onResume()V

    .line 567
    invoke-static {}, Lcom/mqgame/lib/SSDK;->onResume()V

    .line 568
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 561
    invoke-super {p0}, Landroid/app/NativeActivity;->onStart()V

    .line 562
    invoke-static {}, Lcom/mqgame/lib/SSDK;->onStart()V

    .line 563
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 555
    invoke-super {p0}, Landroid/app/NativeActivity;->onStop()V

    .line 556
    invoke-static {}, Lcom/mqgame/lib/SSDK;->onStop()V

    .line 557
    return-void
.end method

.method public preRun()Z
    .locals 8

    .prologue
    .line 612
    :try_start_0
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 613
    .local v4, "lModuleList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/String;

    const-string v7, "gnustl_shared"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 614
    new-instance v6, Ljava/lang/String;

    const-string v7, "openal"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 615
    new-instance v6, Ljava/lang/String;

    const-string v7, "compress"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 616
    new-instance v6, Ljava/lang/String;

    const-string v7, "script"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 617
    new-instance v6, Ljava/lang/String;

    const-string v7, "iconv"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 618
    new-instance v6, Ljava/lang/String;

    const-string v7, "ogg"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 619
    new-instance v6, Ljava/lang/String;

    const-string v7, "vorbis"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 620
    new-instance v6, Ljava/lang/String;

    const-string v7, "vorbisfile"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 621
    new-instance v6, Ljava/lang/String;

    const-string v7, "curl"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 622
    new-instance v6, Ljava/lang/String;

    const-string v7, "autoupdater"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 623
    new-instance v6, Ljava/lang/String;

    const-string v7, "speex"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 624
    new-instance v6, Ljava/lang/String;

    const-string v7, "mqsog"

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 627
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 628
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 630
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 631
    .local v3, "lCurModule":Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mqgame/lib/SUtility;->getLibPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "lib"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".so"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 632
    .local v5, "lTryModule":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 633
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 634
    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 644
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "lCurModule":Ljava/lang/String;
    .end local v4    # "lModuleList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v5    # "lTryModule":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 645
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 646
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    .line 647
    const/4 v6, 0x0

    .line 654
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return v6

    .line 637
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v3    # "lCurModule":Ljava/lang/String;
    .restart local v4    # "lModuleList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .restart local v5    # "lTryModule":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-static {v5}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 649
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "lCurModule":Ljava/lang/String;
    .end local v4    # "lModuleList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v5    # "lTryModule":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 650
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    .line 651
    invoke-virtual {v0}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    .line 654
    .end local v0    # "e":Ljava/lang/Error;
    :goto_2
    const/4 v6, 0x1

    goto :goto_1

    .line 642
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v4    # "lModuleList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :cond_1
    :try_start_2
    invoke-static {p0}, Lcom/linekong/voice/VoiceManager;->init(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2
.end method

.method public setupScreen()V
    .locals 3

    .prologue
    .line 598
    invoke-virtual {p0}, Lcom/mqgame/lib/SNativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 599
    .local v1, "win":Landroid/view/Window;
    if-nez v1, :cond_0

    .line 605
    :goto_0
    return-void

    .line 602
    :cond_0
    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 603
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/mqgame/lib/SNativeActivity;->screenW:I

    .line 604
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/mqgame/lib/SNativeActivity;->screenH:I

    goto :goto_0
.end method

.method public showBlank(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 714
    if-nez p1, :cond_1

    .line 715
    :try_start_0
    iget-object v1, p0, Lcom/mqgame/lib/SNativeActivity;->vWait:Lcom/mqgame/lib/SWait;

    if-eqz v1, :cond_0

    .line 716
    iget-object v1, p0, Lcom/mqgame/lib/SNativeActivity;->vWait:Lcom/mqgame/lib/SWait;

    invoke-virtual {v1}, Lcom/mqgame/lib/SWait;->dismiss()V

    .line 717
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mqgame/lib/SNativeActivity;->vWait:Lcom/mqgame/lib/SWait;

    .line 736
    :cond_0
    :goto_0
    return-void

    .line 722
    :cond_1
    iget-object v1, p0, Lcom/mqgame/lib/SNativeActivity;->vWait:Lcom/mqgame/lib/SWait;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mqgame/lib/SNativeActivity;->vWait:Lcom/mqgame/lib/SWait;

    invoke-virtual {v1}, Lcom/mqgame/lib/SWait;->isShowing()Z

    move-result v1

    if-nez v1, :cond_3

    .line 723
    :cond_2
    new-instance v1, Lcom/mqgame/lib/SWait;

    invoke-direct {v1, p0}, Lcom/mqgame/lib/SWait;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/mqgame/lib/SNativeActivity;->vWait:Lcom/mqgame/lib/SWait;

    .line 724
    :cond_3
    iget-object v1, p0, Lcom/mqgame/lib/SNativeActivity;->vWait:Lcom/mqgame/lib/SWait;

    invoke-virtual {v1}, Lcom/mqgame/lib/SWait;->show()V

    .line 725
    iget-object v1, p0, Lcom/mqgame/lib/SNativeActivity;->vWait:Lcom/mqgame/lib/SWait;

    invoke-virtual {v1}, Lcom/mqgame/lib/SWait;->configureForBlank()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 728
    :catch_0
    move-exception v0

    .line 729
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 730
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto :goto_0

    .line 732
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 733
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    .line 734
    invoke-virtual {v0}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showVKeyboard(ZLjava/lang/String;II)V
    .locals 2
    .param p1, "show"    # Z
    .param p2, "curText"    # Ljava/lang/String;
    .param p3, "cursor"    # I
    .param p4, "mask"    # I

    .prologue
    .line 659
    :try_start_0
    sput-object p2, Lcom/mqgame/lib/SVKeyboard;->curVKString:Ljava/lang/String;

    .line 660
    sput p3, Lcom/mqgame/lib/SVKeyboard;->curVKCursor:I

    .line 661
    sput p4, Lcom/mqgame/lib/SVKeyboard;->curVKMask:I

    .line 663
    if-nez p1, :cond_1

    .line 664
    iget-object v1, p0, Lcom/mqgame/lib/SNativeActivity;->vKeyboard:Lcom/mqgame/lib/SVKeyboard;

    if-eqz v1, :cond_0

    .line 665
    iget-object v1, p0, Lcom/mqgame/lib/SNativeActivity;->vKeyboard:Lcom/mqgame/lib/SVKeyboard;

    invoke-virtual {v1}, Lcom/mqgame/lib/SVKeyboard;->dismiss()V

    .line 666
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mqgame/lib/SNativeActivity;->vKeyboard:Lcom/mqgame/lib/SVKeyboard;

    .line 684
    :cond_0
    :goto_0
    return-void

    .line 671
    :cond_1
    iget-object v1, p0, Lcom/mqgame/lib/SNativeActivity;->vKeyboard:Lcom/mqgame/lib/SVKeyboard;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mqgame/lib/SNativeActivity;->vKeyboard:Lcom/mqgame/lib/SVKeyboard;

    invoke-virtual {v1}, Lcom/mqgame/lib/SVKeyboard;->isShowing()Z

    move-result v1

    if-nez v1, :cond_3

    .line 672
    :cond_2
    new-instance v1, Lcom/mqgame/lib/SVKeyboard;

    invoke-direct {v1, p0}, Lcom/mqgame/lib/SVKeyboard;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/mqgame/lib/SNativeActivity;->vKeyboard:Lcom/mqgame/lib/SVKeyboard;

    .line 673
    :cond_3
    iget-object v1, p0, Lcom/mqgame/lib/SNativeActivity;->vKeyboard:Lcom/mqgame/lib/SVKeyboard;

    invoke-virtual {v1}, Lcom/mqgame/lib/SVKeyboard;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 676
    :catch_0
    move-exception v0

    .line 677
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 678
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto :goto_0

    .line 680
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 681
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    .line 682
    invoke-virtual {v0}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showWait(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 741
    if-nez p1, :cond_1

    .line 742
    :try_start_0
    iget-object v1, p0, Lcom/mqgame/lib/SNativeActivity;->vWait:Lcom/mqgame/lib/SWait;

    if-eqz v1, :cond_0

    .line 743
    iget-object v1, p0, Lcom/mqgame/lib/SNativeActivity;->vWait:Lcom/mqgame/lib/SWait;

    invoke-virtual {v1}, Lcom/mqgame/lib/SWait;->dismiss()V

    .line 744
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mqgame/lib/SNativeActivity;->vWait:Lcom/mqgame/lib/SWait;

    .line 762
    :cond_0
    :goto_0
    return-void

    .line 749
    :cond_1
    iget-object v1, p0, Lcom/mqgame/lib/SNativeActivity;->vWait:Lcom/mqgame/lib/SWait;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mqgame/lib/SNativeActivity;->vWait:Lcom/mqgame/lib/SWait;

    invoke-virtual {v1}, Lcom/mqgame/lib/SWait;->isShowing()Z

    move-result v1

    if-nez v1, :cond_3

    .line 750
    :cond_2
    new-instance v1, Lcom/mqgame/lib/SWait;

    invoke-direct {v1, p0}, Lcom/mqgame/lib/SWait;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/mqgame/lib/SNativeActivity;->vWait:Lcom/mqgame/lib/SWait;

    .line 751
    :cond_3
    iget-object v1, p0, Lcom/mqgame/lib/SNativeActivity;->vWait:Lcom/mqgame/lib/SWait;

    invoke-virtual {v1}, Lcom/mqgame/lib/SWait;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 754
    :catch_0
    move-exception v0

    .line 755
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 756
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto :goto_0

    .line 758
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 759
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    .line 760
    invoke-virtual {v0}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showWeb(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "show"    # Z

    .prologue
    .line 688
    if-nez p2, :cond_1

    .line 689
    :try_start_0
    iget-object v1, p0, Lcom/mqgame/lib/SNativeActivity;->vWeb:Lcom/mqgame/lib/SWebCenter;

    if-eqz v1, :cond_0

    .line 690
    iget-object v1, p0, Lcom/mqgame/lib/SNativeActivity;->vWeb:Lcom/mqgame/lib/SWebCenter;

    invoke-virtual {v1}, Lcom/mqgame/lib/SWebCenter;->dismiss()V

    .line 691
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mqgame/lib/SNativeActivity;->vWeb:Lcom/mqgame/lib/SWebCenter;

    .line 710
    :cond_0
    :goto_0
    return-void

    .line 696
    :cond_1
    iget-object v1, p0, Lcom/mqgame/lib/SNativeActivity;->vWeb:Lcom/mqgame/lib/SWebCenter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mqgame/lib/SNativeActivity;->vWeb:Lcom/mqgame/lib/SWebCenter;

    invoke-virtual {v1}, Lcom/mqgame/lib/SWebCenter;->isShowing()Z

    move-result v1

    if-nez v1, :cond_3

    .line 697
    :cond_2
    new-instance v1, Lcom/mqgame/lib/SWebCenter;

    invoke-direct {v1, p0}, Lcom/mqgame/lib/SWebCenter;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/mqgame/lib/SNativeActivity;->vWeb:Lcom/mqgame/lib/SWebCenter;

    .line 698
    :cond_3
    iget-object v1, p0, Lcom/mqgame/lib/SNativeActivity;->vWeb:Lcom/mqgame/lib/SWebCenter;

    invoke-virtual {v1}, Lcom/mqgame/lib/SWebCenter;->show()V

    .line 699
    iget-object v1, p0, Lcom/mqgame/lib/SNativeActivity;->vWeb:Lcom/mqgame/lib/SWebCenter;

    invoke-virtual {v1, p1}, Lcom/mqgame/lib/SWebCenter;->navigate(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 702
    :catch_0
    move-exception v0

    .line 703
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 704
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto :goto_0

    .line 706
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 707
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    .line 708
    invoke-virtual {v0}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto :goto_0
.end method

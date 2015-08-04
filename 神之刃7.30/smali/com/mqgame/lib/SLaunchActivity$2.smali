.class Lcom/mqgame/lib/SLaunchActivity$2;
.super Landroid/os/Handler;
.source "SLaunchActivity.java"


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
    .line 438
    iput-object p1, p0, Lcom/mqgame/lib/SLaunchActivity$2;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 442
    iget v11, p1, Landroid/os/Message;->what:I

    packed-switch v11, :pswitch_data_0

    .line 559
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 560
    :cond_1
    return-void

    .line 446
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/mqgame/lib/SLaunchActivity$ProgressAppendMsg;

    .line 447
    .local v1, "Msg":Lcom/mqgame/lib/SLaunchActivity$ProgressAppendMsg;
    if-eqz v1, :cond_1

    .line 450
    iget-object v2, v1, Lcom/mqgame/lib/SLaunchActivity$ProgressAppendMsg;->appendtxt:Ljava/lang/String;

    .line 451
    .local v2, "appendtxt":Ljava/lang/String;
    iget v8, v1, Lcom/mqgame/lib/SLaunchActivity$ProgressAppendMsg;->progressinterval:I

    .line 453
    .local v8, "interval":I
    iget-object v11, p0, Lcom/mqgame/lib/SLaunchActivity$2;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    invoke-virtual {v11}, Lcom/mqgame/lib/SLaunchActivity;->chkShowProgress()V

    .line 454
    iget v11, p1, Landroid/os/Message;->arg1:I

    if-eqz v11, :cond_3

    .line 455
    iget-object v11, p0, Lcom/mqgame/lib/SLaunchActivity$2;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    invoke-virtual {v11}, Lcom/mqgame/lib/SLaunchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 456
    .local v5, "ctx":Landroid/content/Context;
    if-eqz v5, :cond_0

    .line 459
    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 460
    .local v10, "str":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 461
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 463
    :cond_2
    iget-object v11, p0, Lcom/mqgame/lib/SLaunchActivity$2;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    # getter for: Lcom/mqgame/lib/SLaunchActivity;->mainText:Landroid/widget/TextView;
    invoke-static {v11}, Lcom/mqgame/lib/SLaunchActivity;->access$100(Lcom/mqgame/lib/SLaunchActivity;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    .end local v5    # "ctx":Landroid/content/Context;
    .end local v10    # "str":Ljava/lang/String;
    :cond_3
    iget-object v11, p0, Lcom/mqgame/lib/SLaunchActivity$2;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    iget v12, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v11, v12, v8}, Lcom/mqgame/lib/SLaunchActivity;->moveProcess(II)V

    goto :goto_0

    .line 472
    .end local v1    # "Msg":Lcom/mqgame/lib/SLaunchActivity$ProgressAppendMsg;
    .end local v2    # "appendtxt":Ljava/lang/String;
    .end local v8    # "interval":I
    :pswitch_1
    :try_start_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/app/AlertDialog$Builder;

    .line 473
    .local v3, "builder":Landroid/app/AlertDialog$Builder;
    if-eqz v3, :cond_1

    .line 476
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 477
    .local v6, "dlg":Landroid/app/AlertDialog;
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 479
    .end local v3    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v6    # "dlg":Landroid/app/AlertDialog;
    :catch_0
    move-exception v7

    .line 480
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 481
    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto :goto_0

    .line 483
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 484
    .local v7, "e":Ljava/lang/Error;
    invoke-virtual {v7}, Ljava/lang/Error;->printStackTrace()V

    .line 485
    invoke-virtual {v7}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto :goto_0

    .line 492
    .end local v7    # "e":Ljava/lang/Error;
    :pswitch_2
    iget-object v11, p0, Lcom/mqgame/lib/SLaunchActivity$2;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    # getter for: Lcom/mqgame/lib/SLaunchActivity;->versionText:Landroid/widget/TextView;
    invoke-static {v11}, Lcom/mqgame/lib/SLaunchActivity;->access$200(Lcom/mqgame/lib/SLaunchActivity;)Landroid/widget/TextView;

    move-result-object v12

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 498
    :pswitch_3
    iget-object v11, p0, Lcom/mqgame/lib/SLaunchActivity$2;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    # getter for: Lcom/mqgame/lib/SLaunchActivity;->smallprogressText:Landroid/widget/TextView;
    invoke-static {v11}, Lcom/mqgame/lib/SLaunchActivity;->access$300(Lcom/mqgame/lib/SLaunchActivity;)Landroid/widget/TextView;

    move-result-object v12

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 504
    :pswitch_4
    iget-object v11, p0, Lcom/mqgame/lib/SLaunchActivity$2;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    invoke-virtual {v11}, Lcom/mqgame/lib/SLaunchActivity;->finish()V

    goto/16 :goto_0

    .line 509
    :pswitch_5
    iget v11, p1, Landroid/os/Message;->arg1:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    .line 510
    iget-object v11, p0, Lcom/mqgame/lib/SLaunchActivity$2;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    invoke-virtual {v11}, Lcom/mqgame/lib/SLaunchActivity;->startComment()V

    goto/16 :goto_0

    .line 512
    :cond_4
    iget-object v11, p0, Lcom/mqgame/lib/SLaunchActivity$2;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    invoke-virtual {v11}, Lcom/mqgame/lib/SLaunchActivity;->stopComment()V

    goto/16 :goto_0

    .line 517
    :pswitch_6
    iget-object v11, p0, Lcom/mqgame/lib/SLaunchActivity$2;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    # getter for: Lcom/mqgame/lib/SLaunchActivity;->commonText:Landroid/widget/TextView;
    invoke-static {v11}, Lcom/mqgame/lib/SLaunchActivity;->access$400(Lcom/mqgame/lib/SLaunchActivity;)Landroid/widget/TextView;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 518
    const-string v4, ""

    .line 520
    .local v4, "cmTxt":Ljava/lang/String;
    :try_start_1
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v11

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_3

    .line 530
    :goto_1
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_5

    .line 531
    iget-object v11, p0, Lcom/mqgame/lib/SLaunchActivity$2;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    # getter for: Lcom/mqgame/lib/SLaunchActivity;->commonText:Landroid/widget/TextView;
    invoke-static {v11}, Lcom/mqgame/lib/SLaunchActivity;->access$400(Lcom/mqgame/lib/SLaunchActivity;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 522
    :catch_2
    move-exception v7

    .line 523
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 524
    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto :goto_1

    .line 526
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v7

    .line 527
    .local v7, "e":Ljava/lang/Error;
    invoke-virtual {v7}, Ljava/lang/Error;->printStackTrace()V

    .line 528
    invoke-virtual {v7}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto :goto_1

    .line 533
    .end local v7    # "e":Ljava/lang/Error;
    :cond_5
    iget-object v11, p0, Lcom/mqgame/lib/SLaunchActivity$2;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    # getter for: Lcom/mqgame/lib/SLaunchActivity;->commonText:Landroid/widget/TextView;
    invoke-static {v11}, Lcom/mqgame/lib/SLaunchActivity;->access$400(Lcom/mqgame/lib/SLaunchActivity;)Landroid/widget/TextView;

    move-result-object v11

    iget v12, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 541
    .end local v4    # "cmTxt":Ljava/lang/String;
    :pswitch_7
    :try_start_2
    iget-object v11, p0, Lcom/mqgame/lib/SLaunchActivity$2;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    const v12, 0x7f060024

    invoke-virtual {v11, v12}, Lcom/mqgame/lib/SLaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 542
    .local v9, "l":Landroid/widget/LinearLayout;
    iget-object v11, p0, Lcom/mqgame/lib/SLaunchActivity$2;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    iget-object v11, v11, Lcom/mqgame/lib/SLaunchActivity;->chkerView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 543
    iget-object v11, p0, Lcom/mqgame/lib/SLaunchActivity$2;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    iget-object v11, v11, Lcom/mqgame/lib/SLaunchActivity;->chkerView:Landroid/opengl/GLSurfaceView;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    .line 544
    iget-object v11, p0, Lcom/mqgame/lib/SLaunchActivity$2;->this$0:Lcom/mqgame/lib/SLaunchActivity;

    const/4 v12, 0x0

    iput-object v12, v11, Lcom/mqgame/lib/SLaunchActivity;->chkerView:Landroid/opengl/GLSurfaceView;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_5

    goto/16 :goto_0

    .line 546
    .end local v9    # "l":Landroid/widget/LinearLayout;
    :catch_4
    move-exception v7

    .line 547
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 548
    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 550
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v7

    .line 551
    .local v7, "e":Ljava/lang/Error;
    invoke-virtual {v7}, Ljava/lang/Error;->printStackTrace()V

    .line 552
    invoke-virtual {v7}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/mqgame/lib/SUtility;->appendLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 442
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_3
    .end packed-switch
.end method

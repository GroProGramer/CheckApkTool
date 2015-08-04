.class Lcom/mqgame/lib/SWait;
.super Landroid/app/Dialog;
.source "SNativeActivity.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "av"    # Landroid/app/Activity;

    .prologue
    .line 259
    const v0, 0x7f050071

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 260
    invoke-virtual {p0, p1}, Lcom/mqgame/lib/SWait;->setOwnerActivity(Landroid/app/Activity;)V

    .line 261
    return-void
.end method


# virtual methods
.method public configureForBlank()V
    .locals 7

    .prologue
    .line 297
    const v6, 0x7f0600cd

    :try_start_0
    invoke-virtual {p0, v6}, Lcom/mqgame/lib/SWait;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 298
    .local v5, "txtview":Landroid/widget/TextView;
    if-eqz v5, :cond_0

    .line 299
    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 301
    :cond_0
    const v6, 0x7f0600d1

    invoke-virtual {p0, v6}, Lcom/mqgame/lib/SWait;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 302
    .local v2, "mtxtview":Landroid/widget/TextView;
    if-eqz v2, :cond_1

    .line 303
    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 305
    :cond_1
    const v6, 0x7f0600cc

    invoke-virtual {p0, v6}, Lcom/mqgame/lib/SWait;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 306
    .local v3, "progress":Landroid/widget/ProgressBar;
    if-eqz v3, :cond_2

    .line 307
    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 309
    :cond_2
    const v6, 0x7f0600d2

    invoke-virtual {p0, v6}, Lcom/mqgame/lib/SWait;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    .line 310
    .local v4, "progress_p":Landroid/widget/ProgressBar;
    if-eqz v4, :cond_3

    .line 311
    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 313
    :cond_3
    const v6, 0x7f0600d0

    invoke-virtual {p0, v6}, Lcom/mqgame/lib/SWait;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 314
    .local v1, "im":Landroid/widget/ImageView;
    if-eqz v1, :cond_4

    .line 315
    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 323
    .end local v1    # "im":Landroid/widget/ImageView;
    .end local v2    # "mtxtview":Landroid/widget/TextView;
    .end local v3    # "progress":Landroid/widget/ProgressBar;
    .end local v4    # "progress_p":Landroid/widget/ProgressBar;
    .end local v5    # "txtview":Landroid/widget/TextView;
    :cond_4
    :goto_0
    return-void

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 320
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 321
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 264
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 268
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/mqgame/lib/SWait;->requestWindowFeature(I)Z

    .line 269
    invoke-virtual {p0}, Lcom/mqgame/lib/SWait;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x400

    const/16 v6, 0x400

    invoke-virtual {v4, v5, v6}, Landroid/view/Window;->setFlags(II)V

    .line 272
    const v4, 0x7f030041

    invoke-virtual {p0, v4}, Lcom/mqgame/lib/SWait;->setContentView(I)V

    .line 274
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_0

    .line 275
    const v4, 0x7f0600d0

    invoke-virtual {p0, v4}, Lcom/mqgame/lib/SWait;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 276
    .local v3, "view":Landroid/widget/ImageView;
    if-eqz v3, :cond_1

    .line 277
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 282
    .end local v3    # "view":Landroid/widget/ImageView;
    :cond_0
    :goto_0
    const v4, 0x7f0600cd

    invoke-virtual {p0, v4}, Lcom/mqgame/lib/SWait;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 283
    .local v2, "txtview":Landroid/widget/TextView;
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 285
    const v4, 0x7f0600cc

    invoke-virtual {p0, v4}, Lcom/mqgame/lib/SWait;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 286
    .local v1, "progress":Landroid/widget/ProgressBar;
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 294
    .end local v1    # "progress":Landroid/widget/ProgressBar;
    .end local v2    # "txtview":Landroid/widget/TextView;
    :goto_1
    return-void

    .line 279
    .restart local v3    # "view":Landroid/widget/ImageView;
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 288
    .end local v3    # "view":Landroid/widget/ImageView;
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 291
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_1
.end method

.method public setTxt(Ljava/lang/String;)V
    .locals 8
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 327
    const v6, 0x7f0600cd

    :try_start_0
    invoke-virtual {p0, v6}, Lcom/mqgame/lib/SWait;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 328
    .local v4, "txtview":Landroid/widget/TextView;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 330
    const v6, 0x7f0600cc

    invoke-virtual {p0, v6}, Lcom/mqgame/lib/SWait;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 331
    .local v3, "progress":Landroid/widget/ProgressBar;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 333
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    const v6, 0x7f0600d1

    invoke-virtual {p0, v6}, Lcom/mqgame/lib/SWait;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 336
    .local v2, "maintxtview":Landroid/widget/TextView;
    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 338
    const v6, 0x7f0600d2

    invoke-virtual {p0, v6}, Lcom/mqgame/lib/SWait;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 339
    .local v1, "mainprogress":Landroid/widget/ProgressBar;
    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 341
    const v6, 0x7f0600d0

    invoke-virtual {p0, v6}, Lcom/mqgame/lib/SWait;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 343
    .local v5, "view":Landroid/widget/ImageView;
    if-eqz v5, :cond_0

    .line 344
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-ge v6, v7, :cond_1

    .line 345
    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 357
    .end local v1    # "mainprogress":Landroid/widget/ProgressBar;
    .end local v2    # "maintxtview":Landroid/widget/TextView;
    .end local v3    # "progress":Landroid/widget/ProgressBar;
    .end local v4    # "txtview":Landroid/widget/TextView;
    .end local v5    # "view":Landroid/widget/ImageView;
    :cond_0
    :goto_0
    return-void

    .line 348
    .restart local v1    # "mainprogress":Landroid/widget/ProgressBar;
    .restart local v2    # "maintxtview":Landroid/widget/TextView;
    .restart local v3    # "progress":Landroid/widget/ProgressBar;
    .restart local v4    # "txtview":Landroid/widget/TextView;
    .restart local v5    # "view":Landroid/widget/ImageView;
    :cond_1
    const v6, 0x3e99999a    # 0.3f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setAlpha(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 351
    .end local v1    # "mainprogress":Landroid/widget/ProgressBar;
    .end local v2    # "maintxtview":Landroid/widget/TextView;
    .end local v3    # "progress":Landroid/widget/ProgressBar;
    .end local v4    # "txtview":Landroid/widget/TextView;
    .end local v5    # "view":Landroid/widget/ImageView;
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 354
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 355
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method

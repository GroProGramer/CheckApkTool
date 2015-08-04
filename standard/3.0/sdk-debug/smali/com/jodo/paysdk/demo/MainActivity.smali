.class public Lcom/jodo/paysdk/demo/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jodo/paysdk/interfaces/InitCallbackListener;
.implements Lcom/jodo/paysdk/interfaces/LoginCallbackListener;


# instance fields
.field btn2:Landroid/widget/Button;

.field btn3:Landroid/widget/Button;

.field private handler:Landroid/os/Handler;

.field layout:Landroid/widget/LinearLayout;

.field local_mode:Landroid/widget/Button;

.field test_mode:Landroid/widget/Button;

.field zhengshi_mode:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    new-instance v0, Lcom/jodo/paysdk/demo/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/jodo/paysdk/demo/MainActivity$1;-><init>(Lcom/jodo/paysdk/demo/MainActivity;)V

    iput-object v0, p0, Lcom/jodo/paysdk/demo/MainActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method private getCporderidFromCpServer()Ljava/lang/String;
    .locals 4

    .prologue
    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initListener()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/jodo/paysdk/demo/MainActivity;->btn2:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/jodo/paysdk/demo/MainActivity;->btn3:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/jodo/paysdk/demo/MainActivity;->test_mode:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/jodo/paysdk/demo/MainActivity;->zhengshi_mode:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/jodo/paysdk/demo/MainActivity;->local_mode:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    return-void
.end method

.method private setupViews()V
    .locals 1

    .prologue
    .line 86
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/jodo/paysdk/demo/MainActivity;->setContentView(I)V

    .line 87
    const/high16 v0, 0x7f070000

    invoke-virtual {p0, v0}, Lcom/jodo/paysdk/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jodo/paysdk/demo/MainActivity;->layout:Landroid/widget/LinearLayout;

    .line 89
    const v0, 0x7f070001

    invoke-virtual {p0, v0}, Lcom/jodo/paysdk/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jodo/paysdk/demo/MainActivity;->btn2:Landroid/widget/Button;

    .line 90
    const v0, 0x7f070002

    invoke-virtual {p0, v0}, Lcom/jodo/paysdk/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jodo/paysdk/demo/MainActivity;->btn3:Landroid/widget/Button;

    .line 93
    const v0, 0x7f070003

    invoke-virtual {p0, v0}, Lcom/jodo/paysdk/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jodo/paysdk/demo/MainActivity;->test_mode:Landroid/widget/Button;

    .line 94
    const v0, 0x7f070004

    invoke-virtual {p0, v0}, Lcom/jodo/paysdk/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jodo/paysdk/demo/MainActivity;->zhengshi_mode:Landroid/widget/Button;

    .line 95
    const v0, 0x7f070005

    invoke-virtual {p0, v0}, Lcom/jodo/paysdk/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jodo/paysdk/demo/MainActivity;->local_mode:Landroid/widget/Button;

    .line 96
    invoke-direct {p0}, Lcom/jodo/paysdk/demo/MainActivity;->initListener()V

    .line 97
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 284
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 286
    invoke-static {p0, p1, p2, p3}, Lcom/jodo/paysdk/JodoPlaySDKManager;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 295
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 273
    invoke-static {p0}, Lcom/jodo/paysdk/JodoPlaySDKManager;->showQuitGameView(Landroid/app/Activity;)V

    .line 280
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 132
    iget-object v1, p0, Lcom/jodo/paysdk/demo/MainActivity;->btn2:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    invoke-static {p0, p0}, Lcom/jodo/paysdk/JodoPlaySDKManager;->showLoginView(Landroid/content/Context;Lcom/jodo/paysdk/interfaces/LoginCallbackListener;)V

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-object v1, p0, Lcom/jodo/paysdk/demo/MainActivity;->btn3:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    new-instance v0, Lcom/jodo/paysdk/model/JodoPayInfo;

    invoke-direct {v0}, Lcom/jodo/paysdk/model/JodoPayInfo;-><init>()V

    .line 138
    .local v0, "jodoPayInfo":Lcom/jodo/paysdk/model/JodoPayInfo;
    const-string v1, "987"

    invoke-virtual {v0, v1}, Lcom/jodo/paysdk/model/JodoPayInfo;->setServerid(Ljava/lang/String;)V

    .line 140
    const-string v1, "\u964d\u9f99"

    invoke-virtual {v0, v1}, Lcom/jodo/paysdk/model/JodoPayInfo;->setServername(Ljava/lang/String;)V

    .line 142
    const-string v1, "\u963f\u9686\u7d22"

    invoke-virtual {v0, v1}, Lcom/jodo/paysdk/model/JodoPayInfo;->setRolename(Ljava/lang/String;)V

    .line 144
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/jodo/paysdk/model/JodoPayInfo;->setRolelevel(I)V

    .line 146
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/jodo/paysdk/model/JodoPayInfo;->setPrice(I)V

    .line 148
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jodo/paysdk/model/JodoPayInfo;->setPriceFixed(Z)V

    .line 150
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jodo/paysdk/model/JodoPayInfo;->setExt(Ljava/lang/String;)V

    .line 152
    invoke-direct {p0}, Lcom/jodo/paysdk/demo/MainActivity;->getCporderidFromCpServer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jodo/paysdk/model/JodoPayInfo;->setCporderid(Ljava/lang/String;)V

    .line 156
    new-instance v1, Lcom/jodo/paysdk/demo/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/jodo/paysdk/demo/MainActivity$2;-><init>(Lcom/jodo/paysdk/demo/MainActivity;)V

    invoke-static {p0, v0, v1}, Lcom/jodo/paysdk/JodoPlaySDKManager;->showPayView(Landroid/content/Context;Lcom/jodo/paysdk/model/JodoPayInfo;Lcom/jodo/paysdk/interfaces/OrderCallbackListener;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x400

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    invoke-virtual {p0}, Lcom/jodo/paysdk/demo/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "landscape"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {v2}, Lcom/jodo/paysdk/JodoPlaySDKManager;->setScreenPortrait(Z)V

    .line 69
    :goto_0
    invoke-static {}, Lcom/jodo/paysdk/JodoPlaySDKManager;->getScreenOrigentation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jodo/paysdk/demo/MainActivity;->setRequestedOrientation(I)V

    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0, v3}, Lcom/jodo/paysdk/demo/MainActivity;->requestWindowFeature(I)Z

    .line 74
    invoke-virtual {p0}, Lcom/jodo/paysdk/demo/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 76
    invoke-direct {p0}, Lcom/jodo/paysdk/demo/MainActivity;->setupViews()V

    .line 80
    invoke-static {p0, p0}, Lcom/jodo/paysdk/JodoPlaySDKManager;->initSDK(Landroid/app/Activity;Lcom/jodo/paysdk/interfaces/InitCallbackListener;)V

    .line 83
    return-void

    .line 67
    :cond_0
    invoke-static {v3}, Lcom/jodo/paysdk/JodoPlaySDKManager;->setScreenPortrait(Z)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/jodo/paysdk/demo/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f060000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 267
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 268
    invoke-static {p0}, Lcom/jodo/paysdk/JodoPlaySDKManager;->onDestroy(Landroid/app/Activity;)V

    .line 269
    return-void
.end method

.method public onLoginCallback(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "sessionToken"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoginCallback1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/jodo/paysdk/demo/MainActivity;->btn3:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 223
    if-nez p1, :cond_1

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoginCallback2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SDK\u767b\u5f55\u6210\u529f,\u7528\u6237id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\u5f00\u59cbcp\u767b\u5f55"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 226
    const-string v1, "987"

    const-string v2, "\u964d\u9f99"

    const-string v3, "\u963f\u9686\u7d22"

    const/16 v4, 0xe

    new-instance v5, Lcom/jodo/paysdk/demo/MainActivity$3;

    invoke-direct {v5, p0}, Lcom/jodo/paysdk/demo/MainActivity$3;-><init>(Lcom/jodo/paysdk/demo/MainActivity;)V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/jodo/paysdk/JodoPlaySDKManager;->onRoleLoaded(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/jodo/paysdk/interfaces/RoleLoadedCallbackListener;)V

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoginCallback3:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jodo/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 234
    const-string v0, "SDK\u9000\u51fa\u767b\u5f55\u754c\u9762"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 119
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f070008

    if-ne v0, v1, :cond_0

    .line 120
    invoke-static {p0, p0}, Lcom/jodo/paysdk/JodoPlaySDKManager;->showChangeAccountView(Landroid/content/Context;Lcom/jodo/paysdk/interfaces/LoginCallbackListener;)V

    .line 121
    const/4 v0, 0x1

    .line 123
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 253
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 254
    invoke-static {p0}, Lcom/jodo/paysdk/JodoPlaySDKManager;->onPause(Landroid/app/Activity;)V

    .line 257
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 246
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 247
    invoke-static {p0}, Lcom/jodo/paysdk/JodoPlaySDKManager;->onResume(Landroid/app/Activity;)V

    .line 249
    return-void
.end method

.method public onSdkInitFinished(ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 209
    if-nez p1, :cond_0

    .line 210
    const-string v0, "SDK\u521d\u59cb\u5316\u6210\u529f"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 211
    invoke-static {p0, p0}, Lcom/jodo/paysdk/JodoPlaySDKManager;->showLoginView(Landroid/content/Context;Lcom/jodo/paysdk/interfaces/LoginCallbackListener;)V

    .line 217
    :goto_0
    return-void

    .line 214
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SDK\u521d\u59cb\u5316\u5931\u8d25:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 240
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 241
    invoke-static {p0}, Lcom/jodo/paysdk/JodoPlaySDKManager;->onStart(Landroid/app/Activity;)V

    .line 242
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 261
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 262
    invoke-static {p0}, Lcom/jodo/paysdk/JodoPlaySDKManager;->onStop(Landroid/app/Activity;)V

    .line 263
    return-void
.end method

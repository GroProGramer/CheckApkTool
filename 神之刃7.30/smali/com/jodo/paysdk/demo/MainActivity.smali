.class public Lcom/jodo/paysdk/demo/MainActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jodo/paysdk/interfaces/InitCallbackListener;
.implements Lcom/jodo/paysdk/interfaces/LoginCallbackListener;


# instance fields
.field a:Landroid/widget/Button;

.field b:Landroid/widget/Button;

.field c:Landroid/widget/Button;

.field d:Landroid/widget/Button;

.field e:Landroid/widget/Button;

.field f:Landroid/widget/LinearLayout;

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/jodo/paysdk/demo/a;

    invoke-direct {v0, p0}, Lcom/jodo/paysdk/demo/a;-><init>(Lcom/jodo/paysdk/demo/MainActivity;)V

    iput-object v0, p0, Lcom/jodo/paysdk/demo/MainActivity;->g:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    invoke-static {p0, p1, p2, p3}, Lcom/jodo/paysdk/JodoPlaySDKManager;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-static {p0}, Lcom/jodo/paysdk/JodoPlaySDKManager;->showQuitGameView(Landroid/app/Activity;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/jodo/paysdk/demo/MainActivity;->a:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p0}, Lcom/jodo/paysdk/JodoPlaySDKManager;->showLoginView(Landroid/content/Context;Lcom/jodo/paysdk/interfaces/LoginCallbackListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/jodo/paysdk/demo/MainActivity;->b:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/jodo/paysdk/model/JodoPayInfo;

    invoke-direct {v0}, Lcom/jodo/paysdk/model/JodoPayInfo;-><init>()V

    const-string v1, "987"

    invoke-virtual {v0, v1}, Lcom/jodo/paysdk/model/JodoPayInfo;->setServerid(Ljava/lang/String;)V

    const-string v1, "\u964d\u9f99"

    invoke-virtual {v0, v1}, Lcom/jodo/paysdk/model/JodoPayInfo;->setServername(Ljava/lang/String;)V

    const-string v1, "\u963f\u9686\u7d22"

    invoke-virtual {v0, v1}, Lcom/jodo/paysdk/model/JodoPayInfo;->setRolename(Ljava/lang/String;)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/jodo/paysdk/model/JodoPayInfo;->setRolelevel(I)V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/jodo/paysdk/model/JodoPayInfo;->setPrice(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jodo/paysdk/model/JodoPayInfo;->setPriceFixed(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jodo/paysdk/model/JodoPayInfo;->setExt(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jodo/paysdk/model/JodoPayInfo;->setCporderid(Ljava/lang/String;)V

    new-instance v1, Lcom/jodo/paysdk/demo/b;

    invoke-direct {v1, p0}, Lcom/jodo/paysdk/demo/b;-><init>(Lcom/jodo/paysdk/demo/MainActivity;)V

    invoke-static {p0, v0, v1}, Lcom/jodo/paysdk/JodoPlaySDKManager;->showPayView(Landroid/content/Context;Lcom/jodo/paysdk/model/JodoPayInfo;Lcom/jodo/paysdk/interfaces/OrderCallbackListener;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/jodo/paysdk/demo/MainActivity;->c:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "modeconfig"

    const-string v1, "mode"

    const-string v2, "test"

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/jodo/paysdk/demo/MainActivity;->d:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "modeconfig"

    const-string v1, "mode"

    const-string v2, "zhengshi"

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/jodo/paysdk/demo/MainActivity;->e:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "modeconfig"

    const-string v1, "mode"

    const-string v2, "local"

    invoke-static {p0, v0, v1, v2}, Lcom/jodo/paysdk/util/ad;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/16 v4, 0x400

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/jodo/paysdk/demo/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "landscape"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/jodo/paysdk/JodoPlaySDKManager;->setScreenPortrait(Z)V

    :goto_0
    invoke-static {}, Lcom/jodo/paysdk/JodoPlaySDKManager;->getScreenOrigentation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jodo/paysdk/demo/MainActivity;->setRequestedOrientation(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Lcom/jodo/paysdk/demo/MainActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/jodo/paysdk/demo/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    const v0, 0x7f030018

    invoke-virtual {p0, v0}, Lcom/jodo/paysdk/demo/MainActivity;->setContentView(I)V

    const v0, 0x7f0c0057

    invoke-virtual {p0, v0}, Lcom/jodo/paysdk/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jodo/paysdk/demo/MainActivity;->f:Landroid/widget/LinearLayout;

    const v0, 0x7f0c0058

    invoke-virtual {p0, v0}, Lcom/jodo/paysdk/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jodo/paysdk/demo/MainActivity;->a:Landroid/widget/Button;

    const v0, 0x7f0c0059

    invoke-virtual {p0, v0}, Lcom/jodo/paysdk/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jodo/paysdk/demo/MainActivity;->b:Landroid/widget/Button;

    const v0, 0x7f0c005a

    invoke-virtual {p0, v0}, Lcom/jodo/paysdk/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jodo/paysdk/demo/MainActivity;->c:Landroid/widget/Button;

    const v0, 0x7f0c005b

    invoke-virtual {p0, v0}, Lcom/jodo/paysdk/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jodo/paysdk/demo/MainActivity;->d:Landroid/widget/Button;

    const v0, 0x7f0c005c

    invoke-virtual {p0, v0}, Lcom/jodo/paysdk/demo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jodo/paysdk/demo/MainActivity;->e:Landroid/widget/Button;

    iget-object v0, p0, Lcom/jodo/paysdk/demo/MainActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/jodo/paysdk/demo/MainActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/jodo/paysdk/demo/MainActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/jodo/paysdk/demo/MainActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/jodo/paysdk/demo/MainActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0, p0}, Lcom/jodo/paysdk/JodoPlaySDKManager;->initSDK(Landroid/app/Activity;Lcom/jodo/paysdk/interfaces/InitCallbackListener;)V

    return-void

    :cond_0
    invoke-static {v3}, Lcom/jodo/paysdk/JodoPlaySDKManager;->setScreenPortrait(Z)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/jodo/paysdk/demo/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0b0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-static {p0}, Lcom/jodo/paysdk/JodoPlaySDKManager;->onDestroy(Landroid/app/Activity;)V

    return-void
.end method

.method public onLoginCallback(ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/jodo/paysdk/demo/MainActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SDK\u767b\u5f55\u6210\u529f,\u7528\u6237id:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    const-string v1, "987"

    const-string v2, "\u964d\u9f99"

    const-string v3, "\u963f\u9686\u7d22"

    const/16 v4, 0xe

    new-instance v5, Lcom/jodo/paysdk/demo/c;

    invoke-direct {v5, p0}, Lcom/jodo/paysdk/demo/c;-><init>(Lcom/jodo/paysdk/demo/MainActivity;)V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/jodo/paysdk/JodoPlaySDKManager;->onRoleLoaded(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/jodo/paysdk/interfaces/RoleLoadedCallbackListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v0, "SDK\u9000\u51fa\u767b\u5f55\u754c\u9762"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0c00ca

    if-ne v0, v1, :cond_0

    invoke-static {p0, p0}, Lcom/jodo/paysdk/JodoPlaySDKManager;->showChangeAccountView(Landroid/content/Context;Lcom/jodo/paysdk/interfaces/LoginCallbackListener;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-static {p0}, Lcom/jodo/paysdk/JodoPlaySDKManager;->onPause(Landroid/app/Activity;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {p0}, Lcom/jodo/paysdk/JodoPlaySDKManager;->onResume(Landroid/app/Activity;)V

    return-void
.end method

.method public onSdkInitFinished(ILjava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string v0, "SDK\u521d\u59cb\u5316\u6210\u529f"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {p0, p0}, Lcom/jodo/paysdk/JodoPlaySDKManager;->showLoginView(Landroid/content/Context;Lcom/jodo/paysdk/interfaces/LoginCallbackListener;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SDK\u521d\u59cb\u5316\u5931\u8d25:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-static {p0}, Lcom/jodo/paysdk/JodoPlaySDKManager;->onStart(Landroid/app/Activity;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-static {p0}, Lcom/jodo/paysdk/JodoPlaySDKManager;->onStop(Landroid/app/Activity;)V

    return-void
.end method

.class public Lcom/jodo/paysdk/demo/SelectorActivity;
.super Landroid/app/Activity;
.source "SelectorActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/jodo/paysdk/demo/SelectorActivity;->setContentView(I)V

    .line 20
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jodo/paysdk/demo/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 21
    .local v0, "i":Landroid/content/Intent;
    const v1, 0x7f070007

    invoke-virtual {p0, v1}, Lcom/jodo/paysdk/demo/SelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/jodo/paysdk/demo/SelectorActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/jodo/paysdk/demo/SelectorActivity$1;-><init>(Lcom/jodo/paysdk/demo/SelectorActivity;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    const v1, 0x7f070006

    invoke-virtual {p0, v1}, Lcom/jodo/paysdk/demo/SelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/jodo/paysdk/demo/SelectorActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/jodo/paysdk/demo/SelectorActivity$2;-><init>(Lcom/jodo/paysdk/demo/SelectorActivity;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    return-void
.end method

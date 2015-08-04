.class public Lcom/jodo/paysdk/demo/SelectorActivity;
.super Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Lcom/jodo/paysdk/demo/SelectorActivity;->setContentView(I)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jodo/paysdk/demo/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x7f0c005e

    invoke-virtual {p0, v1}, Lcom/jodo/paysdk/demo/SelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/jodo/paysdk/demo/d;

    invoke-direct {v2, p0, v0}, Lcom/jodo/paysdk/demo/d;-><init>(Lcom/jodo/paysdk/demo/SelectorActivity;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0c005d

    invoke-virtual {p0, v1}, Lcom/jodo/paysdk/demo/SelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/jodo/paysdk/demo/e;

    invoke-direct {v2, p0, v0}, Lcom/jodo/paysdk/demo/e;-><init>(Lcom/jodo/paysdk/demo/SelectorActivity;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

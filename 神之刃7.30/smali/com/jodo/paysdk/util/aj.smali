.class public final Lcom/jodo/paysdk/util/aj;
.super Ljava/lang/Object;


# static fields
.field static a:Landroid/widget/Toast;


# direct methods
.method public static a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/jodo/paysdk/util/aj;->a:Landroid/widget/Toast;

    if-nez v0, :cond_0

    invoke-static {p1, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/jodo/paysdk/util/aj;->a:Landroid/widget/Toast;

    :cond_0
    sget-object v0, Lcom/jodo/paysdk/util/aj;->a:Landroid/widget/Toast;

    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/jodo/paysdk/util/aj;->a:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setDuration(I)V

    sget-object v0, Lcom/jodo/paysdk/util/aj;->a:Landroid/widget/Toast;

    const/16 v1, 0x50

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    sget-object v0, Lcom/jodo/paysdk/util/aj;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static b(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/jodo/paysdk/util/aj;->a:Landroid/widget/Toast;

    if-nez v0, :cond_0

    invoke-static {p1, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/jodo/paysdk/util/aj;->a:Landroid/widget/Toast;

    :cond_0
    sget-object v0, Lcom/jodo/paysdk/util/aj;->a:Landroid/widget/Toast;

    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/jodo/paysdk/util/aj;->a:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setDuration(I)V

    sget-object v0, Lcom/jodo/paysdk/util/aj;->a:Landroid/widget/Toast;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    sget-object v0, Lcom/jodo/paysdk/util/aj;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static c(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/jodo/paysdk/util/aj;->a:Landroid/widget/Toast;

    if-nez v0, :cond_0

    invoke-static {p1, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/jodo/paysdk/util/aj;->a:Landroid/widget/Toast;

    :cond_0
    sget-object v0, Lcom/jodo/paysdk/util/aj;->a:Landroid/widget/Toast;

    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/jodo/paysdk/util/aj;->a:Landroid/widget/Toast;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    sget-object v0, Lcom/jodo/paysdk/util/aj;->a:Landroid/widget/Toast;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    sget-object v0, Lcom/jodo/paysdk/util/aj;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

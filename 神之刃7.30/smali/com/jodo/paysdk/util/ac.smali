.class public final Lcom/jodo/paysdk/util/ac;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Lcom/jodo/paysdk/b/a;

    invoke-direct {v0, p1}, Lcom/jodo/paysdk/b/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/jodo/paysdk/b/a;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

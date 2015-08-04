.class final Lcom/jodo/pccs3/view/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/jodo/pccs3/view/ae;


# direct methods
.method constructor <init>(Lcom/jodo/pccs3/view/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/view/af;->a:Lcom/jodo/pccs3/view/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Lcom/jodo/pccs3/view/af;->a:Lcom/jodo/pccs3/view/ae;

    invoke-virtual {v0}, Lcom/jodo/pccs3/view/ae;->f()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lcom/jodo/pccs3/view/af;->a:Lcom/jodo/pccs3/view/ae;

    iget-object v0, v0, Lcom/jodo/pccs3/view/ae;->c:Landroid/content/Context;

    const-string v2, "clipboard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/jodo/pccs3/view/af;->a:Lcom/jodo/pccs3/view/ae;

    iget-object v0, v0, Lcom/jodo/pccs3/view/ae;->c:Landroid/content/Context;

    const-string v1, "jodoplay_service_copied_noti"

    invoke-static {v0, v1}, Lcom/jodo/paysdk/util/ResourceUtil;->getResourceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jodo/pccs3/view/af;->a:Lcom/jodo/pccs3/view/ae;

    iget-object v1, v1, Lcom/jodo/pccs3/view/ae;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/jodo/paysdk/util/aj;->a(Ljava/lang/String;Landroid/content/Context;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jodo/pccs3/view/af;->a:Lcom/jodo/pccs3/view/ae;

    iget-object v0, v0, Lcom/jodo/pccs3/view/ae;->c:Landroid/content/Context;

    const-string v2, "clipboard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const-string v2, "Copied Text"

    invoke-static {v2, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    goto :goto_1
.end method

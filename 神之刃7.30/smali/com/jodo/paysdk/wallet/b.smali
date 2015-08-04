.class public final Lcom/jodo/paysdk/wallet/b;
.super Lcom/jodo/paysdk/wallet/l;


# static fields
.field private static g:Ljava/lang/String;

.field private static h:Landroid/content/Context;

.field private static i:Lcom/jodo/paysdk/wallet/b;

.field private static j:Landroid/app/ProgressDialog;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;

.field private static p:Ljava/lang/String;

.field private static q:I

.field private static r:I

.field private static s:Z

.field private static t:Ljava/lang/String;

.field private static u:Ljava/lang/String;

.field private static v:Ljava/lang/String;

.field private static w:Ljava/lang/String;


# instance fields
.field a:Lcom/android/vending/billing/IabHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "GooglePayListener"

    sput-object v0, Lcom/jodo/paysdk/wallet/b;->g:Ljava/lang/String;

    sput-object v1, Lcom/jodo/paysdk/wallet/b;->h:Landroid/content/Context;

    sput-object v1, Lcom/jodo/paysdk/wallet/b;->i:Lcom/jodo/paysdk/wallet/b;

    sput-object v1, Lcom/jodo/paysdk/wallet/b;->j:Landroid/app/ProgressDialog;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/jodo/paysdk/wallet/b;->w:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/jodo/paysdk/wallet/l;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object p1, Lcom/jodo/paysdk/wallet/b;->h:Landroid/content/Context;

    return-void
.end method

.method public static a()V
    .locals 2

    invoke-static {}, Lcom/jodo/paysdk/wallet/GooglePayActivity;->a()V

    sget-object v0, Lcom/jodo/paysdk/wallet/b;->i:Lcom/jodo/paysdk/wallet/b;

    iget-object v0, v0, Lcom/jodo/paysdk/wallet/b;->a:Lcom/android/vending/billing/IabHelper;

    new-instance v1, Lcom/jodo/paysdk/wallet/e;

    invoke-direct {v1}, Lcom/jodo/paysdk/wallet/e;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/vending/billing/IabHelper;->queryInventoryAsync(Lcom/android/vending/billing/IabHelper$QueryInventoryFinishedListener;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p11}, Lcom/jodo/paysdk/util/ah;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/jodo/paysdk/config/JodoConfig;->getGwItemList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/jodo/paysdk/wallet/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/paysdk/model/b;

    invoke-virtual {v0}, Lcom/jodo/paysdk/model/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/jodo/paysdk/model/b;->d()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jodo/paysdk/wallet/b;->k:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/jodo/paysdk/wallet/b;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/jodo/paysdk/util/ah;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/jodo/paysdk/config/JodoConfig;->getGwProductPrefix(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jodo/paysdk/wallet/b;->k:Ljava/lang/String;

    :cond_2
    sput-object p1, Lcom/jodo/paysdk/wallet/b;->l:Ljava/lang/String;

    sput-object p2, Lcom/jodo/paysdk/wallet/b;->m:Ljava/lang/String;

    sput-object p3, Lcom/jodo/paysdk/wallet/b;->n:Ljava/lang/String;

    sput-object p4, Lcom/jodo/paysdk/wallet/b;->o:Ljava/lang/String;

    sput-object p5, Lcom/jodo/paysdk/wallet/b;->p:Ljava/lang/String;

    sput p7, Lcom/jodo/paysdk/wallet/b;->q:I

    sput p6, Lcom/jodo/paysdk/wallet/b;->r:I

    sput-boolean p8, Lcom/jodo/paysdk/wallet/b;->s:Z

    sput-object p9, Lcom/jodo/paysdk/wallet/b;->t:Ljava/lang/String;

    sput-object p10, Lcom/jodo/paysdk/wallet/b;->u:Ljava/lang/String;

    sput-object p11, Lcom/jodo/paysdk/wallet/b;->v:Ljava/lang/String;

    sput-object p12, Lcom/jodo/paysdk/wallet/b;->w:Ljava/lang/String;

    sget-object v0, Lcom/jodo/paysdk/wallet/b;->i:Lcom/jodo/paysdk/wallet/b;

    if-eqz v0, :cond_4

    :try_start_0
    sget-object v0, Lcom/jodo/paysdk/wallet/b;->i:Lcom/jodo/paysdk/wallet/b;

    iget-object v0, v0, Lcom/jodo/paysdk/wallet/b;->a:Lcom/android/vending/billing/IabHelper;

    invoke-virtual {v0}, Lcom/android/vending/billing/IabHelper;->dispose()V

    sget-object v0, Lcom/jodo/paysdk/wallet/b;->i:Lcom/jodo/paysdk/wallet/b;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/jodo/paysdk/wallet/b;->a:Lcom/android/vending/billing/IabHelper;

    sget-object v0, Lcom/jodo/paysdk/wallet/b;->j:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/jodo/paysdk/wallet/b;->j:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    sput-object v0, Lcom/jodo/paysdk/wallet/b;->j:Landroid/app/ProgressDialog;

    :cond_3
    const/4 v0, 0x0

    sput-object v0, Lcom/jodo/paysdk/wallet/b;->i:Lcom/jodo/paysdk/wallet/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    new-instance v0, Lcom/jodo/paysdk/wallet/b;

    invoke-direct {v0, p0}, Lcom/jodo/paysdk/wallet/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/jodo/paysdk/wallet/b;->i:Lcom/jodo/paysdk/wallet/b;

    new-instance v1, Lcom/android/vending/billing/IabHelper;

    invoke-static {p0}, Lcom/jodo/paysdk/config/JodoConfig;->getGwPublickey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/vending/billing/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/jodo/paysdk/wallet/b;->a:Lcom/android/vending/billing/IabHelper;

    sget-object v0, Lcom/jodo/paysdk/wallet/b;->i:Lcom/jodo/paysdk/wallet/b;

    iget-object v0, v0, Lcom/jodo/paysdk/wallet/b;->a:Lcom/android/vending/billing/IabHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/vending/billing/IabHelper;->enableDebugLogging(Z)V

    invoke-static {}, Lcom/jodo/paysdk/wallet/GooglePayActivity;->a()V

    sget-object v0, Lcom/jodo/paysdk/wallet/b;->i:Lcom/jodo/paysdk/wallet/b;

    iget-object v0, v0, Lcom/jodo/paysdk/wallet/b;->a:Lcom/android/vending/billing/IabHelper;

    new-instance v1, Lcom/jodo/paysdk/wallet/c;

    invoke-direct {v1}, Lcom/jodo/paysdk/wallet/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/vending/billing/IabHelper;->startSetup(Lcom/android/vending/billing/IabHelper$OnIabSetupFinishedListener;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 7

    sget-object v0, Lcom/jodo/paysdk/wallet/b;->i:Lcom/jodo/paysdk/wallet/b;

    iget-object v6, v0, Lcom/jodo/paysdk/wallet/b;->a:Lcom/android/vending/billing/IabHelper;

    new-instance v0, Lcom/jodo/paysdk/wallet/f;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/jodo/paysdk/wallet/f;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/android/vending/billing/IabHelper;->queryInventoryAsync(Lcom/android/vending/billing/IabHelper$QueryInventoryFinishedListener;)V

    return-void
.end method

.method public static a(IILandroid/content/Intent;)Z
    .locals 1

    sget-object v0, Lcom/jodo/paysdk/wallet/b;->i:Lcom/jodo/paysdk/wallet/b;

    iget-object v0, v0, Lcom/jodo/paysdk/wallet/b;->a:Lcom/android/vending/billing/IabHelper;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/vending/billing/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public static b()V
    .locals 6

    sget-object v0, Lcom/jodo/paysdk/wallet/b;->i:Lcom/jodo/paysdk/wallet/b;

    iget-object v0, v0, Lcom/jodo/paysdk/wallet/b;->a:Lcom/android/vending/billing/IabHelper;

    sget-object v1, Lcom/jodo/paysdk/wallet/b;->h:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    sget-object v2, Lcom/jodo/paysdk/wallet/b;->k:Ljava/lang/String;

    const/16 v3, 0x2711

    new-instance v4, Lcom/jodo/paysdk/wallet/d;

    invoke-direct {v4}, Lcom/jodo/paysdk/wallet/d;-><init>()V

    sget-object v5, Lcom/jodo/paysdk/wallet/b;->l:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/android/vending/billing/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/android/vending/billing/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    return-void
.end method

.method public static c()V
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/jodo/paysdk/wallet/GooglePayActivity;->b()V

    sget-object v1, Lcom/jodo/paysdk/wallet/b;->i:Lcom/jodo/paysdk/wallet/b;

    sget-object v2, Lcom/jodo/paysdk/wallet/b;->l:Ljava/lang/String;

    sget v3, Lcom/jodo/paysdk/wallet/b;->q:I

    sget-object v4, Lcom/jodo/paysdk/wallet/b;->t:Ljava/lang/String;

    const-string v5, "Please reopen the payment page and try again"

    sget-object v0, Lcom/jodo/paysdk/config/a;->a:Lcom/jodo/paysdk/config/a;

    invoke-virtual {v0}, Lcom/jodo/paysdk/config/a;->d()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/jodo/paysdk/wallet/r;

    invoke-direct {v0, v1, v2, v5}, Lcom/jodo/paysdk/wallet/r;-><init>(Lcom/jodo/paysdk/wallet/l;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/jodo/paysdk/util/ai;->b(Ljava/lang/Runnable;)V

    :goto_0
    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->v()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->w()V

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/jodo/paysdk/wallet/s;

    invoke-direct/range {v0 .. v5}, Lcom/jodo/paysdk/wallet/s;-><init>(Lcom/jodo/paysdk/wallet/l;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/jodo/paysdk/util/ai;->b(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->w()V

    throw v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/jodo/paysdk/wallet/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e()Lcom/jodo/paysdk/wallet/b;
    .locals 1

    sget-object v0, Lcom/jodo/paysdk/wallet/b;->i:Lcom/jodo/paysdk/wallet/b;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/jodo/paysdk/wallet/b;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g()I
    .locals 1

    sget v0, Lcom/jodo/paysdk/wallet/b;->q:I

    return v0
.end method

.method static synthetic h()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/jodo/paysdk/wallet/b;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i()V
    .locals 0

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->v()V

    return-void
.end method

.method static synthetic j()V
    .locals 0

    invoke-static {}, Lcom/jodo/paysdk/wallet/b;->w()V

    return-void
.end method

.method static synthetic k()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/jodo/paysdk/wallet/b;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/jodo/paysdk/wallet/b;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/jodo/paysdk/wallet/b;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/jodo/paysdk/wallet/b;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o()I
    .locals 1

    sget v0, Lcom/jodo/paysdk/wallet/b;->r:I

    return v0
.end method

.method static synthetic p()Z
    .locals 1

    sget-boolean v0, Lcom/jodo/paysdk/wallet/b;->s:Z

    return v0
.end method

.method static synthetic q()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/jodo/paysdk/wallet/b;->u:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic r()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/jodo/paysdk/wallet/b;->v:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic s()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/jodo/paysdk/wallet/b;->w:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic t()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/jodo/paysdk/wallet/b;->k:Ljava/lang/String;

    return-object v0
.end method

.method private static v()V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/jodo/paysdk/wallet/b;->h:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jodo/paysdk/wallet/b;->h:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static w()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/jodo/paysdk/wallet/b;->i:Lcom/jodo/paysdk/wallet/b;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/jodo/paysdk/wallet/b;->i:Lcom/jodo/paysdk/wallet/b;

    iget-object v0, v0, Lcom/jodo/paysdk/wallet/b;->a:Lcom/android/vending/billing/IabHelper;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jodo/paysdk/wallet/b;->i:Lcom/jodo/paysdk/wallet/b;

    iget-object v0, v0, Lcom/jodo/paysdk/wallet/b;->a:Lcom/android/vending/billing/IabHelper;

    invoke-virtual {v0}, Lcom/android/vending/billing/IabHelper;->dispose()V

    sget-object v0, Lcom/jodo/paysdk/wallet/b;->i:Lcom/jodo/paysdk/wallet/b;

    iput-object v1, v0, Lcom/jodo/paysdk/wallet/b;->a:Lcom/android/vending/billing/IabHelper;

    :cond_0
    sput-object v1, Lcom/jodo/paysdk/wallet/b;->i:Lcom/jodo/paysdk/wallet/b;

    :cond_1
    invoke-static {}, Lcom/jodo/paysdk/wallet/GooglePayActivity;->b()V

    sput-object v1, Lcom/jodo/paysdk/wallet/b;->j:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/jodo/paysdk/wallet/b;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "**** TrivialDrive Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget-object v2, Lcom/jodo/paysdk/wallet/b;->h:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v2, "OK"

    new-instance v3, Lcom/jodo/paysdk/wallet/h;

    invoke-direct {v3, p0}, Lcom/jodo/paysdk/wallet/h;-><init>(Lcom/jodo/paysdk/wallet/b;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget-object v2, Lcom/jodo/paysdk/wallet/b;->g:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Showing alert dialog: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

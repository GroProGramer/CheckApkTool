.class public final Lcom/jodo/paysdk/d/ae;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/jodo/paysdk/model/JodoPayInfo;

.field private c:Lcom/jodo/paysdk/interfaces/SingleGameOrderCallbackListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/jodo/paysdk/model/JodoPayInfo;Lcom/jodo/paysdk/interfaces/SingleGameOrderCallbackListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jodo/paysdk/d/ae;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/jodo/paysdk/d/ae;->b:Lcom/jodo/paysdk/model/JodoPayInfo;

    iput-object p3, p0, Lcom/jodo/paysdk/d/ae;->c:Lcom/jodo/paysdk/interfaces/SingleGameOrderCallbackListener;

    return-void
.end method

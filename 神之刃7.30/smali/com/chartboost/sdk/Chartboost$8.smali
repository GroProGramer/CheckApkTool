.class final Lcom/chartboost/sdk/Chartboost$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/Chartboost;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 312
    iput-boolean p1, p0, Lcom/chartboost/sdk/Chartboost$8;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 315
    iget-boolean v0, p0, Lcom/chartboost/sdk/Chartboost$8;->a:Z

    if-eqz v0, :cond_0

    .line 317
    invoke-static {}, Lcom/chartboost/sdk/impl/be;->b()V

    .line 318
    new-instance v0, Lcom/chartboost/sdk/impl/ba;

    const-string v1, "api/install"

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/impl/ba;-><init>(Ljava/lang/String;)V

    .line 319
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->getValidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ba;->b(Landroid/content/Context;)V

    .line 320
    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ba;->a(Z)V

    .line 321
    new-array v1, v2, [Lcom/chartboost/sdk/Libraries/g$k;

    const/4 v2, 0x0

    const-string v3, "status"

    sget-object v4, Lcom/chartboost/sdk/Libraries/a;->a:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ba;->a([Lcom/chartboost/sdk/Libraries/g$k;)V

    .line 325
    new-instance v1, Lcom/chartboost/sdk/Chartboost$8$1;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/Chartboost$8$1;-><init>(Lcom/chartboost/sdk/Chartboost$8;)V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ba;->a(Lcom/chartboost/sdk/impl/ba$c;)V

    .line 340
    :cond_0
    return-void
.end method

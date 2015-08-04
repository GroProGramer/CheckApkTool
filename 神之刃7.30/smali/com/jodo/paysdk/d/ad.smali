.class public final Lcom/jodo/paysdk/d/ad;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jodo/paysdk/d/ad;->c:Ljava/util/Map;

    iput-object p1, p0, Lcom/jodo/paysdk/d/ad;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/jodo/paysdk/d/ad;->b:Ljava/lang/String;

    return-void
.end method

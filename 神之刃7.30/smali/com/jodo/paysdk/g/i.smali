.class public final Lcom/jodo/paysdk/g/i;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/jodo/paysdk/g/j;

.field private b:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/jodo/paysdk/g/i;
    .locals 6

    const/4 v5, -0x5

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "state"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lcom/jodo/paysdk/g/j;

    invoke-direct {v2}, Lcom/jodo/paysdk/g/j;-><init>()V

    if-nez v1, :cond_1

    const/4 v1, -0x5

    invoke-virtual {v2, v1}, Lcom/jodo/paysdk/g/j;->a(I)V

    :goto_1
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v0, Lcom/jodo/paysdk/g/i;

    invoke-direct {v0}, Lcom/jodo/paysdk/g/i;-><init>()V

    iput-object v2, v0, Lcom/jodo/paysdk/g/i;->a:Lcom/jodo/paysdk/g/j;

    iput-object v1, v0, Lcom/jodo/paysdk/g/i;->b:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/jodo/paysdk/g/i;

    invoke-direct {v0}, Lcom/jodo/paysdk/g/i;-><init>()V

    new-instance v1, Lcom/jodo/paysdk/g/j;

    invoke-direct {v1}, Lcom/jodo/paysdk/g/j;-><init>()V

    iput-object v1, v0, Lcom/jodo/paysdk/g/i;->a:Lcom/jodo/paysdk/g/j;

    iget-object v1, v0, Lcom/jodo/paysdk/g/i;->a:Lcom/jodo/paysdk/g/j;

    invoke-virtual {v1, v5}, Lcom/jodo/paysdk/g/j;->a(I)V

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v3, "code"

    const/4 v4, -0x5

    invoke-static {v1, v3, v4}, Lcom/jodo/paysdk/util/p;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/jodo/paysdk/g/j;->a(I)V

    const-string v3, "msg"

    const-string v4, ""

    invoke-static {v1, v3, v4}, Lcom/jodo/paysdk/util/p;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/jodo/paysdk/g/j;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public final a()Lcom/jodo/paysdk/g/j;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/g/i;->a:Lcom/jodo/paysdk/g/j;

    return-object v0
.end method

.method public final b()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/g/i;->b:Lorg/json/JSONObject;

    return-object v0
.end method

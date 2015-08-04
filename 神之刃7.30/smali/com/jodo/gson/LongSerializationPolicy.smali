.class public abstract enum Lcom/jodo/gson/LongSerializationPolicy;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jodo/gson/LongSerializationPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jodo/gson/LongSerializationPolicy;

.field public static final enum DEFAULT:Lcom/jodo/gson/LongSerializationPolicy;

.field public static final enum STRING:Lcom/jodo/gson/LongSerializationPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/jodo/gson/LongSerializationPolicy$1;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/jodo/gson/LongSerializationPolicy$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jodo/gson/LongSerializationPolicy;->DEFAULT:Lcom/jodo/gson/LongSerializationPolicy;

    new-instance v0, Lcom/jodo/gson/LongSerializationPolicy$2;

    const-string v1, "STRING"

    invoke-direct {v0, v1, v3}, Lcom/jodo/gson/LongSerializationPolicy$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jodo/gson/LongSerializationPolicy;->STRING:Lcom/jodo/gson/LongSerializationPolicy;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/jodo/gson/LongSerializationPolicy;

    sget-object v1, Lcom/jodo/gson/LongSerializationPolicy;->DEFAULT:Lcom/jodo/gson/LongSerializationPolicy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/jodo/gson/LongSerializationPolicy;->STRING:Lcom/jodo/gson/LongSerializationPolicy;

    aput-object v1, v0, v3

    sput-object v0, Lcom/jodo/gson/LongSerializationPolicy;->$VALUES:[Lcom/jodo/gson/LongSerializationPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/jodo/gson/LongSerializationPolicy$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/jodo/gson/LongSerializationPolicy;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jodo/gson/LongSerializationPolicy;
    .locals 1

    const-class v0, Lcom/jodo/gson/LongSerializationPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jodo/gson/LongSerializationPolicy;

    return-object v0
.end method

.method public static values()[Lcom/jodo/gson/LongSerializationPolicy;
    .locals 1

    sget-object v0, Lcom/jodo/gson/LongSerializationPolicy;->$VALUES:[Lcom/jodo/gson/LongSerializationPolicy;

    invoke-virtual {v0}, [Lcom/jodo/gson/LongSerializationPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jodo/gson/LongSerializationPolicy;

    return-object v0
.end method


# virtual methods
.method public abstract serialize(Ljava/lang/Long;)Lcom/jodo/gson/JsonElement;
.end method

.class public final enum Lcom/lk/sdk/BasePlatformState$MUSIC_STATUS;
.super Ljava/lang/Enum;
.source "BasePlatformState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lk/sdk/BasePlatformState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MUSIC_STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lk/sdk/BasePlatformState$MUSIC_STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/lk/sdk/BasePlatformState$MUSIC_STATUS;

.field public static final enum OFF:Lcom/lk/sdk/BasePlatformState$MUSIC_STATUS;

.field public static final enum ON:Lcom/lk/sdk/BasePlatformState$MUSIC_STATUS;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 186
    new-instance v0, Lcom/lk/sdk/BasePlatformState$MUSIC_STATUS;

    const-string v1, "ON"

    invoke-direct {v0, v1, v2}, Lcom/lk/sdk/BasePlatformState$MUSIC_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lk/sdk/BasePlatformState$MUSIC_STATUS;->ON:Lcom/lk/sdk/BasePlatformState$MUSIC_STATUS;

    new-instance v0, Lcom/lk/sdk/BasePlatformState$MUSIC_STATUS;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v3}, Lcom/lk/sdk/BasePlatformState$MUSIC_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lk/sdk/BasePlatformState$MUSIC_STATUS;->OFF:Lcom/lk/sdk/BasePlatformState$MUSIC_STATUS;

    .line 185
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lk/sdk/BasePlatformState$MUSIC_STATUS;

    sget-object v1, Lcom/lk/sdk/BasePlatformState$MUSIC_STATUS;->ON:Lcom/lk/sdk/BasePlatformState$MUSIC_STATUS;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lk/sdk/BasePlatformState$MUSIC_STATUS;->OFF:Lcom/lk/sdk/BasePlatformState$MUSIC_STATUS;

    aput-object v1, v0, v3

    sput-object v0, Lcom/lk/sdk/BasePlatformState$MUSIC_STATUS;->ENUM$VALUES:[Lcom/lk/sdk/BasePlatformState$MUSIC_STATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lk/sdk/BasePlatformState$MUSIC_STATUS;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/lk/sdk/BasePlatformState$MUSIC_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lk/sdk/BasePlatformState$MUSIC_STATUS;

    return-object v0
.end method

.method public static values()[Lcom/lk/sdk/BasePlatformState$MUSIC_STATUS;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lk/sdk/BasePlatformState$MUSIC_STATUS;->ENUM$VALUES:[Lcom/lk/sdk/BasePlatformState$MUSIC_STATUS;

    array-length v1, v0

    new-array v2, v1, [Lcom/lk/sdk/BasePlatformState$MUSIC_STATUS;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

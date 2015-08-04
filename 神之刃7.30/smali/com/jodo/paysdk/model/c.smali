.class public final Lcom/jodo/paysdk/model/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jodo/paysdk/model/c;->a:Ljava/lang/String;

    iput p2, p0, Lcom/jodo/paysdk/model/c;->c:I

    iput-object p3, p0, Lcom/jodo/paysdk/model/c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jodo/paysdk/model/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/jodo/paysdk/model/c;->c:I

    return v0
.end method

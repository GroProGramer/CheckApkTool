.class final Lcom/jodo/pccs3/view/be;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/jodo/pccs3/view/bd;


# direct methods
.method constructor <init>(Lcom/jodo/pccs3/view/bd;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/pccs3/view/be;->a:Lcom/jodo/pccs3/view/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lcom/jodo/pccs3/view/be;->a:Lcom/jodo/pccs3/view/bd;

    invoke-static {v0}, Lcom/jodo/pccs3/view/bd;->a(Lcom/jodo/pccs3/view/bd;)V

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

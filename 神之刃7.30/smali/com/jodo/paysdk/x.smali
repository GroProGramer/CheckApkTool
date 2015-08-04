.class final Lcom/jodo/paysdk/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/jodo/paysdk/JodoLoginActivity;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/JodoLoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/x;->a:Lcom/jodo/paysdk/JodoLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 10

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/jodo/paysdk/x;->a:Lcom/jodo/paysdk/JodoLoginActivity;

    iget-object v0, v0, Lcom/jodo/paysdk/JodoLoginActivity;->mPswEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, ""

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    array-length v8, v7

    move v5, v3

    :goto_0
    if-ge v5, v8, :cond_3

    aget-char v9, v7, v5

    const/16 v1, 0x20

    if-le v9, v1, :cond_1

    move v4, v2

    :goto_1
    const/16 v1, 0x7e

    if-gt v9, v1, :cond_2

    move v1, v2

    :goto_2
    and-int/2addr v1, v4

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_0

    :cond_1
    move v4, v3

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_2

    :cond_3
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/jodo/paysdk/x;->a:Lcom/jodo/paysdk/JodoLoginActivity;

    iget-object v1, v1, Lcom/jodo/paysdk/JodoLoginActivity;->mPswEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/jodo/paysdk/x;->a:Lcom/jodo/paysdk/JodoLoginActivity;

    iget-object v1, v1, Lcom/jodo/paysdk/JodoLoginActivity;->mPswEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_4
    return-void
.end method

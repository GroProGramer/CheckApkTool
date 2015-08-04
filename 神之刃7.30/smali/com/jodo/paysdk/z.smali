.class final Lcom/jodo/paysdk/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/jodo/paysdk/JodoLoginActivity;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/JodoLoginActivity;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/jodo/paysdk/z;->b:Lcom/jodo/paysdk/JodoLoginActivity;

    iput-object p2, p0, Lcom/jodo/paysdk/z;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/jodo/paysdk/z;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jodo/paysdk/account/JodoAccount;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jodo/paysdk/z;->b:Lcom/jodo/paysdk/JodoLoginActivity;

    iget-object v1, v1, Lcom/jodo/paysdk/JodoLoginActivity;->mAccountEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/jodo/paysdk/account/JodoAccount;->getLoginName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/jodo/paysdk/z;->b:Lcom/jodo/paysdk/JodoLoginActivity;

    iget-object v1, v1, Lcom/jodo/paysdk/JodoLoginActivity;->mPswEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/jodo/paysdk/account/JodoAccount;->getLoginPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/jodo/paysdk/z;->b:Lcom/jodo/paysdk/JodoLoginActivity;

    iget-object v0, v0, Lcom/jodo/paysdk/JodoLoginActivity;->mAccountEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/jodo/paysdk/z;->b:Lcom/jodo/paysdk/JodoLoginActivity;

    iget-object v1, v1, Lcom/jodo/paysdk/JodoLoginActivity;->mAccountEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcom/jodo/paysdk/z;->b:Lcom/jodo/paysdk/JodoLoginActivity;

    iget-object v0, v0, Lcom/jodo/paysdk/JodoLoginActivity;->mPswEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/jodo/paysdk/z;->b:Lcom/jodo/paysdk/JodoLoginActivity;

    iget-object v1, v1, Lcom/jodo/paysdk/JodoLoginActivity;->mPswEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/jodo/paysdk/util/r;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.class Lcom/jodo/paysdk/demo/SelectorActivity$2;
.super Ljava/lang/Object;
.source "SelectorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jodo/paysdk/demo/SelectorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jodo/paysdk/demo/SelectorActivity;

.field final synthetic val$i:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/jodo/paysdk/demo/SelectorActivity;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/jodo/paysdk/demo/SelectorActivity$2;->this$0:Lcom/jodo/paysdk/demo/SelectorActivity;

    iput-object p2, p0, Lcom/jodo/paysdk/demo/SelectorActivity$2;->val$i:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/jodo/paysdk/demo/SelectorActivity$2;->val$i:Landroid/content/Intent;

    const-string v1, "landscape"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 37
    iget-object v0, p0, Lcom/jodo/paysdk/demo/SelectorActivity$2;->this$0:Lcom/jodo/paysdk/demo/SelectorActivity;

    iget-object v1, p0, Lcom/jodo/paysdk/demo/SelectorActivity$2;->val$i:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/jodo/paysdk/demo/SelectorActivity;->startActivity(Landroid/content/Intent;)V

    .line 38
    return-void
.end method

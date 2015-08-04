.class Lcom/mqgame/lib/SWebCenter$1;
.super Landroid/webkit/WebViewClient;
.source "SNativeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mqgame/lib/SWebCenter;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mqgame/lib/SWebCenter;


# direct methods
.method constructor <init>(Lcom/mqgame/lib/SWebCenter;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/mqgame/lib/SWebCenter$1;->this$0:Lcom/mqgame/lib/SWebCenter;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 129
    const/4 v0, 0x1

    return v0
.end method

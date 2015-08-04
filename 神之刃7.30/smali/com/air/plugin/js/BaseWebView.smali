.class public abstract Lcom/air/plugin/js/BaseWebView;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/air/plugin/js/IWebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/air/plugin/js/d;

    invoke-direct {v0, p0, p1}, Lcom/air/plugin/js/d;-><init>(Lcom/air/plugin/js/BaseWebView;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/air/plugin/a/g;->a(Ljava/lang/Runnable;)V

    return-void
.end method

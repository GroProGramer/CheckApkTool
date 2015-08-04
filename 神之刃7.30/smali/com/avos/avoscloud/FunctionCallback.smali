.class public abstract Lcom/avos/avoscloud/FunctionCallback;
.super Lcom/avos/avoscloud/AVCallback;
.source "FunctionCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/avos/avoscloud/AVCallback",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    .local p0, "this":Lcom/avos/avoscloud/FunctionCallback;, "Lcom/avos/avoscloud/FunctionCallback<TT;>;"
    invoke-direct {p0}, Lcom/avos/avoscloud/AVCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract done(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/avos/avoscloud/AVException;",
            ")V"
        }
    .end annotation
.end method

.method protected final internalDone0(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/avos/avoscloud/AVException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/avos/avoscloud/FunctionCallback;, "Lcom/avos/avoscloud/FunctionCallback<TT;>;"
    .local p1, "returnValue":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/FunctionCallback;->done(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 46
    return-void
.end method

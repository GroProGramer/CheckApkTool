.class interface abstract Lcom/avos/avoscloud/SignatureCallback;
.super Ljava/lang/Object;
.source "SignatureCallback.java"


# virtual methods
.method public abstract computeSignature()Lcom/avos/avoscloud/Signature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/SignatureFactory$SignatureException;
        }
    .end annotation
.end method

.method public abstract onSignatureReady(Lcom/avos/avoscloud/Signature;Lcom/avos/avoscloud/AVException;)V
.end method

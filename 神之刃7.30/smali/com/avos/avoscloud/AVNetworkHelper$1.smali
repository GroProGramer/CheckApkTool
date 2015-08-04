.class final Lcom/avos/avoscloud/AVNetworkHelper$1;
.super Ljava/lang/Object;
.source "AVNetworkHelper.java"

# interfaces
.implements Lcom/avos/avoscloud/AVNetworkHelper$NetworkResourceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVNetworkHelper;->amendDNS(Ljava/lang/String;Lcom/avos/avoscloud/AVNetworkHelper$DNSUpdateCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/avos/avoscloud/AVNetworkHelper$DNSUpdateCallback;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/avos/avoscloud/AVNetworkHelper$DNSUpdateCallback;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/avos/avoscloud/AVNetworkHelper$1;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/avos/avoscloud/AVNetworkHelper$1;->val$callback:Lcom/avos/avoscloud/AVNetworkHelper$DNSUpdateCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 6
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 28
    if-nez p2, :cond_1

    .line 29
    iget-object v2, p0, Lcom/avos/avoscloud/AVNetworkHelper$1;->val$url:Ljava/lang/String;

    # invokes: Lcom/avos/avoscloud/AVNetworkHelper;->getIPAddress(Ljava/lang/String;Ljava/lang/String;)[Ljava/net/InetAddress;
    invoke-static {v2, p1}, Lcom/avos/avoscloud/AVNetworkHelper;->access$000(Ljava/lang/String;Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 30
    .local v0, "addresses":[Ljava/net/InetAddress;
    if-eqz v0, :cond_0

    .line 32
    :try_start_0
    iget-object v2, p0, Lcom/avos/avoscloud/AVNetworkHelper$1;->val$url:Ljava/lang/String;

    # invokes: Lcom/avos/avoscloud/AVNetworkHelper;->bindDNS(Ljava/lang/String;[Ljava/net/InetAddress;)V
    invoke-static {v2, v0}, Lcom/avos/avoscloud/AVNetworkHelper;->access$100(Ljava/lang/String;[Ljava/net/InetAddress;)V

    .line 33
    iget-object v2, p0, Lcom/avos/avoscloud/AVNetworkHelper$1;->val$callback:Lcom/avos/avoscloud/AVNetworkHelper$DNSUpdateCallback;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/avos/avoscloud/AVNetworkHelper$DNSUpdateCallback;->done(Lcom/avos/avoscloud/AVException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .end local v0    # "addresses":[Ljava/net/InetAddress;
    :goto_0
    return-void

    .line 34
    .restart local v0    # "addresses":[Ljava/net/InetAddress;
    :catch_0
    move-exception v1

    .line 35
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/avos/avoscloud/AVNetworkHelper$1;->val$callback:Lcom/avos/avoscloud/AVNetworkHelper$DNSUpdateCallback;

    new-instance v3, Lcom/avos/avoscloud/AVException;

    invoke-direct {v3, v1}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/avos/avoscloud/AVNetworkHelper$DNSUpdateCallback;->done(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0

    .line 38
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_0
    iget-object v2, p0, Lcom/avos/avoscloud/AVNetworkHelper$1;->val$callback:Lcom/avos/avoscloud/AVNetworkHelper$DNSUpdateCallback;

    new-instance v3, Lcom/avos/avoscloud/AVException;

    const/4 v4, -0x1

    const-string v5, "address parse failure"

    invoke-direct {v3, v4, v5}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/avos/avoscloud/AVNetworkHelper$DNSUpdateCallback;->done(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0

    .line 41
    .end local v0    # "addresses":[Ljava/net/InetAddress;
    :cond_1
    iget-object v2, p0, Lcom/avos/avoscloud/AVNetworkHelper$1;->val$callback:Lcom/avos/avoscloud/AVNetworkHelper$DNSUpdateCallback;

    invoke-virtual {v2, p2}, Lcom/avos/avoscloud/AVNetworkHelper$DNSUpdateCallback;->done(Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
.end method

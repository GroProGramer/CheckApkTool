.class public Lcom/avos/avoscloud/AVFriendship;
.super Ljava/lang/Object;
.source "AVFriendship.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/AVFriendship$AVFriendshipResponse;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/avos/avoscloud/AVUser;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field followees:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field followers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field user:Lcom/avos/avoscloud/AVUser;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    .local p0, "this":Lcom/avos/avoscloud/AVFriendship;, "Lcom/avos/avoscloud/AVFriendship<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVFriendship;->followers:Ljava/util/List;

    .line 13
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVFriendship;->followees:Ljava/util/List;

    .line 51
    return-void
.end method


# virtual methods
.method public getFollowees()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcom/avos/avoscloud/AVFriendship;, "Lcom/avos/avoscloud/AVFriendship<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendship;->followees:Ljava/util/List;

    return-object v0
.end method

.method public getFollowers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Lcom/avos/avoscloud/AVFriendship;, "Lcom/avos/avoscloud/AVFriendship<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendship;->followers:Ljava/util/List;

    return-object v0
.end method

.method public getUser()Lcom/avos/avoscloud/AVUser;
    .locals 1

    .prologue
    .line 44
    .local p0, "this":Lcom/avos/avoscloud/AVFriendship;, "Lcom/avos/avoscloud/AVFriendship<TT;>;"
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendship;->user:Lcom/avos/avoscloud/AVUser;

    return-object v0
.end method

.method protected setFollowees(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lcom/avos/avoscloud/AVFriendship;, "Lcom/avos/avoscloud/AVFriendship<TT;>;"
    .local p1, "followees":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iput-object p1, p0, Lcom/avos/avoscloud/AVFriendship;->followees:Ljava/util/List;

    .line 41
    return-void
.end method

.method protected setFollowers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/avos/avoscloud/AVFriendship;, "Lcom/avos/avoscloud/AVFriendship<TT;>;"
    .local p1, "followers":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iput-object p1, p0, Lcom/avos/avoscloud/AVFriendship;->followers:Ljava/util/List;

    .line 28
    return-void
.end method

.method protected setUser(Lcom/avos/avoscloud/AVUser;)V
    .locals 0
    .param p1, "user"    # Lcom/avos/avoscloud/AVUser;

    .prologue
    .line 48
    .local p0, "this":Lcom/avos/avoscloud/AVFriendship;, "Lcom/avos/avoscloud/AVFriendship<TT;>;"
    iput-object p1, p0, Lcom/avos/avoscloud/AVFriendship;->user:Lcom/avos/avoscloud/AVUser;

    .line 49
    return-void
.end method

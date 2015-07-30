.class public Lcom/jodo/common/util/ReflactUtil;
.super Ljava/lang/Object;
.source "ReflactUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 13
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 15
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v4

    if-nez v4, :cond_0

    .line 16
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 18
    :cond_0
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 22
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_1
    return-object v1

    .line 13
    .restart local v1    # "field":Ljava/lang/reflect/Field;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 22
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 29
    .local v3, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v4

    if-nez v4, :cond_0

    .line 30
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 32
    :cond_0
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 36
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_1
    return-object v3

    .line 27
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

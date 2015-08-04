.class public Lcom/chartboost/sdk/impl/y;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 110
    :try_start_0
    invoke-static {p0}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 113
    :goto_0
    return-wide v0

    .line 111
    :catch_0
    move-exception v0

    .line 113
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/chartboost/sdk/impl/i;)Lcom/chartboost/sdk/impl/b$a;
    .locals 20

    .prologue
    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 42
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/chartboost/sdk/impl/i;->c:Ljava/util/Map;

    .line 44
    const-wide/16 v2, 0x0

    .line 45
    const-wide/16 v7, 0x0

    .line 46
    const-wide/16 v9, 0x0

    .line 47
    const-wide/16 v4, 0x0

    .line 48
    const/4 v6, 0x0

    .line 53
    const-string v1, "Date"

    invoke-interface {v13, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 54
    if-eqz v1, :cond_0

    .line 55
    invoke-static {v1}, Lcom/chartboost/sdk/impl/y;->a(Ljava/lang/String;)J

    move-result-wide v1

    move-wide v2, v1

    .line 58
    :cond_0
    const-string v1, "Cache-Control"

    invoke-interface {v13, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 59
    if-eqz v1, :cond_1

    .line 60
    const/4 v6, 0x1

    .line 61
    const-string v14, ","

    invoke-virtual {v1, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 62
    const/4 v1, 0x0

    :goto_0
    array-length v15, v14

    if-lt v1, v15, :cond_3

    :cond_1
    move/from16 v17, v6

    move-wide/from16 v18, v4

    move-wide/from16 v5, v18

    move/from16 v4, v17

    .line 77
    const-string v1, "Expires"

    invoke-interface {v13, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 78
    if-eqz v1, :cond_2

    .line 79
    invoke-static {v1}, Lcom/chartboost/sdk/impl/y;->a(Ljava/lang/String;)J

    move-result-wide v7

    .line 82
    :cond_2
    const-string v1, "ETag"

    invoke-interface {v13, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 86
    if-eqz v4, :cond_9

    .line 87
    const-wide/16 v7, 0x3e8

    mul-long v4, v5, v7

    add-long/2addr v4, v11

    .line 93
    :goto_1
    new-instance v6, Lcom/chartboost/sdk/impl/b$a;

    invoke-direct {v6}, Lcom/chartboost/sdk/impl/b$a;-><init>()V

    .line 94
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/chartboost/sdk/impl/i;->b:[B

    iput-object v7, v6, Lcom/chartboost/sdk/impl/b$a;->a:[B

    .line 95
    iput-object v1, v6, Lcom/chartboost/sdk/impl/b$a;->b:Ljava/lang/String;

    .line 96
    iput-wide v4, v6, Lcom/chartboost/sdk/impl/b$a;->e:J

    .line 97
    iget-wide v4, v6, Lcom/chartboost/sdk/impl/b$a;->e:J

    iput-wide v4, v6, Lcom/chartboost/sdk/impl/b$a;->d:J

    .line 98
    iput-wide v2, v6, Lcom/chartboost/sdk/impl/b$a;->c:J

    .line 99
    iput-object v13, v6, Lcom/chartboost/sdk/impl/b$a;->f:Ljava/util/Map;

    move-object v1, v6

    .line 101
    :goto_2
    return-object v1

    .line 63
    :cond_3
    aget-object v15, v14, v1

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 64
    const-string v16, "no-cache"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    const-string v16, "no-store"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 65
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .line 66
    :cond_5
    const-string v16, "max-age="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 68
    const/16 v16, 0x8

    :try_start_0
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 62
    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    :cond_7
    const-string v16, "must-revalidate"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_8

    const-string v16, "proxy-revalidate"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 72
    :cond_8
    const-wide/16 v4, 0x0

    goto :goto_3

    .line 88
    :cond_9
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_a

    cmp-long v4, v7, v2

    if-ltz v4, :cond_a

    .line 90
    sub-long v4, v7, v2

    add-long/2addr v4, v11

    goto :goto_1

    .line 69
    :catch_0
    move-exception v15

    goto :goto_3

    :cond_a
    move-wide v4, v9

    goto :goto_1
.end method

.class public Lcom/jodo/common/util/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static capitalizeFirstLetter(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-static {p0}, Lcom/jodo/common/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 103
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 104
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static fullWidthToHalfWidth(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 228
    invoke-static {p0}, Lcom/jodo/common/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 232
    .restart local p0    # "s":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 233
    .local v1, "source":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 234
    aget-char v2, v1, v0

    const/16 v3, 0x3000

    if-ne v2, v3, :cond_1

    .line 235
    const/16 v2, 0x20

    aput-char v2, v1, v0

    .line 233
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 238
    :cond_1
    aget-char v2, v1, v0

    const v3, 0xff01

    if-lt v2, v3, :cond_2

    aget-char v2, v1, v0

    const v3, 0xff5e

    if-gt v2, v3, :cond_2

    .line 239
    aget-char v2, v1, v0

    const v3, 0xfee0

    sub-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v1, v0

    goto :goto_2

    .line 241
    :cond_2
    aget-char v2, v1, v0

    aput-char v2, v1, v0

    goto :goto_2

    .line 244
    :cond_3
    new-instance p0, Ljava/lang/String;

    .end local p0    # "s":Ljava/lang/String;
    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static getHrefInnerHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "href"    # Ljava/lang/String;

    .prologue
    .line 177
    invoke-static {p0}, Lcom/jodo/common/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 178
    const-string p0, ""

    .line 187
    .end local p0    # "href":Ljava/lang/String;
    .local v0, "hrefMatcher":Ljava/util/regex/Matcher;
    .local v1, "hrefPattern":Ljava/util/regex/Pattern;
    .local v2, "hrefReg":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 181
    .end local v0    # "hrefMatcher":Ljava/util/regex/Matcher;
    .end local v1    # "hrefPattern":Ljava/util/regex/Pattern;
    .end local v2    # "hrefReg":Ljava/lang/String;
    .restart local p0    # "href":Ljava/lang/String;
    :cond_1
    const-string v2, ".*<[\\s]*a[\\s]*.*>(.+?)<[\\s]*/a[\\s]*>.*"

    .line 182
    .restart local v2    # "hrefReg":Ljava/lang/String;
    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 183
    .restart local v1    # "hrefPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 184
    .restart local v0    # "hrefMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 185
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getNOTNULLString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 283
    if-nez p0, :cond_1

    move-object p0, v0

    .line 305
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 288
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    move-object p0, v0

    .line 290
    goto :goto_0

    .line 293
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 295
    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    move-object p0, v0

    .line 297
    goto :goto_0

    .line 303
    :catch_0
    move-exception v1

    move-object p0, v0

    .line 305
    goto :goto_0
.end method

.method public static halfWidthToFullWidth(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 262
    invoke-static {p0}, Lcom/jodo/common/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 278
    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 266
    .restart local p0    # "s":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 267
    .local v1, "source":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 268
    aget-char v2, v1, v0

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    .line 269
    const/16 v2, 0x3000

    aput-char v2, v1, v0

    .line 267
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 272
    :cond_1
    aget-char v2, v1, v0

    const/16 v3, 0x21

    if-lt v2, v3, :cond_2

    aget-char v2, v1, v0

    const/16 v3, 0x7e

    if-gt v2, v3, :cond_2

    .line 273
    aget-char v2, v1, v0

    const v3, 0xfee0

    add-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v1, v0

    goto :goto_2

    .line 275
    :cond_2
    aget-char v2, v1, v0

    aput-char v2, v1, v0

    goto :goto_2

    .line 278
    :cond_3
    new-instance p0, Ljava/lang/String;

    .end local p0    # "s":Ljava/lang/String;
    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static htmlEscapeCharsToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    .line 209
    invoke-static {p0}, Lcom/jodo/common/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p0    # "source":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "source":Ljava/lang/String;
    :cond_0
    const-string v0, "&lt;"

    const-string v1, "<"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&gt;"

    const-string v2, ">"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&amp;"

    const-string v2, "&"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&quot;"

    const-string v2, "\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static isBlank(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 35
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmail(Ljava/lang/String;)Z
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 312
    :try_start_0
    const-string v2, "^([a-zA-Z0-9_\\-\\.]+)@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.)|(([a-zA-Z0-9\\-]+\\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\\]?)$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 315
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 316
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 319
    .end local v0    # "matcher":Ljava/util/regex/Matcher;
    .end local v1    # "pattern":Ljava/util/regex/Pattern;
    :goto_0
    return v2

    .line 317
    :catch_0
    move-exception v2

    .line 319
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 51
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "actual"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-static {p0, p1}, Lcom/jodo/common/util/ObjectUtils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static nullStrToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 81
    if-nez p0, :cond_0

    const-string p0, ""

    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static utf8Encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-static {p0}, Lcom/jodo/common/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 125
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 130
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    return-object p0

    .line 126
    .restart local p0    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UnsupportedEncodingException occurred. "

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static utf8Encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defultReturn"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-static {p0}, Lcom/jodo/common/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 142
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 147
    .end local p1    # "defultReturn":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 143
    .restart local p1    # "defultReturn":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_0

    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    move-object p1, p0

    .line 147
    goto :goto_0
.end method

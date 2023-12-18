.class public Lcom/startapps/crossx/controller/utils/Validator;
.super Ljava/lang/Object;
.source "Validator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCardValidity(Ljava/lang/String;)Z
    .locals 1

    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x7

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNameValidity(Ljava/lang/String;)Z
    .locals 2

    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 17
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p0, p0

    const/4 v0, 0x2

    if-lt p0, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isValidCPF(Ljava/lang/String;)Z
    .locals 11

    const-string v0, "00000000000"

    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const-string v0, "11111111111"

    .line 30
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "22222222222"

    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "33333333333"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "44444444444"

    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "55555555555"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "66666666666"

    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "77777777777"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "88888888888"

    .line 34
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "99999999999"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 35
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xb

    if-eq v0, v2, :cond_0

    goto :goto_5

    :cond_0
    const/16 v0, 0xa

    move v5, v0

    move v3, v1

    move v4, v3

    :goto_0
    const/16 v6, 0x9

    const/4 v7, 0x1

    const/16 v8, 0x30

    if-ge v3, v6, :cond_1

    .line 45
    :try_start_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    sub-int/2addr v6, v8

    mul-int/2addr v6, v5

    add-int/2addr v4, v6

    sub-int/2addr v5, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 50
    :cond_1
    rem-int/2addr v4, v2

    rsub-int/lit8 v3, v4, 0xb

    if-eq v3, v0, :cond_3

    if-ne v3, v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/2addr v3, v8

    int-to-char v3, v3

    goto :goto_2

    :cond_3
    :goto_1
    move v3, v8

    :goto_2
    move v4, v1

    move v5, v4

    move v9, v2

    :goto_3
    if-ge v4, v0, :cond_4

    .line 57
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v10

    sub-int/2addr v10, v8

    mul-int/2addr v10, v9

    add-int/2addr v5, v10

    sub-int/2addr v9, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 62
    :cond_4
    rem-int/2addr v5, v2

    rsub-int/lit8 v4, v5, 0xb

    if-eq v4, v0, :cond_6

    if-ne v4, v2, :cond_5

    goto :goto_4

    :cond_5
    add-int/2addr v4, v8

    int-to-char v8, v4

    .line 67
    :cond_6
    :goto_4
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v3, v2, :cond_7

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0
    :try_end_0
    .catch Ljava/util/InputMismatchException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v8, p0, :cond_7

    move v1, v7

    :catch_0
    :cond_7
    :goto_5
    return v1
.end method

.method public static isValidateValidity(Ljava/lang/String;)Z
    .locals 1

    .line 21
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x5

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isValidityCVV(Ljava/lang/String;)Z
    .locals 0

    .line 25
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

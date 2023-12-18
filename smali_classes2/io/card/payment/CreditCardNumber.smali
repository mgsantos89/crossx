.class Lio/card/payment/CreditCardNumber;
.super Ljava/lang/Object;
.source "CreditCardNumber.java"


# direct methods
.method private static formatFifteenString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xf

    if-ge v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    :cond_0
    const/16 v2, 0x20

    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static formatSixteenString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    if-eqz v1, :cond_0

    .line 85
    rem-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_0

    const/16 v2, 0x20

    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 46
    invoke-static {p0, v0, v1}, Lio/card/payment/CreditCardNumber;->formatString(Ljava/lang/String;ZLio/card/payment/CardType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatString(Ljava/lang/String;ZLio/card/payment/CardType;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 52
    invoke-static {p0}, Lio/card/payment/StringHelper;->getDigitsOnlyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    if-nez p2, :cond_1

    .line 57
    invoke-static {p1}, Lio/card/payment/CardType;->fromCardNumber(Ljava/lang/String;)Lio/card/payment/CardType;

    move-result-object p2

    .line 59
    :cond_1
    invoke-virtual {p2}, Lio/card/payment/CardType;->numberLength()I

    move-result p2

    .line 60
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, p2, :cond_3

    const/16 v0, 0x10

    if-ne p2, v0, :cond_2

    .line 62
    invoke-static {p1}, Lio/card/payment/CreditCardNumber;->formatSixteenString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 v0, 0xf

    if-ne p2, v0, :cond_3

    .line 64
    invoke-static {p1}, Lio/card/payment/CreditCardNumber;->formatFifteenString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method public static getDateForString(Ljava/lang/String;)Ljava/util/Date;
    .locals 3

    .line 142
    invoke-static {p0}, Lio/card/payment/StringHelper;->getDigitsOnlyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 143
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lio/card/payment/CreditCardNumber;->getDateFormatForLength(I)Ljava/text/SimpleDateFormat;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 146
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 147
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    return-object v1
.end method

.method public static getDateFormatForLength(I)Ljava/text/SimpleDateFormat;
    .locals 1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 133
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "MMyy"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_0
    const/4 v0, 0x6

    if-ne p0, v0, :cond_1

    .line 135
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "MMyyyy"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isDateValid(II)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p0, v1, :cond_4

    const/16 v2, 0xc

    if-ge v2, p0, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 100
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    .line 101
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v1

    if-ge p1, v3, :cond_1

    return v0

    :cond_1
    if-ne p1, v3, :cond_2

    if-ge p0, v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v3, v3, 0xf

    if-le p1, v3, :cond_3

    return v0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v0
.end method

.method public static passesLuhnChecksum(Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [[I

    const/16 v1, 0xa

    new-array v2, v1, [I

    .line 27
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v0, v4

    .line 29
    new-instance v2, Ljava/text/StringCharacterIterator;

    invoke-direct {v2, p0}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-interface {v2}, Ljava/text/CharacterIterator;->last()C

    move-result p0

    move v5, v3

    move v6, v5

    :goto_0
    const v7, 0xffff

    if-eq p0, v7, :cond_1

    .line 31
    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_0

    return v3

    :cond_0
    add-int/lit8 p0, p0, -0x30

    add-int/lit8 v7, v6, 0x1

    and-int/2addr v6, v4

    .line 35
    aget-object v6, v0, v6

    aget p0, v6, p0

    add-int/2addr v5, p0

    .line 30
    invoke-interface {v2}, Ljava/text/CharacterIterator;->previous()C

    move-result p0

    move v6, v7

    goto :goto_0

    .line 37
    :cond_1
    rem-int/2addr v5, v1

    if-nez v5, :cond_2

    move v3, v4

    :cond_2
    return v3

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x2
        0x4
        0x6
        0x8
        0x1
        0x3
        0x5
        0x7
        0x9
    .end array-data
.end method

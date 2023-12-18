.class public Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;
.super Ljava/lang/Object;
.source "BasicHeaderValueParser.java"

# interfaces
.implements Lcz/msebera/android/httpclient/message/HeaderValueParser;


# static fields
.field private static final ALL_DELIMITERS:[C

.field public static final DEFAULT:Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ELEM_DELIMITER:C = ','

.field public static final INSTANCE:Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;

.field private static final PARAM_DELIMITER:C = ';'


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->DEFAULT:Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;

    .line 63
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->INSTANCE:Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;

    const/4 v0, 0x2

    new-array v0, v0, [C

    .line 67
    fill-array-data v0, :array_0

    sput-object v0, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->ALL_DELIMITERS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x3bs
        0x2cs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isOneOf(C[C)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 250
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-char v3, p1, v2

    if-ne p0, v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static parseElements(Ljava/lang/String;Lcz/msebera/android/httpclient/message/HeaderValueParser;)[Lcz/msebera/android/httpclient/HeaderElement;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/ParseException;
        }
    .end annotation

    const-string v0, "Value"

    .line 87
    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    new-instance v0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    .line 90
    invoke-virtual {v0, p0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 91
    new-instance v1, Lcz/msebera/android/httpclient/message/ParserCursor;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-direct {v1, v2, p0}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    sget-object p1, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->INSTANCE:Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;

    .line 93
    :goto_0
    invoke-interface {p1, v0, v1}, Lcz/msebera/android/httpclient/message/HeaderValueParser;->parseElements(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object p0

    return-object p0
.end method

.method public static parseHeaderElement(Ljava/lang/String;Lcz/msebera/android/httpclient/message/HeaderValueParser;)Lcz/msebera/android/httpclient/HeaderElement;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/ParseException;
        }
    .end annotation

    const-string v0, "Value"

    .line 124
    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    new-instance v0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    .line 127
    invoke-virtual {v0, p0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 128
    new-instance v1, Lcz/msebera/android/httpclient/message/ParserCursor;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-direct {v1, v2, p0}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    sget-object p1, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->INSTANCE:Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;

    .line 130
    :goto_0
    invoke-interface {p1, v0, v1}, Lcz/msebera/android/httpclient/message/HeaderValueParser;->parseHeaderElement(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object p0

    return-object p0
.end method

.method public static parseNameValuePair(Ljava/lang/String;Lcz/msebera/android/httpclient/message/HeaderValueParser;)Lcz/msebera/android/httpclient/NameValuePair;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/ParseException;
        }
    .end annotation

    const-string v0, "Value"

    .line 232
    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 234
    new-instance v0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    .line 235
    invoke-virtual {v0, p0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 236
    new-instance v1, Lcz/msebera/android/httpclient/message/ParserCursor;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-direct {v1, v2, p0}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 237
    :cond_0
    sget-object p1, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->INSTANCE:Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;

    .line 238
    :goto_0
    invoke-interface {p1, v0, v1}, Lcz/msebera/android/httpclient/message/HeaderValueParser;->parseNameValuePair(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object p0

    return-object p0
.end method

.method public static parseParameters(Ljava/lang/String;Lcz/msebera/android/httpclient/message/HeaderValueParser;)[Lcz/msebera/android/httpclient/NameValuePair;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/ParseException;
        }
    .end annotation

    const-string v0, "Value"

    .line 176
    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 178
    new-instance v0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    .line 179
    invoke-virtual {v0, p0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 180
    new-instance v1, Lcz/msebera/android/httpclient/message/ParserCursor;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-direct {v1, v2, p0}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    sget-object p1, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->INSTANCE:Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;

    .line 182
    :goto_0
    invoke-interface {p1, v0, v1}, Lcz/msebera/android/httpclient/message/HeaderValueParser;->parseParameters(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)[Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected createHeaderElement(Ljava/lang/String;Ljava/lang/String;[Lcz/msebera/android/httpclient/NameValuePair;)Lcz/msebera/android/httpclient/HeaderElement;
    .locals 1

    .line 161
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicHeaderElement;

    invoke-direct {v0, p1, p2, p3}, Lcz/msebera/android/httpclient/message/BasicHeaderElement;-><init>(Ljava/lang/String;Ljava/lang/String;[Lcz/msebera/android/httpclient/NameValuePair;)V

    return-object v0
.end method

.method protected createNameValuePair(Ljava/lang/String;Ljava/lang/String;)Lcz/msebera/android/httpclient/NameValuePair;
    .locals 1

    .line 355
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    invoke-direct {v0, p1, p2}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public parseElements(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)[Lcz/msebera/android/httpclient/HeaderElement;
    .locals 3

    const-string v0, "Char array buffer"

    .line 100
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Parser cursor"

    .line 101
    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->atEnd()Z

    move-result v1

    if-nez v1, :cond_2

    .line 104
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->parseHeaderElement(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v1

    .line 105
    invoke-interface {v1}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Lcz/msebera/android/httpclient/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 106
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcz/msebera/android/httpclient/HeaderElement;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcz/msebera/android/httpclient/HeaderElement;

    return-object p1
.end method

.method public parseHeaderElement(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Lcz/msebera/android/httpclient/HeaderElement;
    .locals 3

    const-string v0, "Char array buffer"

    .line 137
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Parser cursor"

    .line 138
    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 139
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->parseNameValuePair(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object v0

    .line 141
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->atEnd()Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_0

    .line 144
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->parseParameters(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)[Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 147
    :goto_0
    invoke-interface {v0}, Lcz/msebera/android/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0}, Lcz/msebera/android/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0, p1}, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->createHeaderElement(Ljava/lang/String;Ljava/lang/String;[Lcz/msebera/android/httpclient/NameValuePair;)Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object p1

    return-object p1
.end method

.method public parseNameValuePair(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Lcz/msebera/android/httpclient/NameValuePair;
    .locals 1

    .line 245
    sget-object v0, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->ALL_DELIMITERS:[C

    invoke-virtual {p0, p1, p2, v0}, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->parseNameValuePair(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;[C)Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object p1

    return-object p1
.end method

.method public parseNameValuePair(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;[C)Lcz/msebera/android/httpclient/NameValuePair;
    .locals 12

    const-string v0, "Char array buffer"

    .line 262
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Parser cursor"

    .line 263
    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 267
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v0

    .line 268
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v1

    .line 269
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getUpperBound()I

    move-result v2

    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ge v0, v2, :cond_2

    .line 274
    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->charAt(I)C

    move-result v5

    const/16 v6, 0x3d

    if-ne v5, v6, :cond_0

    goto :goto_1

    .line 278
    :cond_0
    invoke-static {v5, p3}, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->isOneOf(C[C)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v3

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    move v5, v4

    :goto_2
    if-ne v0, v2, :cond_3

    .line 287
    invoke-virtual {p1, v1, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v1

    move v5, v3

    goto :goto_3

    .line 289
    :cond_3
    invoke-virtual {p1, v1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    :goto_3
    if-eqz v5, :cond_4

    .line 294
    invoke-virtual {p2, v0}, Lcz/msebera/android/httpclient/message/ParserCursor;->updatePos(I)V

    const/4 p1, 0x0

    .line 295
    invoke-virtual {p0, v1, p1}, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->createNameValuePair(Ljava/lang/String;Ljava/lang/String;)Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object p1

    return-object p1

    :cond_4
    move v6, v0

    move v7, v4

    move v8, v7

    :goto_4
    const/16 v9, 0x22

    if-ge v6, v2, :cond_9

    .line 305
    invoke-virtual {p1, v6}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->charAt(I)C

    move-result v10

    if-ne v10, v9, :cond_5

    if-nez v7, :cond_5

    xor-int/lit8 v8, v8, 0x1

    :cond_5
    if-nez v8, :cond_6

    if-nez v7, :cond_6

    .line 309
    invoke-static {v10, p3}, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->isOneOf(C[C)Z

    move-result v11

    if-eqz v11, :cond_6

    goto :goto_6

    :cond_6
    if-eqz v7, :cond_8

    :cond_7
    move v7, v4

    goto :goto_5

    :cond_8
    if-eqz v8, :cond_7

    const/16 v7, 0x5c

    if-ne v10, v7, :cond_7

    move v7, v3

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_9
    move v3, v5

    :goto_6
    if-ge v0, v6, :cond_a

    .line 323
    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->charAt(I)C

    move-result p3

    invoke-static {p3}, Lcz/msebera/android/httpclient/protocol/HTTP;->isWhitespace(C)Z

    move-result p3

    if-eqz p3, :cond_a

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_a
    move p3, v6

    :goto_7
    if-le p3, v0, :cond_b

    add-int/lit8 v2, p3, -0x1

    .line 327
    invoke-virtual {p1, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcz/msebera/android/httpclient/protocol/HTTP;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_b

    add-int/lit8 p3, p3, -0x1

    goto :goto_7

    :cond_b
    sub-int v2, p3, v0

    const/4 v4, 0x2

    if-lt v2, v4, :cond_c

    .line 332
    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->charAt(I)C

    move-result v2

    if-ne v2, v9, :cond_c

    add-int/lit8 v2, p3, -0x1

    .line 333
    invoke-virtual {p1, v2}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->charAt(I)C

    move-result v2

    if-ne v2, v9, :cond_c

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p3, p3, -0x1

    .line 337
    :cond_c
    invoke-virtual {p1, v0, p3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object p1

    if-eqz v3, :cond_d

    add-int/lit8 v6, v6, 0x1

    .line 341
    :cond_d
    invoke-virtual {p2, v6}, Lcz/msebera/android/httpclient/message/ParserCursor;->updatePos(I)V

    .line 342
    invoke-virtual {p0, v1, p1}, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->createNameValuePair(Ljava/lang/String;Ljava/lang/String;)Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object p1

    return-object p1
.end method

.method public parseParameters(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)[Lcz/msebera/android/httpclient/NameValuePair;
    .locals 3

    const-string v0, "Char array buffer"

    .line 190
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Parser cursor"

    .line 191
    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 192
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v0

    .line 193
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getUpperBound()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 196
    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->charAt(I)C

    move-result v2

    .line 197
    invoke-static {v2}, Lcz/msebera/android/httpclient/protocol/HTTP;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {p2, v0}, Lcz/msebera/android/httpclient/message/ParserCursor;->updatePos(I)V

    .line 204
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->atEnd()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    new-array p1, p1, [Lcz/msebera/android/httpclient/NameValuePair;

    return-object p1

    .line 208
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 209
    :cond_2
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->atEnd()Z

    move-result v1

    if-nez v1, :cond_3

    .line 210
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->parseNameValuePair(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object v1

    .line 211
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    invoke-virtual {p2}, Lcz/msebera/android/httpclient/message/ParserCursor;->getPos()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_2

    .line 218
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcz/msebera/android/httpclient/NameValuePair;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcz/msebera/android/httpclient/NameValuePair;

    return-object p1
.end method

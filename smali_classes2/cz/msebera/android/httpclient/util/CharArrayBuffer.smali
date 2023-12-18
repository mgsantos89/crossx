.class public final Lcz/msebera/android/httpclient/util/CharArrayBuffer;
.super Ljava/lang/Object;
.source "CharArrayBuffer.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x562aa19b667920bfL


# instance fields
.field private buffer:[C

.field private len:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Buffer capacity"

    .line 56
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNegative(ILjava/lang/String;)I

    .line 57
    new-array p1, p1, [C

    iput-object p1, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    return-void
.end method

.method private expand(I)V
    .locals 3

    .line 61
    iget-object v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [C

    .line 62
    iget-object v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    const/4 v1, 0x0

    iget v2, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->len:I

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    iput-object p1, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    return-void
.end method


# virtual methods
.method public append(C)V
    .locals 3

    .line 155
    iget v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->len:I

    add-int/lit8 v0, v0, 0x1

    .line 156
    iget-object v1, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 157
    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->expand(I)V

    .line 159
    :cond_0
    iget-object v1, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    iget v2, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->len:I

    aput-char p1, v1, v2

    .line 160
    iput v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->len:I

    return-void
.end method

.method public append(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;II)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 217
    :cond_0
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->buffer()[B

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append([BII)V

    return-void
.end method

.method public append(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 145
    :cond_0
    iget-object v0, p1, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    const/4 v1, 0x0

    iget p1, p1, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->len:I

    invoke-virtual {p0, v0, v1, p1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append([CII)V

    return-void
.end method

.method public append(Lcz/msebera/android/httpclient/util/CharArrayBuffer;II)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 131
    :cond_0
    iget-object p1, p1, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    invoke-virtual {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append([CII)V

    return-void
.end method

.method public append(Ljava/lang/Object;)V
    .locals 0

    .line 228
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    return-void
.end method

.method public append(Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "null"

    .line 105
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 106
    iget v1, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->len:I

    add-int/2addr v1, v0

    .line 107
    iget-object v2, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    array-length v2, v2

    if-le v1, v2, :cond_1

    .line 108
    invoke-direct {p0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->expand(I)V

    .line 110
    :cond_1
    iget-object v2, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    iget v3, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->len:I

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v0, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 111
    iput v1, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->len:I

    return-void
.end method

.method public append([BII)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-ltz p2, :cond_4

    .line 181
    array-length v0, p1

    if-gt p2, v0, :cond_4

    if-ltz p3, :cond_4

    add-int v0, p2, p3

    if-ltz v0, :cond_4

    array-length v1, p1

    if-gt v0, v1, :cond_4

    if-nez p3, :cond_1

    return-void

    .line 188
    :cond_1
    iget v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->len:I

    add-int/2addr p3, v0

    .line 190
    iget-object v1, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    array-length v1, v1

    if-le p3, v1, :cond_2

    .line 191
    invoke-direct {p0, p3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->expand(I)V

    :cond_2
    :goto_0
    if-ge v0, p3, :cond_3

    .line 194
    iget-object v1, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v1, v0

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    :cond_3
    iput p3, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->len:I

    return-void

    .line 183
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "off: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " len: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " b.length: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public append([CII)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-ltz p2, :cond_3

    .line 82
    array-length v0, p1

    if-gt p2, v0, :cond_3

    if-ltz p3, :cond_3

    add-int v0, p2, p3

    if-ltz v0, :cond_3

    array-length v1, p1

    if-gt v0, v1, :cond_3

    if-nez p3, :cond_1

    return-void

    .line 89
    :cond_1
    iget v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->len:I

    add-int/2addr v0, p3

    .line 90
    iget-object v1, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    array-length v1, v1

    if-le v0, v1, :cond_2

    .line 91
    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->expand(I)V

    .line 93
    :cond_2
    iget-object v1, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    iget v2, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->len:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    iput v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->len:I

    return-void

    .line 84
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "off: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " len: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " b.length: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public buffer()[C
    .locals 1

    .line 271
    iget-object v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    return-object v0
.end method

.method public capacity()I
    .locals 1

    .line 282
    iget-object v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    array-length v0, v0

    return v0
.end method

.method public charAt(I)C
    .locals 1

    .line 262
    iget-object v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    aget-char p1, v0, p1

    return p1
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 235
    iput v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->len:I

    return-void
.end method

.method public ensureCapacity(I)V
    .locals 2

    if-gtz p1, :cond_0

    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    array-length v0, v0

    iget v1, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->len:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_1

    add-int/2addr v1, p1

    .line 308
    invoke-direct {p0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->expand(I)V

    :cond_1
    return-void
.end method

.method public indexOf(I)I
    .locals 2

    const/4 v0, 0x0

    .line 401
    iget v1, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->len:I

    invoke-virtual {p0, p1, v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->indexOf(III)I

    move-result p1

    return p1
.end method

.method public indexOf(III)I
    .locals 2

    if-gez p2, :cond_0

    const/4 p2, 0x0

    .line 376
    :cond_0
    iget v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->len:I

    if-le p3, v0, :cond_1

    move p3, v0

    :cond_1
    const/4 v0, -0x1

    if-le p2, p3, :cond_2

    return v0

    :cond_2
    :goto_0
    if-ge p2, p3, :cond_4

    .line 383
    iget-object v1, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    aget-char v1, v1, p2

    if-ne v1, p1, :cond_3

    return p2

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 336
    iget v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->len:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFull()Z
    .locals 2

    .line 346
    iget v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->len:I

    iget-object v1, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public length()I
    .locals 1

    .line 291
    iget v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->len:I

    return v0
.end method

.method public setLength(I)V
    .locals 3

    if-ltz p1, :cond_0

    .line 323
    iget-object v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    array-length v0, v0

    if-gt p1, v0, :cond_0

    .line 326
    iput p1, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->len:I

    return-void

    .line 324
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "len: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " < 0 or > buffer len: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 2

    .line 419
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    sub-int/2addr p2, p1

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public substringTrimmed(II)Ljava/lang/String;
    .locals 3

    if-ltz p1, :cond_4

    .line 444
    iget v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->len:I

    if-gt p2, v0, :cond_3

    if-gt p1, p2, :cond_2

    :goto_0
    if-ge p1, p2, :cond_0

    .line 450
    iget-object v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    aget-char v0, v0, p1

    invoke-static {v0}, Lcz/msebera/android/httpclient/protocol/HTTP;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-le p2, p1, :cond_1

    .line 453
    iget-object v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    add-int/lit8 v1, p2, -0x1

    aget-char v0, v0, v1

    invoke-static {v0}, Lcz/msebera/android/httpclient/protocol/HTTP;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 456
    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    sub-int/2addr p2, p1

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 448
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "beginIndex: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " > endIndex: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "endIndex: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " > length: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->len:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 442
    :cond_4
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Negative beginIndex: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public toCharArray()[C
    .locals 4

    .line 244
    iget v0, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->len:I

    new-array v1, v0, [C

    if-lez v0, :cond_0

    .line 246
    iget-object v2, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 461
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->buffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->len:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

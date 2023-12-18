.class public Lcz/msebera/android/httpclient/message/BasicTokenIterator;
.super Ljava/lang/Object;
.source "BasicTokenIterator.java"

# interfaces
.implements Lcz/msebera/android/httpclient/TokenIterator;


# static fields
.field public static final HTTP_SEPARATORS:Ljava/lang/String; = " ,;=()<>@:\\\"/[]?{}\t"


# instance fields
.field protected currentHeader:Ljava/lang/String;

.field protected currentToken:Ljava/lang/String;

.field protected final headerIt:Lcz/msebera/android/httpclient/HeaderIterator;

.field protected searchPos:I


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/HeaderIterator;)V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Header iterator"

    .line 85
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcz/msebera/android/httpclient/HeaderIterator;

    iput-object p1, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->headerIt:Lcz/msebera/android/httpclient/HeaderIterator;

    const/4 p1, -0x1

    .line 86
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->findNext(I)I

    move-result p1

    iput p1, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->searchPos:I

    return-void
.end method


# virtual methods
.method protected createToken(Ljava/lang/String;II)Ljava/lang/String;
    .locals 0

    .line 210
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected findNext(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/ParseException;
        }
    .end annotation

    const/4 v0, -0x1

    if-gez p1, :cond_1

    .line 167
    iget-object p1, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->headerIt:Lcz/msebera/android/httpclient/HeaderIterator;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HeaderIterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_0

    return v0

    .line 170
    :cond_0
    iget-object p1, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->headerIt:Lcz/msebera/android/httpclient/HeaderIterator;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HeaderIterator;->nextHeader()Lcz/msebera/android/httpclient/Header;

    move-result-object p1

    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    const/4 p1, 0x0

    goto :goto_0

    .line 174
    :cond_1
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->findTokenSeparator(I)I

    move-result p1

    .line 177
    :goto_0
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->findTokenStart(I)I

    move-result p1

    if-gez p1, :cond_2

    const/4 p1, 0x0

    .line 179
    iput-object p1, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->currentToken:Ljava/lang/String;

    return v0

    .line 183
    :cond_2
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->findTokenEnd(I)I

    move-result v0

    .line 184
    iget-object v1, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v0}, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->createToken(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->currentToken:Ljava/lang/String;

    return v0
.end method

.method protected findTokenEnd(I)I
    .locals 2

    const-string v0, "Search position"

    .line 313
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNegative(ILjava/lang/String;)I

    .line 314
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    add-int/lit8 p1, p1, 0x1

    if-ge p1, v0, :cond_0

    .line 316
    iget-object v1, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->isTokenChar(C)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return p1
.end method

.method protected findTokenSeparator(I)I
    .locals 4

    const-string v0, "Search position"

    .line 277
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNegative(ILjava/lang/String;)I

    move-result p1

    .line 279
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    if-ge p1, v0, :cond_3

    .line 281
    iget-object v2, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 282
    invoke-virtual {p0, v2}, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->isTokenSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 284
    :cond_0
    invoke-virtual {p0, v2}, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 286
    :cond_1
    invoke-virtual {p0, v2}, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->isTokenChar(C)Z

    move-result v0

    const-string v1, "): "

    if-eqz v0, :cond_2

    .line 287
    new-instance v0, Lcz/msebera/android/httpclient/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Tokens without separator (pos "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_2
    new-instance v0, Lcz/msebera/android/httpclient/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid character after token (pos "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return p1
.end method

.method protected findTokenStart(I)I
    .locals 5

    const-string v0, "Search position"

    .line 225
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNegative(ILjava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    if-nez v1, :cond_6

    .line 227
    iget-object v2, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 229
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    :goto_1
    if-nez v1, :cond_4

    if-ge p1, v2, :cond_4

    .line 232
    iget-object v3, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 233
    invoke-virtual {p0, v3}, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->isTokenSeparator(C)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0, v3}, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    .line 236
    :cond_1
    iget-object v1, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->isTokenChar(C)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    .line 240
    :cond_2
    new-instance v0, Lcz/msebera/android/httpclient/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid character before token (pos "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "): "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    if-nez v1, :cond_0

    .line 246
    iget-object v2, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->headerIt:Lcz/msebera/android/httpclient/HeaderIterator;

    invoke-interface {v2}, Lcz/msebera/android/httpclient/HeaderIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 247
    iget-object p1, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->headerIt:Lcz/msebera/android/httpclient/HeaderIterator;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HeaderIterator;->nextHeader()Lcz/msebera/android/httpclient/Header;

    move-result-object p1

    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    move p1, v0

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    .line 250
    iput-object v2, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->currentHeader:Ljava/lang/String;

    goto :goto_0

    :cond_6
    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    const/4 p1, -0x1

    :goto_3
    return p1
.end method

.method public hasNext()Z
    .locals 1

    .line 92
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->currentToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isHttpSeparator(C)Z
    .locals 1

    const-string v0, " ,;=()<>@:\\\"/[]?{}\t"

    .line 409
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected isTokenChar(C)Z
    .locals 3

    .line 374
    invoke-static {p1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 379
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    .line 384
    :cond_1
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->isHttpSeparator(C)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method protected isTokenSeparator(C)Z
    .locals 1

    const/16 v0, 0x2c

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected isWhitespace(C)Z
    .locals 1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    .line 355
    invoke-static {p1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;,
            Lcz/msebera/android/httpclient/ParseException;
        }
    .end annotation

    .line 130
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->nextToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;,
            Lcz/msebera/android/httpclient/ParseException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->currentToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 113
    iget v1, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->searchPos:I

    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->findNext(I)I

    move-result v1

    iput v1, p0, Lcz/msebera/android/httpclient/message/BasicTokenIterator;->searchPos:I

    return-object v0

    .line 108
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Iteration already finished."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final remove()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 142
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Removing tokens is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

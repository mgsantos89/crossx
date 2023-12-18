.class public Lcz/msebera/android/httpclient/ProtocolVersion;
.super Ljava/lang/Object;
.source "ProtocolVersion.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = 0x7c37246eac22717cL


# instance fields
.field protected final major:I

.field protected final minor:I

.field protected final protocol:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Protocol name"

    .line 71
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->protocol:Ljava/lang/String;

    const-string p1, "Protocol minor version"

    .line 72
    invoke-static {p2, p1}, Lcz/msebera/android/httpclient/util/Args;->notNegative(ILjava/lang/String;)I

    move-result p2

    iput p2, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->major:I

    .line 73
    invoke-static {p3, p1}, Lcz/msebera/android/httpclient/util/Args;->notNegative(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->minor:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 261
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public compareToVersion(Lcz/msebera/android/httpclient/ProtocolVersion;)I
    .locals 3

    const-string v0, "Protocol version"

    .line 202
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 203
    iget-object v0, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->protocol:Ljava/lang/String;

    iget-object v1, p1, Lcz/msebera/android/httpclient/ProtocolVersion;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Versions for different protocols cannot be compared: %s %s"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcz/msebera/android/httpclient/util/Args;->check(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 205
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/ProtocolVersion;->getMajor()I

    move-result v0

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/ProtocolVersion;->getMajor()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/ProtocolVersion;->getMinor()I

    move-result v0

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/ProtocolVersion;->getMinor()I

    move-result p1

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 159
    :cond_0
    instance-of v1, p1, Lcz/msebera/android/httpclient/ProtocolVersion;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 162
    :cond_1
    check-cast p1, Lcz/msebera/android/httpclient/ProtocolVersion;

    .line 164
    iget-object v1, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->protocol:Ljava/lang/String;

    iget-object v3, p1, Lcz/msebera/android/httpclient/ProtocolVersion;->protocol:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->major:I

    iget v3, p1, Lcz/msebera/android/httpclient/ProtocolVersion;->major:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->minor:I

    iget p1, p1, Lcz/msebera/android/httpclient/ProtocolVersion;->minor:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public forVersion(II)Lcz/msebera/android/httpclient/ProtocolVersion;
    .locals 2

    .line 121
    iget v0, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->major:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->minor:I

    if-ne p2, v0, :cond_0

    return-object p0

    .line 126
    :cond_0
    new-instance v0, Lcz/msebera/android/httpclient/ProtocolVersion;

    iget-object v1, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->protocol:Ljava/lang/String;

    invoke-direct {v0, v1, p1, p2}, Lcz/msebera/android/httpclient/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public final getMajor()I
    .locals 1

    .line 91
    iget v0, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->major:I

    return v0
.end method

.method public final getMinor()I
    .locals 1

    .line 100
    iget v0, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->minor:I

    return v0
.end method

.method public final getProtocol()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public final greaterEquals(Lcz/msebera/android/httpclient/ProtocolVersion;)Z
    .locals 1

    .line 224
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/ProtocolVersion;->isComparable(Lcz/msebera/android/httpclient/ProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/ProtocolVersion;->compareToVersion(Lcz/msebera/android/httpclient/ProtocolVersion;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final hashCode()I
    .locals 3

    .line 137
    iget-object v0, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->protocol:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->major:I

    const v2, 0x186a0

    mul-int/2addr v1, v2

    xor-int/2addr v0, v1

    iget v1, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->minor:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public isComparable(Lcz/msebera/android/httpclient/ProtocolVersion;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 181
    iget-object v0, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->protocol:Ljava/lang/String;

    iget-object p1, p1, Lcz/msebera/android/httpclient/ProtocolVersion;->protocol:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final lessEquals(Lcz/msebera/android/httpclient/ProtocolVersion;)Z
    .locals 1

    .line 239
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/ProtocolVersion;->isComparable(Lcz/msebera/android/httpclient/ProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/ProtocolVersion;->compareToVersion(Lcz/msebera/android/httpclient/ProtocolVersion;)I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    iget-object v1, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 253
    iget v1, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->major:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 255
    iget v1, p0, Lcz/msebera/android/httpclient/ProtocolVersion;->minor:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

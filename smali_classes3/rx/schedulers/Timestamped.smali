.class public final Lrx/schedulers/Timestamped;
.super Ljava/lang/Object;
.source "Timestamped.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final timestampMillis:J

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p3, p0, Lrx/schedulers/Timestamped;->value:Ljava/lang/Object;

    .line 27
    iput-wide p1, p0, Lrx/schedulers/Timestamped;->timestampMillis:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 56
    :cond_1
    instance-of v2, p1, Lrx/schedulers/Timestamped;

    if-nez v2, :cond_2

    return v1

    .line 59
    :cond_2
    check-cast p1, Lrx/schedulers/Timestamped;

    .line 60
    iget-wide v2, p0, Lrx/schedulers/Timestamped;->timestampMillis:J

    iget-wide v4, p1, Lrx/schedulers/Timestamped;->timestampMillis:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    return v1

    .line 63
    :cond_3
    iget-object v2, p0, Lrx/schedulers/Timestamped;->value:Ljava/lang/Object;

    if-nez v2, :cond_4

    .line 64
    iget-object p1, p1, Lrx/schedulers/Timestamped;->value:Ljava/lang/Object;

    if-eqz p1, :cond_5

    return v1

    .line 67
    :cond_4
    iget-object p1, p1, Lrx/schedulers/Timestamped;->value:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public getTimestampMillis()J
    .locals 2

    .line 36
    iget-wide v0, p0, Lrx/schedulers/Timestamped;->timestampMillis:J

    return-wide v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lrx/schedulers/Timestamped;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 77
    iget-wide v0, p0, Lrx/schedulers/Timestamped;->timestampMillis:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 78
    iget-object v1, p0, Lrx/schedulers/Timestamped;->value:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 84
    iget-wide v0, p0, Lrx/schedulers/Timestamped;->timestampMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lrx/schedulers/Timestamped;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Timestamped(timestampMillis = %d, value = %s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

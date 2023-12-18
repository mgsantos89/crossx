.class Lorg/bson/json/ShellTimestampConverter;
.super Ljava/lang/Object;
.source "ShellTimestampConverter.java"

# interfaces
.implements Lorg/bson/json/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/bson/json/Converter<",
        "Lorg/bson/BsonTimestamp;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Ljava/lang/Object;Lorg/bson/json/StrictJsonWriter;)V
    .locals 0

    .line 23
    check-cast p1, Lorg/bson/BsonTimestamp;

    invoke-virtual {p0, p1, p2}, Lorg/bson/json/ShellTimestampConverter;->convert(Lorg/bson/BsonTimestamp;Lorg/bson/json/StrictJsonWriter;)V

    return-void
.end method

.method public convert(Lorg/bson/BsonTimestamp;Lorg/bson/json/StrictJsonWriter;)V
    .locals 1

    .line 26
    invoke-virtual {p1}, Lorg/bson/BsonTimestamp;->getTime()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bson/BsonTimestamp;->getInc()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Timestamp(%d, %d)"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/bson/json/StrictJsonWriter;->writeRaw(Ljava/lang/String;)V

    return-void
.end method

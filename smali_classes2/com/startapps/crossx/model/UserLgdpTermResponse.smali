.class public final Lcom/startapps/crossx/model/UserLgdpTermResponse;
.super Ljava/lang/Object;
.source "UserLgdpTermResponse.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\u0008\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u000c\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\r\u001a\u00020\u000eH\u00d6\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/startapps/crossx/model/UserLgdpTermResponse;",
        "",
        "userId",
        "",
        "(I)V",
        "getUserId",
        "()I",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
        "CrossX_1.15.10_86_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final userId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lcom/startapps/crossx/model/UserLgdpTermResponse;->userId:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/startapps/crossx/model/UserLgdpTermResponse;IILjava/lang/Object;)Lcom/startapps/crossx/model/UserLgdpTermResponse;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Lcom/startapps/crossx/model/UserLgdpTermResponse;->userId:I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/model/UserLgdpTermResponse;->copy(I)Lcom/startapps/crossx/model/UserLgdpTermResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/startapps/crossx/model/UserLgdpTermResponse;->userId:I

    return v0
.end method

.method public final copy(I)Lcom/startapps/crossx/model/UserLgdpTermResponse;
    .locals 1

    new-instance v0, Lcom/startapps/crossx/model/UserLgdpTermResponse;

    invoke-direct {v0, p1}, Lcom/startapps/crossx/model/UserLgdpTermResponse;-><init>(I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/startapps/crossx/model/UserLgdpTermResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/startapps/crossx/model/UserLgdpTermResponse;

    iget v1, p0, Lcom/startapps/crossx/model/UserLgdpTermResponse;->userId:I

    iget p1, p1, Lcom/startapps/crossx/model/UserLgdpTermResponse;->userId:I

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getUserId()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/startapps/crossx/model/UserLgdpTermResponse;->userId:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/startapps/crossx/model/UserLgdpTermResponse;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UserLgdpTermResponse(userId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/startapps/crossx/model/UserLgdpTermResponse;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

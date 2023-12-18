.class public Lcom/startapps/crossx/model/CheckInLocationModel;
.super Lio/realm/RealmObject;
.source "CheckInLocationModel.kt"

# interfaces
.implements Ljava/io/Serializable;
.implements Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxyInterface;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0006\n\u0002\u0008\u000e\u0008\u0016\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003R\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001e\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001e\u0010\u0010\u001a\u00020\u00118\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001e\u0010\u0016\u001a\u00020\u00118\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0013\"\u0004\u0008\u0018\u0010\u0015R\u001e\u0010\u0019\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0007\"\u0004\u0008\u001b\u0010\tR\u001e\u0010\u001c\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0007\"\u0004\u0008\u001e\u0010\t\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/startapps/crossx/model/CheckInLocationModel;",
        "Ljava/io/Serializable;",
        "Lio/realm/RealmObject;",
        "()V",
        "address",
        "",
        "getAddress",
        "()Ljava/lang/String;",
        "setAddress",
        "(Ljava/lang/String;)V",
        "id",
        "",
        "getId",
        "()I",
        "setId",
        "(I)V",
        "latitude",
        "",
        "getLatitude",
        "()D",
        "setLatitude",
        "(D)V",
        "longitude",
        "getLongitude",
        "setLongitude",
        "name",
        "getName",
        "setName",
        "place_id",
        "getPlace_id",
        "setPlace_id",
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
.field private address:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "address"
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation

    .annotation runtime Lio/realm/annotations/PrimaryKey;
    .end annotation
.end field

.field private latitude:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "latitude"
    .end annotation
.end field

.field private longitude:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "longitude"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private place_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "place_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_0
    const-string v0, ""

    .line 15
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/model/CheckInLocationModel;->realmSet$name(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/model/CheckInLocationModel;->realmSet$address(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/model/CheckInLocationModel;->realmSet$place_id(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getAddress()Ljava/lang/String;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/startapps/crossx/model/CheckInLocationModel;->realmGet$address()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/startapps/crossx/model/CheckInLocationModel;->realmGet$id()I

    move-result v0

    return v0
.end method

.method public final getLatitude()D
    .locals 2

    .line 24
    invoke-virtual {p0}, Lcom/startapps/crossx/model/CheckInLocationModel;->realmGet$latitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getLongitude()D
    .locals 2

    .line 27
    invoke-virtual {p0}, Lcom/startapps/crossx/model/CheckInLocationModel;->realmGet$longitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/startapps/crossx/model/CheckInLocationModel;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPlace_id()Ljava/lang/String;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/startapps/crossx/model/CheckInLocationModel;->realmGet$place_id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$address()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/startapps/crossx/model/CheckInLocationModel;->address:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$id()I
    .locals 1

    iget v0, p0, Lcom/startapps/crossx/model/CheckInLocationModel;->id:I

    return v0
.end method

.method public realmGet$latitude()D
    .locals 2

    iget-wide v0, p0, Lcom/startapps/crossx/model/CheckInLocationModel;->latitude:D

    return-wide v0
.end method

.method public realmGet$longitude()D
    .locals 2

    iget-wide v0, p0, Lcom/startapps/crossx/model/CheckInLocationModel;->longitude:D

    return-wide v0
.end method

.method public realmGet$name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/startapps/crossx/model/CheckInLocationModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$place_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/startapps/crossx/model/CheckInLocationModel;->place_id:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$address(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/startapps/crossx/model/CheckInLocationModel;->address:Ljava/lang/String;

    return-void
.end method

.method public realmSet$id(I)V
    .locals 0

    iput p1, p0, Lcom/startapps/crossx/model/CheckInLocationModel;->id:I

    return-void
.end method

.method public realmSet$latitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/startapps/crossx/model/CheckInLocationModel;->latitude:D

    return-void
.end method

.method public realmSet$longitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/startapps/crossx/model/CheckInLocationModel;->longitude:D

    return-void
.end method

.method public realmSet$name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/startapps/crossx/model/CheckInLocationModel;->name:Ljava/lang/String;

    return-void
.end method

.method public realmSet$place_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/startapps/crossx/model/CheckInLocationModel;->place_id:Ljava/lang/String;

    return-void
.end method

.method public final setAddress(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/model/CheckInLocationModel;->realmSet$address(Ljava/lang/String;)V

    return-void
.end method

.method public final setId(I)V
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/model/CheckInLocationModel;->realmSet$id(I)V

    return-void
.end method

.method public final setLatitude(D)V
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/startapps/crossx/model/CheckInLocationModel;->realmSet$latitude(D)V

    return-void
.end method

.method public final setLongitude(D)V
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/startapps/crossx/model/CheckInLocationModel;->realmSet$longitude(D)V

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/model/CheckInLocationModel;->realmSet$name(Ljava/lang/String;)V

    return-void
.end method

.method public final setPlace_id(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/model/CheckInLocationModel;->realmSet$place_id(Ljava/lang/String;)V

    return-void
.end method

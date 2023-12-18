.class public Lcom/startapps/crossx/model/ZipcodeAddress;
.super Ljava/lang/Object;
.source "ZipcodeAddress.java"


# instance fields
.field city:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "city"
    .end annotation
.end field

.field neighborhood:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "neighborhood"
    .end annotation
.end field

.field state:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "state"
    .end annotation
.end field

.field street:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "street"
    .end annotation
.end field

.field zipcode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "zipcode"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/startapps/crossx/model/ZipcodeAddress;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getNeighborhood()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/startapps/crossx/model/ZipcodeAddress;->neighborhood:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/startapps/crossx/model/ZipcodeAddress;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getStreet()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/startapps/crossx/model/ZipcodeAddress;->street:Ljava/lang/String;

    return-object v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/startapps/crossx/model/ZipcodeAddress;->city:Ljava/lang/String;

    return-void
.end method

.method public setNeighborhood(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/startapps/crossx/model/ZipcodeAddress;->neighborhood:Ljava/lang/String;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/startapps/crossx/model/ZipcodeAddress;->state:Ljava/lang/String;

    return-void
.end method

.method public setStreet(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/startapps/crossx/model/ZipcodeAddress;->street:Ljava/lang/String;

    return-void
.end method

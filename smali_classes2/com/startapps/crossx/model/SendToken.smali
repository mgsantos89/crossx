.class public Lcom/startapps/crossx/model/SendToken;
.super Ljava/lang/Object;
.source "SendToken.java"


# instance fields
.field public deviceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "device_id"
    .end annotation
.end field

.field public tokenFCM:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "registration_token"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/startapps/crossx/model/SendToken;->tokenFCM:Ljava/lang/String;

    .line 20
    invoke-static {p2}, Lcom/startapps/crossx/model/SendToken;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/model/SendToken;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public static getDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

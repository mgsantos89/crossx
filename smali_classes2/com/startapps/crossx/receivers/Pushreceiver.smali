.class public Lcom/startapps/crossx/receivers/Pushreceiver;
.super Ljava/lang/Object;
.source "Pushreceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getPushData(Landroid/content/Intent;)Lorg/json/JSONObject;
    .locals 2

    const-string v0, "PushCross X getPushData()"

    .line 93
    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/Logger;->d(Ljava/lang/String;)V

    .line 95
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "com.parse.Data"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

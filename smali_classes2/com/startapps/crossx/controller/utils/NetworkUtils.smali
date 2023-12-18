.class public Lcom/startapps/crossx/controller/utils/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# static fields
.field public static TYPE_MOBILE:I = 0x2

.field public static TYPE_NOT_CONNECTED:I = 0x0

.field public static TYPE_WIFI:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConnectivityStatus(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 59
    filled-new-array {v0, v1}, [I

    move-result-object v2

    :try_start_0
    const-string v3, "connectivity"

    .line 61
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    move v3, v0

    :goto_0
    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 62
    aget v4, v2, v3

    .line 63
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 65
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v5, v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return v0
.end method

.method public static getConnectivityStatusString(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 0

    .line 55
    invoke-static {p0}, Lcom/startapps/crossx/controller/utils/NetworkUtils;->getConnectivityStatus(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

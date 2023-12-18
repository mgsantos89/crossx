.class public Lcom/startapps/crossx/controller/network/WSConfig;
.super Ljava/lang/Object;
.source "WSConfig.java"


# static fields
.field private static TOKEN:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTOKEN()Ljava/lang/String;
    .locals 2

    .line 14
    sget-object v0, Lcom/startapps/crossx/controller/network/WSConfig;->TOKEN:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TOKEN "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/startapps/crossx/controller/network/WSConfig;->TOKEN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TOKEN"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    sget-object v0, Lcom/startapps/crossx/controller/network/WSConfig;->TOKEN:Ljava/lang/String;

    return-object v0
.end method

.method public static setTOKEN(Ljava/lang/String;)V
    .locals 0

    .line 24
    sput-object p0, Lcom/startapps/crossx/controller/network/WSConfig;->TOKEN:Ljava/lang/String;

    return-void
.end method

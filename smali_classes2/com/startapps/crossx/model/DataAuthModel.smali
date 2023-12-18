.class public final Lcom/startapps/crossx/model/DataAuthModel;
.super Ljava/lang/Object;
.source "AuthModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/startapps/crossx/model/DataAuthModel;",
        "",
        "()V",
        "token",
        "",
        "getToken",
        "()Ljava/lang/String;",
        "setToken",
        "(Ljava/lang/String;)V",
        "user",
        "Lcom/startapps/crossx/model/UserModel;",
        "getUser",
        "()Lcom/startapps/crossx/model/UserModel;",
        "setUser",
        "(Lcom/startapps/crossx/model/UserModel;)V",
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
.field private token:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "token"
    .end annotation
.end field

.field private user:Lcom/startapps/crossx/model/UserModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/startapps/crossx/model/UserModel;

    invoke-direct {v0}, Lcom/startapps/crossx/model/UserModel;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/model/DataAuthModel;->user:Lcom/startapps/crossx/model/UserModel;

    const-string v0, ""

    .line 25
    iput-object v0, p0, Lcom/startapps/crossx/model/DataAuthModel;->token:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getToken()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/startapps/crossx/model/DataAuthModel;->token:Ljava/lang/String;

    return-object v0
.end method

.method public final getUser()Lcom/startapps/crossx/model/UserModel;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/startapps/crossx/model/DataAuthModel;->user:Lcom/startapps/crossx/model/UserModel;

    return-object v0
.end method

.method public final setToken(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lcom/startapps/crossx/model/DataAuthModel;->token:Ljava/lang/String;

    return-void
.end method

.method public final setUser(Lcom/startapps/crossx/model/UserModel;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lcom/startapps/crossx/model/DataAuthModel;->user:Lcom/startapps/crossx/model/UserModel;

    return-void
.end method

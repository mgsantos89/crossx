.class public final Lcom/startapps/crossx/model/AuthModel;
.super Ljava/lang/Object;
.source "AuthModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/model/AuthModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u0000 \r2\u00020\u0001:\u0001\rB\u0005\u00a2\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u001e\u0010\u0007\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/startapps/crossx/model/AuthModel;",
        "",
        "()V",
        "data",
        "Lcom/startapps/crossx/model/DataAuthModel;",
        "getData",
        "()Lcom/startapps/crossx/model/DataAuthModel;",
        "message",
        "",
        "getMessage",
        "()Ljava/lang/String;",
        "setMessage",
        "(Ljava/lang/String;)V",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/startapps/crossx/model/AuthModel$Companion;

.field public static final TYPE_DEFAULT_LOGIN:I = 0x1

.field public static final TYPE_FACEBOOK_LOGIN:I = 0x2


# instance fields
.field private final data:Lcom/startapps/crossx/model/DataAuthModel;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation
.end field

.field private message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/startapps/crossx/model/AuthModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/startapps/crossx/model/AuthModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/startapps/crossx/model/AuthModel;->Companion:Lcom/startapps/crossx/model/AuthModel$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 13
    iput-object v0, p0, Lcom/startapps/crossx/model/AuthModel;->message:Ljava/lang/String;

    .line 16
    new-instance v0, Lcom/startapps/crossx/model/DataAuthModel;

    invoke-direct {v0}, Lcom/startapps/crossx/model/DataAuthModel;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/model/AuthModel;->data:Lcom/startapps/crossx/model/DataAuthModel;

    return-void
.end method


# virtual methods
.method public final getData()Lcom/startapps/crossx/model/DataAuthModel;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/startapps/crossx/model/AuthModel;->data:Lcom/startapps/crossx/model/DataAuthModel;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/startapps/crossx/model/AuthModel;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final setMessage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lcom/startapps/crossx/model/AuthModel;->message:Ljava/lang/String;

    return-void
.end method

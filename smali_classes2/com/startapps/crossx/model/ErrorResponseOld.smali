.class public final Lcom/startapps/crossx/model/ErrorResponseOld;
.super Ljava/lang/Object;
.source "ErrorResponse.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R2\u0010\u0003\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004j\n\u0012\u0004\u0012\u00020\u0005\u0018\u0001`\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001e\u0010\u000b\u001a\u00020\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/startapps/crossx/model/ErrorResponseOld;",
        "",
        "()V",
        "errors",
        "Ljava/util/ArrayList;",
        "Lcom/startapps/crossx/model/ErrorOld;",
        "Lkotlin/collections/ArrayList;",
        "getErrors",
        "()Ljava/util/ArrayList;",
        "setErrors",
        "(Ljava/util/ArrayList;)V",
        "message",
        "",
        "getMessage",
        "()Ljava/lang/String;",
        "setMessage",
        "(Ljava/lang/String;)V",
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
.field private errors:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "errors"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/startapps/crossx/model/ErrorOld;",
            ">;"
        }
    .end annotation
.end field

.field private message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 15
    iput-object v0, p0, Lcom/startapps/crossx/model/ErrorResponseOld;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getErrors()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/startapps/crossx/model/ErrorOld;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/startapps/crossx/model/ErrorResponseOld;->errors:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/startapps/crossx/model/ErrorResponseOld;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final setErrors(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/startapps/crossx/model/ErrorOld;",
            ">;)V"
        }
    .end annotation

    .line 18
    iput-object p1, p0, Lcom/startapps/crossx/model/ErrorResponseOld;->errors:Ljava/util/ArrayList;

    return-void
.end method

.method public final setMessage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/startapps/crossx/model/ErrorResponseOld;->message:Ljava/lang/String;

    return-void
.end method

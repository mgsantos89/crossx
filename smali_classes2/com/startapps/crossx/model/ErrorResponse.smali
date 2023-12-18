.class public final Lcom/startapps/crossx/model/ErrorResponse;
.super Ljava/lang/Object;
.source "ErrorResponse.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002RT\u0010\u0003\u001a8\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0006\u0018\u00010\u0004j \u0012\u0004\u0012\u00020\u0005\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00050\u0006j\u0008\u0012\u0004\u0012\u00020\u0005`\u0008\u0018\u0001`\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001e\u0010\r\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/startapps/crossx/model/ErrorResponse;",
        "",
        "()V",
        "errors",
        "Ljava/util/HashMap;",
        "",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/HashMap;",
        "Lkotlin/collections/ArrayList;",
        "getErrors",
        "()Ljava/util/HashMap;",
        "setErrors",
        "(Ljava/util/HashMap;)V",
        "message",
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
.field private errors:Ljava/util/HashMap;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "errors"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
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

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/startapps/crossx/model/ErrorResponse;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getErrors()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/startapps/crossx/model/ErrorResponse;->errors:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/startapps/crossx/model/ErrorResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final setErrors(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 10
    iput-object p1, p0, Lcom/startapps/crossx/model/ErrorResponse;->errors:Ljava/util/HashMap;

    return-void
.end method

.method public final setMessage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iput-object p1, p0, Lcom/startapps/crossx/model/ErrorResponse;->message:Ljava/lang/String;

    return-void
.end method

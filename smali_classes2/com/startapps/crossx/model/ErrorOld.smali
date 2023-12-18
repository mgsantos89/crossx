.class public final Lcom/startapps/crossx/model/ErrorOld;
.super Ljava/lang/Object;
.source "ErrorResponse.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\t\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/startapps/crossx/model/ErrorOld;",
        "",
        "()V",
        "field",
        "",
        "getField",
        "()Ljava/lang/String;",
        "setField",
        "(Ljava/lang/String;)V",
        "message",
        "getMessage",
        "setMessage",
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
.field private field:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "field"
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

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 23
    iput-object v0, p0, Lcom/startapps/crossx/model/ErrorOld;->field:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/startapps/crossx/model/ErrorOld;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getField()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/startapps/crossx/model/ErrorOld;->field:Ljava/lang/String;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/startapps/crossx/model/ErrorOld;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final setField(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/startapps/crossx/model/ErrorOld;->field:Ljava/lang/String;

    return-void
.end method

.method public final setMessage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/startapps/crossx/model/ErrorOld;->message:Ljava/lang/String;

    return-void
.end method

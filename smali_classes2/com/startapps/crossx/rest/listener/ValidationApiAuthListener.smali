.class public final Lcom/startapps/crossx/rest/listener/ValidationApiAuthListener;
.super Ljava/lang/Object;
.source "ValidationApiAuthListener.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u0004\u001a\u00020\u0005J\u0006\u0010\u0002\u001a\u00020\u0003R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/startapps/crossx/rest/listener/ValidationApiAuthListener;",
        "",
        "success",
        "",
        "message",
        "",
        "(ZLjava/lang/String;)V",
        "mMessage",
        "mSuccess",
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
.field private mMessage:Ljava/lang/String;

.field private mSuccess:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, v0}, Lcom/startapps/crossx/rest/listener/ValidationApiAuthListener;-><init>(ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-boolean p1, p0, Lcom/startapps/crossx/rest/listener/ValidationApiAuthListener;->mSuccess:Z

    .line 9
    iput-object p2, p0, Lcom/startapps/crossx/rest/listener/ValidationApiAuthListener;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const-string p2, ""

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/startapps/crossx/rest/listener/ValidationApiAuthListener;-><init>(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final message()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/startapps/crossx/rest/listener/ValidationApiAuthListener;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final success()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/startapps/crossx/rest/listener/ValidationApiAuthListener;->mSuccess:Z

    return v0
.end method

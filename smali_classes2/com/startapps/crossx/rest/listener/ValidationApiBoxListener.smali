.class public final Lcom/startapps/crossx/rest/listener/ValidationApiBoxListener;
.super Ljava/lang/Object;
.source "ValidationApiBoxListener.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004J\u0006\u0010\u000b\u001a\u00020\u0007J\u0014\u0010\u000c\u001a\u00020\r2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004J\u000e\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\u0007J\u000e\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\tJ\u0006\u0010\u0011\u001a\u00020\tR\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/startapps/crossx/rest/listener/ValidationApiBoxListener;",
        "",
        "()V",
        "mDataList",
        "Ljava/util/ArrayList;",
        "Lcom/startapps/crossx/model/BoxModel;",
        "mMessage",
        "",
        "mSuccess",
        "",
        "dataList",
        "message",
        "setDataList",
        "",
        "setMessage",
        "setSuccess",
        "isSuccess",
        "success",
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
.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/startapps/crossx/model/BoxModel;",
            ">;"
        }
    .end annotation
.end field

.field private mMessage:Ljava/lang/String;

.field private mSuccess:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/startapps/crossx/rest/listener/ValidationApiBoxListener;->mSuccess:Z

    const-string v0, ""

    .line 8
    iput-object v0, p0, Lcom/startapps/crossx/rest/listener/ValidationApiBoxListener;->mMessage:Ljava/lang/String;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/rest/listener/ValidationApiBoxListener;->mDataList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final dataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/startapps/crossx/model/BoxModel;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/startapps/crossx/rest/listener/ValidationApiBoxListener;->mDataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final message()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/startapps/crossx/rest/listener/ValidationApiBoxListener;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final setDataList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/startapps/crossx/model/BoxModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "dataList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lcom/startapps/crossx/rest/listener/ValidationApiBoxListener;->mDataList:Ljava/util/ArrayList;

    return-void
.end method

.method public final setMessage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lcom/startapps/crossx/rest/listener/ValidationApiBoxListener;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public final setSuccess(Z)V
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/startapps/crossx/rest/listener/ValidationApiBoxListener;->mSuccess:Z

    return-void
.end method

.method public final success()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/startapps/crossx/rest/listener/ValidationApiBoxListener;->mSuccess:Z

    return v0
.end method

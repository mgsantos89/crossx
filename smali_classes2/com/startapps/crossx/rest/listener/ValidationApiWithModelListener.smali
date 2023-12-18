.class public final Lcom/startapps/crossx/rest/listener/ValidationApiWithModelListener;
.super Ljava/lang/Object;
.source "ValidationApiWithModelListener.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\r\u0010\n\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0002\u0010\u000bJ\u0006\u0010\u000c\u001a\u00020\u0007J\u0013\u0010\r\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u000fJ\u000e\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u000c\u001a\u00020\u0007J\u000e\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\tJ\u0006\u0010\u0013\u001a\u00020\tR\u0012\u0010\u0004\u001a\u0004\u0018\u00018\u0000X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/startapps/crossx/rest/listener/ValidationApiWithModelListener;",
        "M",
        "",
        "()V",
        "mDataList",
        "Ljava/lang/Object;",
        "mMessage",
        "",
        "mSuccess",
        "",
        "dataList",
        "()Ljava/lang/Object;",
        "message",
        "setDataList",
        "",
        "(Ljava/lang/Object;)V",
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
.field private mDataList:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field

.field private mMessage:Ljava/lang/String;

.field private mSuccess:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/startapps/crossx/rest/listener/ValidationApiWithModelListener;->mSuccess:Z

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/startapps/crossx/rest/listener/ValidationApiWithModelListener;->mMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final dataList()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/startapps/crossx/rest/listener/ValidationApiWithModelListener;->mDataList:Ljava/lang/Object;

    return-object v0
.end method

.method public final message()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/startapps/crossx/rest/listener/ValidationApiWithModelListener;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final setDataList(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation

    .line 10
    iput-object p1, p0, Lcom/startapps/crossx/rest/listener/ValidationApiWithModelListener;->mDataList:Ljava/lang/Object;

    return-void
.end method

.method public final setMessage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lcom/startapps/crossx/rest/listener/ValidationApiWithModelListener;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public final setSuccess(Z)V
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/startapps/crossx/rest/listener/ValidationApiWithModelListener;->mSuccess:Z

    return-void
.end method

.method public final success()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/startapps/crossx/rest/listener/ValidationApiWithModelListener;->mSuccess:Z

    return v0
.end method

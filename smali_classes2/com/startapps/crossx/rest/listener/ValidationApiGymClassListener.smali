.class public final Lcom/startapps/crossx/rest/listener/ValidationApiGymClassListener;
.super Ljava/lang/Object;
.source "ValidationApiGymClassListener.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\u0008\u0012\u0004\u0012\u00020\u0005`\u0006J\u0006\u0010\u000c\u001a\u00020\u0008J0\u0010\r\u001a\u00020\u000e2\u0016\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\u0008\u0012\u0004\u0012\u00020\u0005`\u00062\u0006\u0010\u000f\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0008J\u001e\u0010\u0010\u001a\u00020\u000e2\u0016\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\u0008\u0012\u0004\u0012\u00020\u0005`\u0006J\u000e\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u000c\u001a\u00020\u0008J\u000e\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\nJ\u0006\u0010\u0013\u001a\u00020\nR\u001e\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\u0008\u0012\u0004\u0012\u00020\u0005`\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/startapps/crossx/rest/listener/ValidationApiGymClassListener;",
        "",
        "()V",
        "mDataList",
        "Ljava/util/ArrayList;",
        "Lcom/startapps/crossx/model/GymClassModel;",
        "Lkotlin/collections/ArrayList;",
        "mMessage",
        "",
        "mSuccess",
        "",
        "dataList",
        "message",
        "setDataGymClass",
        "",
        "isSuccess",
        "setDataList",
        "setMessage",
        "setSuccess",
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
            "Lcom/startapps/crossx/model/GymClassModel;",
            ">;"
        }
    .end annotation
.end field

.field private mMessage:Ljava/lang/String;

.field private mSuccess:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/startapps/crossx/rest/listener/ValidationApiGymClassListener;->mSuccess:Z

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/startapps/crossx/rest/listener/ValidationApiGymClassListener;->mMessage:Ljava/lang/String;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/rest/listener/ValidationApiGymClassListener;->mDataList:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic setDataGymClass$default(Lcom/startapps/crossx/rest/listener/ValidationApiGymClassListener;Ljava/util/ArrayList;ZLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const-string p3, ""

    .line 22
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/startapps/crossx/rest/listener/ValidationApiGymClassListener;->setDataGymClass(Ljava/util/ArrayList;ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final dataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/startapps/crossx/model/GymClassModel;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/startapps/crossx/rest/listener/ValidationApiGymClassListener;->mDataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final message()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/startapps/crossx/rest/listener/ValidationApiGymClassListener;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final setDataGymClass(Ljava/util/ArrayList;ZLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/startapps/crossx/model/GymClassModel;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "dataList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/startapps/crossx/rest/listener/ValidationApiGymClassListener;->mDataList:Ljava/util/ArrayList;

    .line 24
    iput-boolean p2, p0, Lcom/startapps/crossx/rest/listener/ValidationApiGymClassListener;->mSuccess:Z

    .line 25
    iput-object p3, p0, Lcom/startapps/crossx/rest/listener/ValidationApiGymClassListener;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public final setDataList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/startapps/crossx/model/GymClassModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "dataList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object p1, p0, Lcom/startapps/crossx/rest/listener/ValidationApiGymClassListener;->mDataList:Ljava/util/ArrayList;

    return-void
.end method

.method public final setMessage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/startapps/crossx/rest/listener/ValidationApiGymClassListener;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public final setSuccess(Z)V
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/startapps/crossx/rest/listener/ValidationApiGymClassListener;->mSuccess:Z

    return-void
.end method

.method public final success()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/startapps/crossx/rest/listener/ValidationApiGymClassListener;->mSuccess:Z

    return v0
.end method

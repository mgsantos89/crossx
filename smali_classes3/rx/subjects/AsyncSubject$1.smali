.class final Lrx/subjects/AsyncSubject$1;
.super Ljava/lang/Object;
.source "AsyncSubject.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/subjects/AsyncSubject;->create()Lrx/subjects/AsyncSubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$state:Lrx/subjects/SubjectSubscriptionManager;


# direct methods
.method constructor <init>(Lrx/subjects/SubjectSubscriptionManager;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lrx/subjects/AsyncSubject$1;->val$state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 67
    check-cast p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    invoke-virtual {p0, p1}, Lrx/subjects/AsyncSubject$1;->call(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V

    return-void
.end method

.method public call(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<",
            "TT;>;)V"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lrx/subjects/AsyncSubject$1;->val$state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v0}, Lrx/subjects/SubjectSubscriptionManager;->get()Ljava/lang/Object;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lrx/subjects/AsyncSubject$1;->val$state:Lrx/subjects/SubjectSubscriptionManager;

    iget-object v1, v1, Lrx/subjects/SubjectSubscriptionManager;->nl:Lrx/internal/operators/NotificationLite;

    .line 72
    invoke-virtual {p1, v0, v1}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->accept(Ljava/lang/Object;Lrx/internal/operators/NotificationLite;)V

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v1, v0}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, v0}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    :cond_0
    invoke-virtual {p1}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->onCompleted()V

    :cond_1
    return-void
.end method

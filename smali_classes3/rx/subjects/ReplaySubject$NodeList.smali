.class final Lrx/subjects/ReplaySubject$NodeList;
.super Ljava/lang/Object;
.source "ReplaySubject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subjects/ReplaySubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NodeList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/subjects/ReplaySubject$NodeList$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final head:Lrx/subjects/ReplaySubject$NodeList$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/ReplaySubject$NodeList$Node<",
            "TT;>;"
        }
    .end annotation
.end field

.field size:I

.field tail:Lrx/subjects/ReplaySubject$NodeList$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/ReplaySubject$NodeList$Node<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1033
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1048
    new-instance v0, Lrx/subjects/ReplaySubject$NodeList$Node;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrx/subjects/ReplaySubject$NodeList$Node;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lrx/subjects/ReplaySubject$NodeList;->head:Lrx/subjects/ReplaySubject$NodeList$Node;

    .line 1050
    iput-object v0, p0, Lrx/subjects/ReplaySubject$NodeList;->tail:Lrx/subjects/ReplaySubject$NodeList$Node;

    return-void
.end method


# virtual methods
.method public addLast(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1055
    iget-object v0, p0, Lrx/subjects/ReplaySubject$NodeList;->tail:Lrx/subjects/ReplaySubject$NodeList$Node;

    .line 1056
    new-instance v1, Lrx/subjects/ReplaySubject$NodeList$Node;

    invoke-direct {v1, p1}, Lrx/subjects/ReplaySubject$NodeList$Node;-><init>(Ljava/lang/Object;)V

    .line 1057
    iput-object v1, v0, Lrx/subjects/ReplaySubject$NodeList$Node;->next:Lrx/subjects/ReplaySubject$NodeList$Node;

    .line 1058
    iput-object v1, p0, Lrx/subjects/ReplaySubject$NodeList;->tail:Lrx/subjects/ReplaySubject$NodeList$Node;

    .line 1059
    iget p1, p0, Lrx/subjects/ReplaySubject$NodeList;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lrx/subjects/ReplaySubject$NodeList;->size:I

    return-void
.end method

.method public clear()V
    .locals 1

    .line 1080
    iget-object v0, p0, Lrx/subjects/ReplaySubject$NodeList;->head:Lrx/subjects/ReplaySubject$NodeList$Node;

    iput-object v0, p0, Lrx/subjects/ReplaySubject$NodeList;->tail:Lrx/subjects/ReplaySubject$NodeList$Node;

    const/4 v0, 0x0

    .line 1081
    iput v0, p0, Lrx/subjects/ReplaySubject$NodeList;->size:I

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 1074
    iget v0, p0, Lrx/subjects/ReplaySubject$NodeList;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1062
    iget-object v0, p0, Lrx/subjects/ReplaySubject$NodeList;->head:Lrx/subjects/ReplaySubject$NodeList$Node;

    iget-object v0, v0, Lrx/subjects/ReplaySubject$NodeList$Node;->next:Lrx/subjects/ReplaySubject$NodeList$Node;

    if-eqz v0, :cond_1

    .line 1065
    iget-object v0, p0, Lrx/subjects/ReplaySubject$NodeList;->head:Lrx/subjects/ReplaySubject$NodeList$Node;

    iget-object v0, v0, Lrx/subjects/ReplaySubject$NodeList$Node;->next:Lrx/subjects/ReplaySubject$NodeList$Node;

    .line 1066
    iget-object v1, p0, Lrx/subjects/ReplaySubject$NodeList;->head:Lrx/subjects/ReplaySubject$NodeList$Node;

    iget-object v2, v0, Lrx/subjects/ReplaySubject$NodeList$Node;->next:Lrx/subjects/ReplaySubject$NodeList$Node;

    iput-object v2, v1, Lrx/subjects/ReplaySubject$NodeList$Node;->next:Lrx/subjects/ReplaySubject$NodeList$Node;

    .line 1067
    iget-object v1, p0, Lrx/subjects/ReplaySubject$NodeList;->head:Lrx/subjects/ReplaySubject$NodeList$Node;

    iget-object v1, v1, Lrx/subjects/ReplaySubject$NodeList$Node;->next:Lrx/subjects/ReplaySubject$NodeList$Node;

    if-nez v1, :cond_0

    .line 1068
    iget-object v1, p0, Lrx/subjects/ReplaySubject$NodeList;->head:Lrx/subjects/ReplaySubject$NodeList$Node;

    iput-object v1, p0, Lrx/subjects/ReplaySubject$NodeList;->tail:Lrx/subjects/ReplaySubject$NodeList$Node;

    .line 1070
    :cond_0
    iget v1, p0, Lrx/subjects/ReplaySubject$NodeList;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lrx/subjects/ReplaySubject$NodeList;->size:I

    .line 1071
    iget-object v0, v0, Lrx/subjects/ReplaySubject$NodeList$Node;->value:Ljava/lang/Object;

    return-object v0

    .line 1063
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 1

    .line 1077
    iget v0, p0, Lrx/subjects/ReplaySubject$NodeList;->size:I

    return v0
.end method

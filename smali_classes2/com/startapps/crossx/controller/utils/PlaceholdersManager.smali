.class public Lcom/startapps/crossx/controller/utils/PlaceholdersManager;
.super Ljava/lang/Object;
.source "PlaceholdersManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/controller/utils/PlaceholdersManager$Placeholder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/startapps/crossx/controller/utils/PlaceholdersManager$Placeholder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private placeholders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/controller/utils/PlaceholdersManager;->placeholders:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Lcom/startapps/crossx/controller/utils/PlaceholdersManager$Placeholder;)Lcom/startapps/crossx/controller/utils/PlaceholdersManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/startapps/crossx/controller/utils/PlaceholdersManager<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 22
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/PlaceholdersManager;->placeholders:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Dude, don\'t use null params, srsly."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hideAll()V
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/PlaceholdersManager;->placeholders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapps/crossx/controller/utils/PlaceholdersManager$Placeholder;

    .line 35
    invoke-interface {v1}, Lcom/startapps/crossx/controller/utils/PlaceholdersManager$Placeholder;->isViewInflated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    invoke-interface {v1}, Lcom/startapps/crossx/controller/utils/PlaceholdersManager$Placeholder;->getView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public show(Ljava/lang/String;)Lcom/startapps/crossx/controller/utils/PlaceholdersManager$Placeholder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 27
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/PlaceholdersManager;->hideAll()V

    .line 28
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/PlaceholdersManager;->placeholders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/controller/utils/PlaceholdersManager$Placeholder;

    .line 29
    invoke-interface {p1}, Lcom/startapps/crossx/controller/utils/PlaceholdersManager$Placeholder;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-object p1
.end method

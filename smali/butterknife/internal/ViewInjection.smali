.class final Lbutterknife/internal/ViewInjection;
.super Ljava/lang/Object;
.source "ViewInjection.java"


# instance fields
.field private final id:I

.field private final listenerBindings:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Lbutterknife/internal/ListenerClass;",
            "Ljava/util/Map<",
            "Lbutterknife/internal/ListenerMethod;",
            "Ljava/util/Set<",
            "Lbutterknife/internal/ListenerBinding;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final viewBindings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lbutterknife/internal/ViewBinding;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lbutterknife/internal/ViewInjection;->viewBindings:Ljava/util/Set;

    .line 14
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lbutterknife/internal/ViewInjection;->listenerBindings:Ljava/util/LinkedHashMap;

    .line 19
    iput p1, p0, Lbutterknife/internal/ViewInjection;->id:I

    return-void
.end method


# virtual methods
.method public addListenerBinding(Lbutterknife/internal/ListenerClass;Lbutterknife/internal/ListenerMethod;Lbutterknife/internal/ListenerBinding;)V
    .locals 2

    .line 41
    iget-object v0, p0, Lbutterknife/internal/ViewInjection;->listenerBindings:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 45
    iget-object v1, p0, Lbutterknife/internal/ViewInjection;->listenerBindings:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    goto :goto_0

    .line 47
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    :goto_0
    if-nez p1, :cond_1

    .line 50
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 51
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_1
    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addViewBinding(Lbutterknife/internal/ViewBinding;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lbutterknife/internal/ViewInjection;->viewBindings:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getId()I
    .locals 1

    .line 23
    iget v0, p0, Lbutterknife/internal/ViewInjection;->id:I

    return v0
.end method

.method public getListenerBindings()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lbutterknife/internal/ListenerClass;",
            "Ljava/util/Map<",
            "Lbutterknife/internal/ListenerMethod;",
            "Ljava/util/Set<",
            "Lbutterknife/internal/ListenerBinding;",
            ">;>;>;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lbutterknife/internal/ViewInjection;->listenerBindings:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public getRequiredBindings()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lbutterknife/internal/Binding;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    iget-object v1, p0, Lbutterknife/internal/ViewInjection;->viewBindings:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbutterknife/internal/ViewBinding;

    .line 63
    invoke-virtual {v2}, Lbutterknife/internal/ViewBinding;->isRequired()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    :cond_1
    iget-object v1, p0, Lbutterknife/internal/ViewInjection;->listenerBindings:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 68
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 69
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbutterknife/internal/ListenerBinding;

    .line 70
    invoke-virtual {v4}, Lbutterknife/internal/ListenerBinding;->isRequired()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 71
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-object v0
.end method

.method public getViewBindings()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lbutterknife/internal/ViewBinding;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lbutterknife/internal/ViewInjection;->viewBindings:Ljava/util/Set;

    return-object v0
.end method

.method public hasListenerBinding(Lbutterknife/internal/ListenerClass;Lbutterknife/internal/ListenerMethod;)Z
    .locals 1

    .line 35
    iget-object v0, p0, Lbutterknife/internal/ViewInjection;->listenerBindings:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 36
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

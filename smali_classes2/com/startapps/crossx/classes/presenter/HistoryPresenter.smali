.class public Lcom/startapps/crossx/classes/presenter/HistoryPresenter;
.super Ljava/lang/Object;
.source "HistoryPresenter.java"

# interfaces
.implements Lcom/startapps/crossx/Interfaces/contracts/HistoryContract$Presenter;


# instance fields
.field private final viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/HistoryContract$View;


# direct methods
.method static bridge synthetic -$$Nest$fgetviewInteraction(Lcom/startapps/crossx/classes/presenter/HistoryPresenter;)Lcom/startapps/crossx/Interfaces/contracts/HistoryContract$View;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/classes/presenter/HistoryPresenter;->viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/HistoryContract$View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcreateHasMap(Lcom/startapps/crossx/classes/presenter/HistoryPresenter;Ljava/util/List;Ljava/util/List;)Ljava/util/HashMap;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/startapps/crossx/classes/presenter/HistoryPresenter;->createHasMap(Ljava/util/List;Ljava/util/List;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetHeadList(Lcom/startapps/crossx/classes/presenter/HistoryPresenter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/startapps/crossx/classes/presenter/HistoryPresenter;->getHeadList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/startapps/crossx/Interfaces/contracts/HistoryContract$View;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/startapps/crossx/classes/presenter/HistoryPresenter;->viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/HistoryContract$View;

    return-void
.end method

.method private createHasMap(Ljava/util/List;Ljava/util/List;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/HistoryHead;",
            ">;",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/History;",
            ">;)",
            "Ljava/util/HashMap<",
            "Lcom/startapps/crossx/model/HistoryHead;",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/History;",
            ">;>;"
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 74
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapps/crossx/model/HistoryHead;

    .line 75
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 76
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/startapps/crossx/model/History;

    .line 77
    iget-object v5, v1, Lcom/startapps/crossx/model/HistoryHead;->date:Ljava/lang/String;

    iget-object v6, v4, Lcom/startapps/crossx/model/History;->paymentDate:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/startapps/crossx/model/History;->products:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 78
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 81
    :cond_1
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getHeadList(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/History;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/HistoryHead;",
            ">;"
        }
    .end annotation

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapps/crossx/model/History;

    .line 92
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/startapps/crossx/model/HistoryHead;

    .line 93
    iget-object v4, v1, Lcom/startapps/crossx/model/History;->paymentDate:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/startapps/crossx/model/HistoryHead;->date:Ljava/lang/String;

    iget-object v5, v1, Lcom/startapps/crossx/model/History;->paymentDate:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 95
    iget-wide v4, v3, Lcom/startapps/crossx/model/HistoryHead;->value:D

    iget-object v2, v1, Lcom/startapps/crossx/model/History;->paymentValue:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    add-double/2addr v4, v6

    iput-wide v4, v3, Lcom/startapps/crossx/model/HistoryHead;->value:D

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_0

    .line 100
    new-instance v2, Lcom/startapps/crossx/model/HistoryHead;

    iget-object v3, v1, Lcom/startapps/crossx/model/History;->paymentDate:Ljava/lang/String;

    iget-object v1, v1, Lcom/startapps/crossx/model/History;->paymentValue:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/startapps/crossx/model/HistoryHead;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public getDetailsMembership(J)V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/startapps/crossx/classes/presenter/HistoryPresenter;->viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/HistoryContract$View;

    invoke-interface {v0}, Lcom/startapps/crossx/Interfaces/contracts/HistoryContract$View;->showLoading()V

    .line 54
    new-instance v0, Lcom/startapps/crossx/rest/clients/PaymentClient;

    invoke-direct {v0}, Lcom/startapps/crossx/rest/clients/PaymentClient;-><init>()V

    new-instance v1, Lcom/startapps/crossx/classes/presenter/HistoryPresenter$2;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/classes/presenter/HistoryPresenter$2;-><init>(Lcom/startapps/crossx/classes/presenter/HistoryPresenter;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/startapps/crossx/rest/clients/PaymentClient;->getDetailsMembership(JLcom/startapps/crossx/rest/callback/SimpleCallback;)V

    return-void
.end method

.method public getHistoryList()V
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/startapps/crossx/classes/presenter/HistoryPresenter;->viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/HistoryContract$View;

    invoke-interface {v0}, Lcom/startapps/crossx/Interfaces/contracts/HistoryContract$View;->showLoading()V

    .line 35
    new-instance v0, Lcom/startapps/crossx/rest/clients/PaymentClient;

    invoke-direct {v0}, Lcom/startapps/crossx/rest/clients/PaymentClient;-><init>()V

    new-instance v1, Lcom/startapps/crossx/classes/presenter/HistoryPresenter$1;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/classes/presenter/HistoryPresenter$1;-><init>(Lcom/startapps/crossx/classes/presenter/HistoryPresenter;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/startapps/crossx/rest/clients/PaymentClient;->getHistory(ILcom/startapps/crossx/rest/callback/SimpleCallback;)V

    return-void
.end method

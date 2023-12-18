.class public Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;
.super Ljava/lang/Object;
.source "ToPayFragmentPresenter.java"

# interfaces
.implements Lcom/startapps/crossx/Interfaces/contracts/ToPayFragmentContract$Presenter;


# instance fields
.field private final arguments:Landroid/os/Bundle;

.field membershipId:J

.field public totalItens:I

.field totalValue:D

.field private final viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/ToPayFragmentContract$View;


# direct methods
.method static bridge synthetic -$$Nest$fgetviewInteraction(Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;)Lcom/startapps/crossx/Interfaces/contracts/ToPayFragmentContract$View;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;->viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/ToPayFragmentContract$View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcreateHasMap(Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;Ljava/util/List;Ljava/util/List;)Ljava/util/HashMap;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;->createHasMap(Ljava/util/List;Ljava/util/List;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetHeadList(Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;->getHeadList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/startapps/crossx/Interfaces/contracts/ToPayFragmentContract$View;Landroid/os/Bundle;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;->totalItens:I

    const-wide/16 v0, 0x0

    .line 31
    iput-wide v0, p0, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;->totalValue:D

    const-wide/16 v0, 0x0

    .line 32
    iput-wide v0, p0, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;->membershipId:J

    .line 35
    iput-object p2, p0, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;->arguments:Landroid/os/Bundle;

    .line 36
    iput-object p1, p0, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;->viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/ToPayFragmentContract$View;

    .line 37
    invoke-virtual {p0}, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;->getArguments()V

    return-void
.end method

.method private createHasMap(Ljava/util/List;Ljava/util/List;)Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/PaymentGroupModel;",
            ">;",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/PaymentModel;",
            ">;)",
            "Ljava/util/HashMap<",
            "Lcom/startapps/crossx/model/PaymentGroupModel;",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/PaymentModel;",
            ">;>;"
        }
    .end annotation

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 150
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapps/crossx/model/PaymentGroupModel;

    .line 151
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 152
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/startapps/crossx/model/PaymentModel;

    .line 153
    iget-object v5, v4, Lcom/startapps/crossx/model/PaymentModel;->products:Ljava/util/List;

    if-eqz v5, :cond_2

    iget-object v5, v4, Lcom/startapps/crossx/model/PaymentModel;->products:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/PaymentGroupModel;->getProductType()Lcom/startapps/crossx/model/enuns/ProductTypeEnum;

    move-result-object v5

    sget-object v6, Lcom/startapps/crossx/model/enuns/ProductTypeEnum;->OTHERS:Lcom/startapps/crossx/model/enuns/ProductTypeEnum;

    if-ne v5, v6, :cond_1

    goto :goto_2

    .line 155
    :cond_1
    iget-object v5, v4, Lcom/startapps/crossx/model/PaymentModel;->products:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/startapps/crossx/model/PaymentModel;->products:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Lcom/startapps/crossx/model/PaymentGroupModel;->getProductType()Lcom/startapps/crossx/model/enuns/ProductTypeEnum;

    move-result-object v5

    iget-object v6, v4, Lcom/startapps/crossx/model/PaymentModel;->products:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/startapps/crossx/model/Product;

    invoke-virtual {v6}, Lcom/startapps/crossx/model/Product;->getBuyType()Lcom/startapps/crossx/model/enuns/ProductTypeEnum;

    move-result-object v6

    if-ne v5, v6, :cond_0

    .line 156
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 154
    :cond_2
    :goto_2
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 159
    :cond_3
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private getExtraInfo(Ljava/lang/String;)V
    .locals 4

    .line 196
    iget v0, p0, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;->totalItens:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;->totalItens:I

    .line 197
    iget-wide v0, p0, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;->totalValue:D

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;->totalValue:D

    return-void
.end method

.method private getHeadList(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/PaymentModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/PaymentGroupModel;",
            ">;"
        }
    .end annotation

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 167
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapps/crossx/model/PaymentModel;

    .line 169
    iget-object v2, v1, Lcom/startapps/crossx/model/PaymentModel;->remainingValue:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;->getExtraInfo(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/startapps/crossx/model/PaymentGroupModel;

    .line 172
    iget-object v5, v1, Lcom/startapps/crossx/model/PaymentModel;->products:Ljava/util/List;

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    iget-object v5, v1, Lcom/startapps/crossx/model/PaymentModel;->products:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    iget-object v5, v1, Lcom/startapps/crossx/model/PaymentModel;->products:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/startapps/crossx/model/Product;

    iget-object v5, v5, Lcom/startapps/crossx/model/Product;->type:Ljava/lang/String;

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lcom/startapps/crossx/model/PaymentGroupModel;->getProductType()Lcom/startapps/crossx/model/enuns/ProductTypeEnum;

    move-result-object v5

    iget-object v7, v1, Lcom/startapps/crossx/model/PaymentModel;->products:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/startapps/crossx/model/Product;

    invoke-virtual {v7}, Lcom/startapps/crossx/model/Product;->getBuyType()Lcom/startapps/crossx/model/enuns/ProductTypeEnum;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/startapps/crossx/model/enuns/ProductTypeEnum;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 174
    iget-wide v7, v3, Lcom/startapps/crossx/model/PaymentGroupModel;->groupTotalValue:D

    iget-object v2, v1, Lcom/startapps/crossx/model/PaymentModel;->remainingValue:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    add-double/2addr v7, v9

    iput-wide v7, v3, Lcom/startapps/crossx/model/PaymentGroupModel;->groupTotalValue:D

    goto :goto_1

    .line 176
    :cond_2
    iget-object v5, v1, Lcom/startapps/crossx/model/PaymentModel;->products:Ljava/util/List;

    if-eqz v5, :cond_3

    iget-object v5, v1, Lcom/startapps/crossx/model/PaymentModel;->products:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Lcom/startapps/crossx/model/PaymentGroupModel;->getProductType()Lcom/startapps/crossx/model/enuns/ProductTypeEnum;

    move-result-object v5

    sget-object v7, Lcom/startapps/crossx/model/enuns/ProductTypeEnum;->OTHERS:Lcom/startapps/crossx/model/enuns/ProductTypeEnum;

    invoke-virtual {v5, v7}, Lcom/startapps/crossx/model/enuns/ProductTypeEnum;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 178
    :cond_3
    iget-wide v7, v3, Lcom/startapps/crossx/model/PaymentGroupModel;->groupTotalValue:D

    iget-object v2, v1, Lcom/startapps/crossx/model/PaymentModel;->remainingValue:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    add-double/2addr v7, v9

    iput-wide v7, v3, Lcom/startapps/crossx/model/PaymentGroupModel;->groupTotalValue:D

    goto :goto_1

    :cond_4
    move v6, v4

    :goto_1
    if-nez v6, :cond_0

    .line 183
    iget-object v2, v1, Lcom/startapps/crossx/model/PaymentModel;->products:Ljava/util/List;

    if-eqz v2, :cond_5

    iget-object v2, v1, Lcom/startapps/crossx/model/PaymentModel;->products:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 184
    new-instance v2, Lcom/startapps/crossx/model/PaymentGroupModel;

    iget-object v3, v1, Lcom/startapps/crossx/model/PaymentModel;->products:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/startapps/crossx/model/Product;

    iget-object v3, v3, Lcom/startapps/crossx/model/Product;->name:Ljava/lang/String;

    iget-object v5, v1, Lcom/startapps/crossx/model/PaymentModel;->remainingValue:Ljava/lang/String;

    iget-object v1, v1, Lcom/startapps/crossx/model/PaymentModel;->products:Ljava/util/List;

    .line 185
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapps/crossx/model/Product;

    iget-object v1, v1, Lcom/startapps/crossx/model/Product;->type:Ljava/lang/String;

    invoke-direct {v2, v3, v5, v1}, Lcom/startapps/crossx/model/PaymentGroupModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 187
    :cond_5
    new-instance v2, Lcom/startapps/crossx/model/PaymentGroupModel;

    iget-object v1, v1, Lcom/startapps/crossx/model/PaymentModel;->remainingValue:Ljava/lang/String;

    sget-object v3, Lcom/startapps/crossx/model/enuns/ProductTypeEnum;->OTHERS:Lcom/startapps/crossx/model/enuns/ProductTypeEnum;

    iget-object v3, v3, Lcom/startapps/crossx/model/enuns/ProductTypeEnum;->type:Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v2, v4, v1, v3}, Lcom/startapps/crossx/model/PaymentGroupModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    return-object v0
.end method


# virtual methods
.method public checkDueDate(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/PaymentModel;",
            ">;)V"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;->viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/ToPayFragmentContract$View;

    invoke-interface {v0}, Lcom/startapps/crossx/Interfaces/contracts/ToPayFragmentContract$View;->hideWarningPaymentPending()V

    .line 108
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/model/PaymentModel;

    .line 109
    iget-object v0, v0, Lcom/startapps/crossx/model/PaymentModel;->dueDate:Ljava/lang/String;

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/DateUtility;->formatDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/DateUtility;->checkDueDateExpiration(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object p1, p0, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;->viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/ToPayFragmentContract$View;

    invoke-interface {p1}, Lcom/startapps/crossx/Interfaces/contracts/ToPayFragmentContract$View;->showWarningPaymentPending()V

    :cond_1
    return-void
.end method

.method public emptyData()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 118
    iput-wide v0, p0, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;->totalValue:D

    return-void
.end method

.method public getArguments()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;->arguments:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "membership_id_extra"

    .line 42
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;->membershipId:J

    :cond_0
    return-void
.end method

.method public getDetailsMembership(J)V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;->viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/ToPayFragmentContract$View;

    invoke-interface {v0}, Lcom/startapps/crossx/Interfaces/contracts/ToPayFragmentContract$View;->showLoading()V

    .line 130
    new-instance v0, Lcom/startapps/crossx/rest/clients/PaymentClient;

    invoke-direct {v0}, Lcom/startapps/crossx/rest/clients/PaymentClient;-><init>()V

    new-instance v1, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter$3;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter$3;-><init>(Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/startapps/crossx/rest/clients/PaymentClient;->getDetailsMembership(JLcom/startapps/crossx/rest/callback/SimpleCallback;)V

    return-void
.end method

.method public getMembershiId()J
    .locals 2

    .line 123
    iget-wide v0, p0, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;->membershipId:J

    return-wide v0
.end method

.method public getToPay()V
    .locals 4

    .line 97
    iget-wide v0, p0, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;->membershipId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;->getToPayList()V

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;->getToPayById()V

    :goto_0
    return-void
.end method

.method public getToPayById()V
    .locals 4

    .line 69
    iget-object v0, p0, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;->viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/ToPayFragmentContract$View;

    invoke-interface {v0}, Lcom/startapps/crossx/Interfaces/contracts/ToPayFragmentContract$View;->showLoading()V

    .line 70
    new-instance v0, Lcom/startapps/crossx/rest/clients/PaymentClient;

    invoke-direct {v0}, Lcom/startapps/crossx/rest/clients/PaymentClient;-><init>()V

    iget-wide v1, p0, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;->membershipId:J

    new-instance v3, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter$2;

    invoke-direct {v3, p0}, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter$2;-><init>(Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/startapps/crossx/rest/clients/PaymentClient;->getToPayId(JLcom/startapps/crossx/rest/callback/SimpleCallback;)V

    return-void
.end method

.method public getToPayList()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;->viewInteraction:Lcom/startapps/crossx/Interfaces/contracts/ToPayFragmentContract$View;

    invoke-interface {v0}, Lcom/startapps/crossx/Interfaces/contracts/ToPayFragmentContract$View;->showLoading()V

    .line 50
    new-instance v0, Lcom/startapps/crossx/rest/clients/PaymentClient;

    invoke-direct {v0}, Lcom/startapps/crossx/rest/clients/PaymentClient;-><init>()V

    new-instance v1, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter$1;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter$1;-><init>(Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;)V

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/rest/clients/PaymentClient;->getToPayList(Lcom/startapps/crossx/rest/callback/SimpleCallback;)V

    return-void
.end method

.method public getTotalItems()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;->totalItens:I

    return v0
.end method

.method public getTotalValue()Ljava/lang/String;
    .locals 2

    .line 87
    iget-wide v0, p0, Lcom/startapps/crossx/classes/presenter/ToPayFragmentPresenter;->totalValue:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/Utils;->formatMoneyValue(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

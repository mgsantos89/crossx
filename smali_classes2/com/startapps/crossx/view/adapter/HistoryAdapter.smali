.class public Lcom/startapps/crossx/view/adapter/HistoryAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "HistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/adapter/HistoryAdapter$InfoMembership;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private historyHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/startapps/crossx/model/HistoryHead;",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/History;",
            ">;>;"
        }
    .end annotation
.end field

.field private final historyHeads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/HistoryHead;",
            ">;"
        }
    .end annotation
.end field

.field private infoMembership:Lcom/startapps/crossx/view/adapter/HistoryAdapter$InfoMembership;


# direct methods
.method static bridge synthetic -$$Nest$fgetinfoMembership(Lcom/startapps/crossx/view/adapter/HistoryAdapter;)Lcom/startapps/crossx/view/adapter/HistoryAdapter$InfoMembership;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/adapter/HistoryAdapter;->infoMembership:Lcom/startapps/crossx/view/adapter/HistoryAdapter$InfoMembership;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;Lcom/startapps/crossx/view/adapter/HistoryAdapter$InfoMembership;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/HistoryHead;",
            ">;",
            "Ljava/util/HashMap<",
            "Lcom/startapps/crossx/model/HistoryHead;",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/History;",
            ">;>;",
            "Lcom/startapps/crossx/view/adapter/HistoryAdapter$InfoMembership;",
            ")V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/HistoryAdapter;->context:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/startapps/crossx/view/adapter/HistoryAdapter;->historyHeads:Ljava/util/List;

    .line 34
    iput-object p3, p0, Lcom/startapps/crossx/view/adapter/HistoryAdapter;->historyHashMap:Ljava/util/HashMap;

    .line 35
    iput-object p4, p0, Lcom/startapps/crossx/view/adapter/HistoryAdapter;->infoMembership:Lcom/startapps/crossx/view/adapter/HistoryAdapter$InfoMembership;

    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/HistoryAdapter;->historyHashMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/startapps/crossx/view/adapter/HistoryAdapter;->historyHeads:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getChildId(II)J
    .locals 0

    int-to-long p1, p2

    return-wide p1
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/startapps/crossx/view/adapter/HistoryAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/History;

    if-nez p4, :cond_0

    .line 100
    iget-object p2, p0, Lcom/startapps/crossx/view/adapter/HistoryAdapter;->context:Landroid/content/Context;

    const-string p3, "layout_inflater"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const p3, 0x7f0d00a0

    const/4 p4, 0x0

    .line 101
    invoke-virtual {p2, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    :cond_0
    const p2, 0x7f0a0210

    .line 103
    invoke-virtual {p4, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const p3, 0x7f0a0474

    .line 104
    invoke-virtual {p4, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const p5, 0x7f0a0466

    .line 105
    invoke-virtual {p4, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    const v0, 0x7f0a0480

    .line 106
    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a047d

    .line 107
    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0213

    .line 108
    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 111
    iget-object v3, p1, Lcom/startapps/crossx/model/History;->products:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 112
    iget-object v3, p1, Lcom/startapps/crossx/model/History;->products:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/startapps/crossx/model/Product;

    iget-object v3, v3, Lcom/startapps/crossx/model/Product;->name:Ljava/lang/String;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object p3, p1, Lcom/startapps/crossx/model/History;->paymentMethodName:Ljava/lang/String;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object p3, p1, Lcom/startapps/crossx/model/History;->paymentValue:Ljava/lang/String;

    invoke-static {p3}, Lcom/startapps/crossx/controller/utils/Utils;->formatMoneyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object p3, p1, Lcom/startapps/crossx/model/History;->products:Ljava/util/List;

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/startapps/crossx/model/Product;

    invoke-virtual {p3}, Lcom/startapps/crossx/model/Product;->getBuyType()Lcom/startapps/crossx/model/enuns/ProductTypeEnum;

    move-result-object p3

    sget-object v0, Lcom/startapps/crossx/model/enuns/ProductTypeEnum;->MEMBERSHIP:Lcom/startapps/crossx/model/enuns/ProductTypeEnum;

    const/4 v1, 0x4

    if-ne p3, v0, :cond_1

    move p3, v4

    goto :goto_0

    :cond_1
    move p3, v1

    :goto_0
    invoke-virtual {v2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    new-instance p3, Lcom/startapps/crossx/view/adapter/HistoryAdapter$1;

    invoke-direct {p3, p0, p1}, Lcom/startapps/crossx/view/adapter/HistoryAdapter$1;-><init>(Lcom/startapps/crossx/view/adapter/HistoryAdapter;Lcom/startapps/crossx/model/History;)V

    invoke-virtual {v2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object p3, p1, Lcom/startapps/crossx/model/History;->products:Ljava/util/List;

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/startapps/crossx/model/Product;

    invoke-virtual {p3}, Lcom/startapps/crossx/model/Product;->getBuyType()Lcom/startapps/crossx/model/enuns/ProductTypeEnum;

    move-result-object p3

    invoke-virtual {p3}, Lcom/startapps/crossx/model/enuns/ProductTypeEnum;->getDrawableHistoryRes()I

    move-result p3

    invoke-static {p3}, Lcom/startapps/crossx/controller/utils/Utils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    iget-object p2, p1, Lcom/startapps/crossx/model/History;->products:Ljava/util/List;

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/startapps/crossx/model/Product;

    invoke-virtual {p2}, Lcom/startapps/crossx/model/Product;->getBuyType()Lcom/startapps/crossx/model/enuns/ProductTypeEnum;

    move-result-object p2

    sget-object p3, Lcom/startapps/crossx/model/enuns/ProductTypeEnum;->MEMBERSHIP:Lcom/startapps/crossx/model/enuns/ProductTypeEnum;

    invoke-virtual {p2, p3}, Lcom/startapps/crossx/model/enuns/ProductTypeEnum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p1, Lcom/startapps/crossx/model/History;->products:Ljava/util/List;

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/startapps/crossx/model/Product;

    iget-object p2, p2, Lcom/startapps/crossx/model/Product;->description:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 127
    iget-object p1, p1, Lcom/startapps/crossx/model/History;->products:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/Product;

    iget-object p1, p1, Lcom/startapps/crossx/model/Product;->description:Ljava/lang/String;

    invoke-virtual {p5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 129
    :cond_2
    invoke-virtual {p5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_1
    return-object p4
.end method

.method public getChildrenCount(I)I
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/HistoryAdapter;->historyHeads:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/HistoryHead;

    .line 46
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/HistoryAdapter;->historyHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/HistoryAdapter;->historyHeads:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getGroupCount()I
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/HistoryAdapter;->historyHeads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 79
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/adapter/HistoryAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/HistoryHead;

    if-nez p3, :cond_0

    .line 81
    iget-object p2, p0, Lcom/startapps/crossx/view/adapter/HistoryAdapter;->context:Landroid/content/Context;

    const-string p3, "layout_inflater"

    .line 82
    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const p3, 0x7f0d009f

    const/4 p4, 0x0

    .line 83
    invoke-virtual {p2, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    :cond_0
    const p2, 0x7f0a0451

    .line 85
    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p4, 0x7f0a0468

    .line 86
    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    .line 88
    invoke-virtual {p1}, Lcom/startapps/crossx/model/HistoryHead;->getDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-wide p1, p1, Lcom/startapps/crossx/model/HistoryHead;->value:D

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/Utils;->formatMoneyValue(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p3
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

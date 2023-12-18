.class public Lcom/startapps/crossx/view/adapter/ToPayAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "ToPayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/adapter/ToPayAdapter$InfoMembership;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private infoMembership:Lcom/startapps/crossx/view/adapter/ToPayAdapter$InfoMembership;

.field private paymentData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/startapps/crossx/model/PaymentGroupModel;",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/PaymentModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private final paymentGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/PaymentGroupModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetinfoMembership(Lcom/startapps/crossx/view/adapter/ToPayAdapter;)Lcom/startapps/crossx/view/adapter/ToPayAdapter$InfoMembership;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/adapter/ToPayAdapter;->infoMembership:Lcom/startapps/crossx/view/adapter/ToPayAdapter$InfoMembership;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;Lcom/startapps/crossx/view/adapter/ToPayAdapter$InfoMembership;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/PaymentGroupModel;",
            ">;",
            "Ljava/util/HashMap<",
            "Lcom/startapps/crossx/model/PaymentGroupModel;",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/PaymentModel;",
            ">;>;",
            "Lcom/startapps/crossx/view/adapter/ToPayAdapter$InfoMembership;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/ToPayAdapter;->context:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/startapps/crossx/view/adapter/ToPayAdapter;->paymentGroups:Ljava/util/List;

    .line 33
    iput-object p3, p0, Lcom/startapps/crossx/view/adapter/ToPayAdapter;->paymentData:Ljava/util/HashMap;

    .line 34
    iput-object p4, p0, Lcom/startapps/crossx/view/adapter/ToPayAdapter;->infoMembership:Lcom/startapps/crossx/view/adapter/ToPayAdapter$InfoMembership;

    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/ToPayAdapter;->paymentData:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/startapps/crossx/view/adapter/ToPayAdapter;->paymentGroups:Ljava/util/List;

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
    .locals 4

    .line 99
    invoke-virtual {p0, p1, p2}, Lcom/startapps/crossx/view/adapter/ToPayAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/PaymentModel;

    if-nez p4, :cond_0

    .line 101
    iget-object p2, p0, Lcom/startapps/crossx/view/adapter/ToPayAdapter;->context:Landroid/content/Context;

    const-string p3, "layout_inflater"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const p3, 0x7f0d00a8

    const/4 p4, 0x0

    .line 102
    invoke-virtual {p2, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    :cond_0
    const p2, 0x7f0a045f

    .line 104
    invoke-virtual {p4, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p3, 0x7f0a0459

    .line 105
    invoke-virtual {p4, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const p5, 0x7f0a0468

    .line 106
    invoke-virtual {p4, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    const v0, 0x7f0a045a

    .line 107
    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a020e

    .line 108
    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 110
    iget-object v2, p1, Lcom/startapps/crossx/model/PaymentModel;->remainingValue:Ljava/lang/String;

    invoke-static {v2}, Lcom/startapps/crossx/controller/utils/Utils;->formatMoneyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object p5, p1, Lcom/startapps/crossx/model/PaymentModel;->products:Ljava/util/List;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz p5, :cond_2

    iget-object p5, p1, Lcom/startapps/crossx/model/PaymentModel;->products:Ljava/util/List;

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p5

    if-lez p5, :cond_2

    .line 115
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    iget-object p5, p1, Lcom/startapps/crossx/model/PaymentModel;->products:Ljava/util/List;

    invoke-interface {p5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/startapps/crossx/model/Product;

    iget-object p5, p5, Lcom/startapps/crossx/model/Product;->name:Ljava/lang/String;

    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object p2, p0, Lcom/startapps/crossx/view/adapter/ToPayAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/startapps/crossx/model/PaymentModel;->getExpirationDate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object p2, p1, Lcom/startapps/crossx/model/PaymentModel;->products:Ljava/util/List;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/startapps/crossx/model/Product;

    invoke-virtual {p2}, Lcom/startapps/crossx/model/Product;->getBuyType()Lcom/startapps/crossx/model/enuns/ProductTypeEnum;

    move-result-object p2

    sget-object p3, Lcom/startapps/crossx/model/enuns/ProductTypeEnum;->MEMBERSHIP:Lcom/startapps/crossx/model/enuns/ProductTypeEnum;

    if-ne p2, p3, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    new-instance p2, Lcom/startapps/crossx/view/adapter/ToPayAdapter$1;

    invoke-direct {p2, p0, p1}, Lcom/startapps/crossx/view/adapter/ToPayAdapter$1;-><init>(Lcom/startapps/crossx/view/adapter/ToPayAdapter;Lcom/startapps/crossx/model/PaymentModel;)V

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 129
    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    iget-object p2, p0, Lcom/startapps/crossx/view/adapter/ToPayAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/startapps/crossx/model/PaymentModel;->getExpirationDate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-object p4
.end method

.method public getChildrenCount(I)I
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/ToPayAdapter;->paymentGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/PaymentGroupModel;

    .line 45
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/ToPayAdapter;->paymentData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/ToPayAdapter;->paymentGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getGroupCount()I
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/ToPayAdapter;->paymentGroups:Ljava/util/List;

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
    .locals 2

    .line 78
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/adapter/ToPayAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/PaymentGroupModel;

    if-nez p3, :cond_0

    .line 80
    iget-object p2, p0, Lcom/startapps/crossx/view/adapter/ToPayAdapter;->context:Landroid/content/Context;

    const-string p3, "layout_inflater"

    .line 81
    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const p3, 0x7f0d00a7

    const/4 p4, 0x0

    .line 82
    invoke-virtual {p2, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    :cond_0
    const p2, 0x7f0a0474

    .line 84
    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p4, 0x7f0a0480

    .line 85
    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    const v0, 0x7f0a020d

    .line 86
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 87
    invoke-virtual {p1}, Lcom/startapps/crossx/model/PaymentGroupModel;->getProductType()Lcom/startapps/crossx/model/enuns/ProductTypeEnum;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/enuns/ProductTypeEnum;->getDrawablePaymentRes()I

    move-result v1

    invoke-static {v1}, Lcom/startapps/crossx/controller/utils/Utils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    invoke-virtual {p1}, Lcom/startapps/crossx/model/PaymentGroupModel;->getProductType()Lcom/startapps/crossx/model/enuns/ProductTypeEnum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/model/enuns/ProductTypeEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-wide p1, p1, Lcom/startapps/crossx/model/PaymentGroupModel;->groupTotalValue:D

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

.class public Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$$ViewInjector;
.super Ljava/lang/Object;
.source "DialogFragmentDataPayment$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;Ljava/lang/Object;)V
    .locals 2

    const v0, 0x7f0a0212

    const-string v1, "field \'imageViewType\'"

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->imageViewType:Landroid/widget/ImageView;

    const v0, 0x7f0a0455

    const-string v1, "field \'textViewDescription\'"

    .line 12
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->textViewDescription:Landroid/widget/TextView;

    const v0, 0x7f0a044e

    const-string v1, "field \'textViewCard\'"

    .line 14
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->textViewCard:Landroid/widget/TextView;

    const v0, 0x7f0a044c

    const-string v1, "field \'textViewBrandCardNumber\'"

    .line 16
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->textViewBrandCardNumber:Landroid/widget/TextView;

    const v0, 0x7f0a0476

    const-string v1, "field \'textViewTotalPaid\'"

    .line 18
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->textViewTotalPaid:Landroid/widget/TextView;

    const v0, 0x7f0a0477

    const-string v1, "field \'textViewTotalPaidValue\'"

    .line 20
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->textViewTotalPaidValue:Landroid/widget/TextView;

    const v0, 0x7f0a0474

    const-string v1, "field \'textViewTitle\'"

    .line 22
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 23
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->textViewTitle:Landroid/widget/TextView;

    const v0, 0x7f0a00c8

    const-string v1, "field \'buttonUp\' and method \'onClickButtonUp\'"

    .line 24
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 25
    move-object v1, v0

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p1, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->buttonUp:Landroid/widget/Button;

    .line 26
    new-instance v1, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$$ViewInjector$1;

    invoke-direct {v1, p1}, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$$ViewInjector$1;-><init>(Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00b4

    const-string v1, "field \'buttonDown\' and method \'onClickButtonDown\'"

    .line 34
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 35
    move-object v1, v0

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p1, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->buttonDown:Landroid/widget/Button;

    .line 36
    new-instance v1, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$$ViewInjector$2;

    invoke-direct {v1, p1}, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment$$ViewInjector$2;-><init>(Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0112

    const-string v1, "field \'containerDataCard\'"

    .line 44
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 45
    iput-object p0, p1, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->containerDataCard:Landroid/view/View;

    return-void
.end method

.method public static reset(Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->imageViewType:Landroid/widget/ImageView;

    .line 50
    iput-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->textViewDescription:Landroid/widget/TextView;

    .line 51
    iput-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->textViewCard:Landroid/widget/TextView;

    .line 52
    iput-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->textViewBrandCardNumber:Landroid/widget/TextView;

    .line 53
    iput-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->textViewTotalPaid:Landroid/widget/TextView;

    .line 54
    iput-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->textViewTotalPaidValue:Landroid/widget/TextView;

    .line 55
    iput-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->textViewTitle:Landroid/widget/TextView;

    .line 56
    iput-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->buttonUp:Landroid/widget/Button;

    .line 57
    iput-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->buttonDown:Landroid/widget/Button;

    .line 58
    iput-object v0, p0, Lcom/startapps/crossx/controller/utils/DialogFragmentDataPayment;->containerDataCard:Landroid/view/View;

    return-void
.end method

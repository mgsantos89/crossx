.class public Lcom/startapps/crossx/view/adapter/CreditCardAdapter$ViewHolderCreditCard$$ViewInjector;
.super Ljava/lang/Object;
.source "CreditCardAdapter$ViewHolderCreditCard$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/adapter/CreditCardAdapter$ViewHolderCreditCard;Ljava/lang/Object;)V
    .locals 2

    const v0, 0x7f0a006d

    const-string v1, "field \'background\'"

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/CreditCardAdapter$ViewHolderCreditCard;->background:Landroidx/cardview/widget/CardView;

    const v0, 0x7f0a00d3

    const-string v1, "field \'cardBrand\'"

    .line 12
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/CreditCardAdapter$ViewHolderCreditCard;->cardBrand:Landroid/widget/ImageView;

    const v0, 0x7f0a0278

    const-string v1, "field \'lastDigits\'"

    .line 14
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/CreditCardAdapter$ViewHolderCreditCard;->lastDigits:Landroid/widget/TextView;

    const v0, 0x7f0a00d7

    const-string v1, "field \'holderName\'"

    .line 16
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/CreditCardAdapter$ViewHolderCreditCard;->holderName:Landroid/widget/TextView;

    const v0, 0x7f0a00d6

    const-string v1, "field \'expirationDate\'"

    .line 18
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/CreditCardAdapter$ViewHolderCreditCard;->expirationDate:Landroid/widget/TextView;

    const v0, 0x7f0a0237

    const-string v1, "field \'itemCreditCard\'"

    .line 20
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/CreditCardAdapter$ViewHolderCreditCard;->itemCreditCard:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0098

    const-string v1, "field \'btnFavorite\'"

    .line 22
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 23
    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/CreditCardAdapter$ViewHolderCreditCard;->btnFavorite:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0099

    const-string v1, "field \'favoriteImage\'"

    .line 24
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 25
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/startapps/crossx/view/adapter/CreditCardAdapter$ViewHolderCreditCard;->favoriteImage:Landroid/widget/ImageView;

    const v0, 0x7f0a0095

    const-string v1, "field \'btnDelete\'"

    .line 26
    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object p0

    .line 27
    check-cast p0, Landroid/widget/RelativeLayout;

    iput-object p0, p1, Lcom/startapps/crossx/view/adapter/CreditCardAdapter$ViewHolderCreditCard;->btnDelete:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public static reset(Lcom/startapps/crossx/view/adapter/CreditCardAdapter$ViewHolderCreditCard;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/CreditCardAdapter$ViewHolderCreditCard;->background:Landroidx/cardview/widget/CardView;

    .line 32
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/CreditCardAdapter$ViewHolderCreditCard;->cardBrand:Landroid/widget/ImageView;

    .line 33
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/CreditCardAdapter$ViewHolderCreditCard;->lastDigits:Landroid/widget/TextView;

    .line 34
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/CreditCardAdapter$ViewHolderCreditCard;->holderName:Landroid/widget/TextView;

    .line 35
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/CreditCardAdapter$ViewHolderCreditCard;->expirationDate:Landroid/widget/TextView;

    .line 36
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/CreditCardAdapter$ViewHolderCreditCard;->itemCreditCard:Landroid/widget/LinearLayout;

    .line 37
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/CreditCardAdapter$ViewHolderCreditCard;->btnFavorite:Landroid/widget/RelativeLayout;

    .line 38
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/CreditCardAdapter$ViewHolderCreditCard;->favoriteImage:Landroid/widget/ImageView;

    .line 39
    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/CreditCardAdapter$ViewHolderCreditCard;->btnDelete:Landroid/widget/RelativeLayout;

    return-void
.end method

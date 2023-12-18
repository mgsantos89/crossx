.class public Lcom/startapps/crossx/view/adapter/CreditCardAdapter;
.super Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;
.source "CreditCardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/adapter/CreditCardAdapter$ViewHolderCreditCard;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/view/adapter/FasterArrayAdapter<",
        "Lcom/startapps/crossx/model/UserCreditCard;",
        ">;"
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field private isSelectCreditCard:Z

.field private onCreditCardListener:Lcom/startapps/crossx/Interfaces/OnCreditCardListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetisSelectCreditCard(Lcom/startapps/crossx/view/adapter/CreditCardAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/startapps/crossx/view/adapter/CreditCardAdapter;->isSelectCreditCard:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetonCreditCardListener(Lcom/startapps/crossx/view/adapter/CreditCardAdapter;)Lcom/startapps/crossx/Interfaces/OnCreditCardListener;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/adapter/CreditCardAdapter;->onCreditCardListener:Lcom/startapps/crossx/Interfaces/OnCreditCardListener;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/startapps/crossx/Interfaces/OnCreditCardListener;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/UserCreditCard;",
            ">;",
            "Lcom/startapps/crossx/Interfaces/OnCreditCardListener;",
            "Z)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 33
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/CreditCardAdapter;->context:Landroid/content/Context;

    .line 34
    iput-object p3, p0, Lcom/startapps/crossx/view/adapter/CreditCardAdapter;->onCreditCardListener:Lcom/startapps/crossx/Interfaces/OnCreditCardListener;

    .line 35
    iput-boolean p4, p0, Lcom/startapps/crossx/view/adapter/CreditCardAdapter;->isSelectCreditCard:Z

    return-void
.end method


# virtual methods
.method protected fillHolder(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
    .locals 7

    .line 50
    check-cast p1, Lcom/startapps/crossx/view/adapter/CreditCardAdapter$ViewHolderCreditCard;

    .line 51
    invoke-virtual {p0, p2}, Lcom/startapps/crossx/view/adapter/CreditCardAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/startapps/crossx/model/UserCreditCard;

    .line 53
    iget-object v0, p1, Lcom/startapps/crossx/view/adapter/CreditCardAdapter$ViewHolderCreditCard;->holderName:Landroid/widget/TextView;

    iget-object v1, p3, Lcom/startapps/crossx/model/UserCreditCard;->holderName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p1, Lcom/startapps/crossx/view/adapter/CreditCardAdapter$ViewHolderCreditCard;->lastDigits:Landroid/widget/TextView;

    iget-object v1, p3, Lcom/startapps/crossx/model/UserCreditCard;->lastDigits:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p1, Lcom/startapps/crossx/view/adapter/CreditCardAdapter$ViewHolderCreditCard;->expirationDate:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/startapps/crossx/model/UserCreditCard;->getExpirationDateString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p3, Lcom/startapps/crossx/model/UserCreditCard;->brand:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "discover"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    move v5, v2

    goto/16 :goto_0

    :sswitch_1
    const-string/jumbo v1, "visa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x7

    goto :goto_0

    :sswitch_2
    const-string v1, "aura"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x6

    goto :goto_0

    :sswitch_3
    const-string v1, "amex"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x5

    goto :goto_0

    :sswitch_4
    const-string v1, "jcb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v5, v3

    goto :goto_0

    :sswitch_5
    const-string v1, "elo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v5, 0x3

    goto :goto_0

    :sswitch_6
    const-string v1, "diners"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v5, 0x2

    goto :goto_0

    :sswitch_7
    const-string v1, "hipercard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v5, 0x1

    goto :goto_0

    :sswitch_8
    const-string v1, "mastercard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    move v5, v4

    :goto_0
    packed-switch v5, :pswitch_data_0

    const v0, 0x7f060020

    move v1, v4

    goto :goto_1

    :pswitch_0
    const v0, 0x7f060023

    const v1, 0x7f080106

    goto :goto_1

    :pswitch_1
    const v0, 0x7f06002d

    const v1, 0x7f08015e

    goto :goto_1

    :pswitch_2
    const v0, 0x7f06001f

    const v1, 0x7f0800ca

    goto :goto_1

    :pswitch_3
    const v0, 0x7f06001e

    const v1, 0x7f0800c4

    goto :goto_1

    :pswitch_4
    const v0, 0x7f060029

    const v1, 0x7f08011a

    goto :goto_1

    :pswitch_5
    const v0, 0x7f060024

    const v1, 0x7f08010c

    goto :goto_1

    :pswitch_6
    const v0, 0x7f060022

    const v1, 0x7f080105

    goto :goto_1

    :pswitch_7
    const v0, 0x7f060028

    const v1, 0x7f0800d5

    goto :goto_1

    :pswitch_8
    const v0, 0x7f06002a

    const v1, 0x7f080129

    .line 99
    :goto_1
    iget-object v5, p1, Lcom/startapps/crossx/view/adapter/CreditCardAdapter$ViewHolderCreditCard;->background:Landroidx/cardview/widget/CardView;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/adapter/CreditCardAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    if-nez v1, :cond_9

    .line 101
    iget-object v0, p1, Lcom/startapps/crossx/view/adapter/CreditCardAdapter$ViewHolderCreditCard;->cardBrand:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 103
    :cond_9
    iget-object v0, p1, Lcom/startapps/crossx/view/adapter/CreditCardAdapter$ViewHolderCreditCard;->cardBrand:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    iget-object v0, p1, Lcom/startapps/crossx/view/adapter/CreditCardAdapter$ViewHolderCreditCard;->cardBrand:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    :goto_2
    invoke-virtual {p3}, Lcom/startapps/crossx/model/UserCreditCard;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 108
    iget-object v0, p1, Lcom/startapps/crossx/view/adapter/CreditCardAdapter$ViewHolderCreditCard;->favoriteImage:Landroid/widget/ImageView;

    const v1, 0x7f080156

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 110
    :cond_a
    iget-object v0, p1, Lcom/startapps/crossx/view/adapter/CreditCardAdapter$ViewHolderCreditCard;->favoriteImage:Landroid/widget/ImageView;

    const v1, 0x7f080155

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    :goto_3
    iget-object v0, p1, Lcom/startapps/crossx/view/adapter/CreditCardAdapter$ViewHolderCreditCard;->btnFavorite:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/startapps/crossx/view/adapter/CreditCardAdapter$1;

    invoke-direct {v1, p0, p3, p2}, Lcom/startapps/crossx/view/adapter/CreditCardAdapter$1;-><init>(Lcom/startapps/crossx/view/adapter/CreditCardAdapter;Lcom/startapps/crossx/model/UserCreditCard;I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p1, Lcom/startapps/crossx/view/adapter/CreditCardAdapter$ViewHolderCreditCard;->btnDelete:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/startapps/crossx/view/adapter/CreditCardAdapter$2;

    invoke-direct {v1, p0, p3, p2}, Lcom/startapps/crossx/view/adapter/CreditCardAdapter$2;-><init>(Lcom/startapps/crossx/view/adapter/CreditCardAdapter;Lcom/startapps/crossx/model/UserCreditCard;I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-boolean v0, p0, Lcom/startapps/crossx/view/adapter/CreditCardAdapter;->isSelectCreditCard:Z

    if-eqz v0, :cond_b

    .line 133
    iget-object v0, p1, Lcom/startapps/crossx/view/adapter/CreditCardAdapter$ViewHolderCreditCard;->btnDelete:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 135
    iget-object p1, p1, Lcom/startapps/crossx/view/adapter/CreditCardAdapter$ViewHolderCreditCard;->itemCreditCard:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/startapps/crossx/view/adapter/CreditCardAdapter$3;

    invoke-direct {v0, p0, p3, p2}, Lcom/startapps/crossx/view/adapter/CreditCardAdapter$3;-><init>(Lcom/startapps/crossx/view/adapter/CreditCardAdapter;Lcom/startapps/crossx/model/UserCreditCard;I)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x79845b8e -> :sswitch_8
        -0x514f2a74 -> :sswitch_7
        -0x4f6033c3 -> :sswitch_6
        0x188a8 -> :sswitch_5
        0x19a49 -> :sswitch_4
        0x2dbddf -> :sswitch_3
        0x2ddd63 -> :sswitch_2
        0x373c41 -> :sswitch_1
        0x104877e9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getHolder(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    .line 40
    new-instance v0, Lcom/startapps/crossx/view/adapter/CreditCardAdapter$ViewHolderCreditCard;

    invoke-direct {v0, p0, p1}, Lcom/startapps/crossx/view/adapter/CreditCardAdapter$ViewHolderCreditCard;-><init>(Lcom/startapps/crossx/view/adapter/CreditCardAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method protected layoutResourceForItem()I
    .locals 1

    const v0, 0x7f0d0095

    return v0
.end method

.class public Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CardsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/adapter/CardsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field imageViewBrand:Landroid/widget/ImageView;

.field imageViewStar:Landroid/widget/ImageView;

.field radioButtonBrandSelected:Landroid/widget/RadioButton;

.field textViewBrandName:Landroid/widget/TextView;

.field textViewLastDigits:Landroid/widget/TextView;

.field textViewName:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/startapps/crossx/view/adapter/CardsAdapter;

.field viewCreditCard:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/view/adapter/CardsAdapter;Landroid/view/View;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder;->this$0:Lcom/startapps/crossx/view/adapter/CardsAdapter;

    .line 84
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a04c0

    .line 85
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder;->viewCreditCard:Landroid/view/View;

    const p1, 0x7f0a020b

    .line 86
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder;->imageViewBrand:Landroid/widget/ImageView;

    const p1, 0x7f0a044d

    .line 87
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder;->textViewBrandName:Landroid/widget/TextView;

    const p1, 0x7f0a0450

    .line 88
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder;->textViewLastDigits:Landroid/widget/TextView;

    const p1, 0x7f0a045f

    .line 89
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder;->textViewName:Landroid/widget/TextView;

    const p1, 0x7f0a0368

    .line 90
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder;->radioButtonBrandSelected:Landroid/widget/RadioButton;

    const p1, 0x7f0a020f

    .line 91
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder;->imageViewStar:Landroid/widget/ImageView;

    return-void
.end method

.method private checkDefaultCard(Lcom/startapps/crossx/model/CreditCard;)V
    .locals 1

    .line 131
    iget-boolean p1, p1, Lcom/startapps/crossx/model/CreditCard;->cardDefault:Z

    if-eqz p1, :cond_0

    .line 132
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder;->radioButtonBrandSelected:Landroid/widget/RadioButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 134
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder;->radioButtonBrandSelected:Landroid/widget/RadioButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method private checkFromCards(Lcom/startapps/crossx/model/CreditCard;)V
    .locals 4

    .line 145
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder;->this$0:Lcom/startapps/crossx/view/adapter/CardsAdapter;

    invoke-static {v0}, Lcom/startapps/crossx/view/adapter/CardsAdapter;->-$$Nest$fgetfromCards(Lcom/startapps/crossx/view/adapter/CardsAdapter;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "from_card_menu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder;->radioButtonBrandSelected:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder;->imageViewStar:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 148
    iget-boolean v0, p1, Lcom/startapps/crossx/model/CreditCard;->cardDefault:Z

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder;->imageViewStar:Landroid/widget/ImageView;

    const v3, 0x7f080157

    invoke-static {v3}, Lcom/startapps/crossx/controller/utils/Utils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder;->imageViewStar:Landroid/widget/ImageView;

    const v3, 0x7f080158

    invoke-static {v3}, Lcom/startapps/crossx/controller/utils/Utils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder;->this$0:Lcom/startapps/crossx/view/adapter/CardsAdapter;

    invoke-static {v0}, Lcom/startapps/crossx/view/adapter/CardsAdapter;->-$$Nest$fgetfromCards(Lcom/startapps/crossx/view/adapter/CardsAdapter;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "from_card_choose"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder;->imageViewStar:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder;->radioButtonBrandSelected:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 157
    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder;->checkDefaultCard(Lcom/startapps/crossx/model/CreditCard;)V

    :cond_2
    return-void
.end method

.method private upperCaseFirstLetter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 127
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public format(Lcom/startapps/crossx/model/CreditCard;)V
    .locals 2

    .line 100
    iget-object v0, p1, Lcom/startapps/crossx/model/CreditCard;->brand:Ljava/lang/String;

    iget-object v1, p0, Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder;->imageViewBrand:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/startapps/crossx/controller/utils/CardUtil;->setBrandCard(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 101
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder;->textViewBrandName:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/startapps/crossx/model/CreditCard;->brand:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder;->upperCaseFirstLetter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder;->textViewName:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/startapps/crossx/model/CreditCard;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder;->textViewLastDigits:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/startapps/crossx/model/CreditCard;->lastDigits:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder;->checkFromCards(Lcom/startapps/crossx/model/CreditCard;)V

    .line 105
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder;->radioButtonBrandSelected:Landroid/widget/RadioButton;

    new-instance v1, Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder$1;-><init>(Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder;Lcom/startapps/crossx/model/CreditCard;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder;->imageViewStar:Landroid/widget/ImageView;

    new-instance v1, Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder$2;

    invoke-direct {v1, p0, p1}, Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder$2;-><init>(Lcom/startapps/crossx/view/adapter/CardsAdapter$ViewHolder;Lcom/startapps/crossx/model/CreditCard;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.class Lcom/afollestad/materialdialogs/DefaultAdapter;
.super Landroid/widget/BaseAdapter;
.source "DefaultAdapter.java"


# instance fields
.field private final dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

.field private final itemGravity:Lcom/afollestad/materialdialogs/GravityEnum;

.field private final layout:I


# direct methods
.method public constructor <init>(Lcom/afollestad/materialdialogs/MaterialDialog;I)V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/afollestad/materialdialogs/DefaultAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 32
    iput p2, p0, Lcom/afollestad/materialdialogs/DefaultAdapter;->layout:I

    .line 33
    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object p1, p1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object p1, p0, Lcom/afollestad/materialdialogs/DefaultAdapter;->itemGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    return-void
.end method

.method private isRTL()Z
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/afollestad/materialdialogs/DefaultAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getBuilder()Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private setupGravity(Landroid/view/ViewGroup;)V
    .locals 6

    .line 110
    move-object v0, p1

    check-cast v0, Landroid/widget/LinearLayout;

    .line 111
    iget-object v1, p0, Lcom/afollestad/materialdialogs/DefaultAdapter;->itemGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/GravityEnum;->getGravityInt()I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    .line 112
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 114
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 115
    iget-object v0, p0, Lcom/afollestad/materialdialogs/DefaultAdapter;->itemGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    sget-object v1, Lcom/afollestad/materialdialogs/GravityEnum;->END:Lcom/afollestad/materialdialogs/GravityEnum;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/DefaultAdapter;->isRTL()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    .line 117
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 119
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 120
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 121
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    .line 122
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    .line 121
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 124
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 125
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/afollestad/materialdialogs/DefaultAdapter;->itemGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    sget-object v1, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/DefaultAdapter;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/CompoundButton;

    if-eqz v1, :cond_1

    .line 127
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    .line 128
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 130
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 131
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 132
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    .line 133
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    .line 132
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 135
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 136
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/afollestad/materialdialogs/DefaultAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/afollestad/materialdialogs/DefaultAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items:[Ljava/lang/CharSequence;

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/afollestad/materialdialogs/DefaultAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items:[Ljava/lang/CharSequence;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 60
    iget-object p2, p0, Lcom/afollestad/materialdialogs/DefaultAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {p2}, Lcom/afollestad/materialdialogs/MaterialDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v1, p0, Lcom/afollestad/materialdialogs/DefaultAdapter;->layout:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 62
    :cond_0
    sget p3, Lcom/afollestad/materialdialogs/R$id;->title:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 63
    sget-object v1, Lcom/afollestad/materialdialogs/DefaultAdapter$1;->$SwitchMap$com$afollestad$materialdialogs$MaterialDialog$ListType:[I

    iget-object v2, p0, Lcom/afollestad/materialdialogs/DefaultAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v2, v2, Lcom/afollestad/materialdialogs/MaterialDialog;->listType:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    invoke-virtual {v2}, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 74
    :cond_1
    sget v1, Lcom/afollestad/materialdialogs/R$id;->control:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 75
    iget-object v4, p0, Lcom/afollestad/materialdialogs/DefaultAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v4, v4, Lcom/afollestad/materialdialogs/MaterialDialog;->selectedIndicesList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 76
    iget-object v5, p0, Lcom/afollestad/materialdialogs/DefaultAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v5, v5, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget v5, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->widgetColor:I

    invoke-static {v1, v5}, Lcom/afollestad/materialdialogs/internal/MDTintHelper;->setTint(Landroid/widget/CheckBox;I)V

    .line 77
    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 66
    :cond_2
    sget v1, Lcom/afollestad/materialdialogs/R$id;->control:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 67
    iget-object v4, p0, Lcom/afollestad/materialdialogs/DefaultAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v4, v4, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget v4, v4, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->selectedIndex:I

    if-ne v4, p1, :cond_3

    move v4, v3

    goto :goto_0

    :cond_3
    move v4, v0

    .line 68
    :goto_0
    iget-object v5, p0, Lcom/afollestad/materialdialogs/DefaultAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v5, v5, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget v5, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->widgetColor:I

    invoke-static {v1, v5}, Lcom/afollestad/materialdialogs/internal/MDTintHelper;->setTint(Landroid/widget/RadioButton;I)V

    .line 69
    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 81
    :goto_1
    iget-object v1, p0, Lcom/afollestad/materialdialogs/DefaultAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items:[Ljava/lang/CharSequence;

    aget-object v1, v1, p1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v1, p0, Lcom/afollestad/materialdialogs/DefaultAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemColor:I

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    iget-object v1, p0, Lcom/afollestad/materialdialogs/DefaultAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v4, v1, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v4, v4, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->regularFont:Landroid/graphics/Typeface;

    invoke-virtual {v1, p3, v4}, Lcom/afollestad/materialdialogs/MaterialDialog;->setTypeface(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 85
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, ":"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v1, p0, Lcom/afollestad/materialdialogs/DefaultAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items:[Ljava/lang/CharSequence;

    aget-object v1, v1, p1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 86
    move-object p3, p2

    check-cast p3, Landroid/view/ViewGroup;

    invoke-direct {p0, p3}, Lcom/afollestad/materialdialogs/DefaultAdapter;->setupGravity(Landroid/view/ViewGroup;)V

    .line 88
    iget-object v1, p0, Lcom/afollestad/materialdialogs/DefaultAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemIds:[I

    if-eqz v1, :cond_5

    .line 89
    iget-object v1, p0, Lcom/afollestad/materialdialogs/DefaultAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemIds:[I

    array-length v1, v1

    if-ge p1, v1, :cond_4

    .line 90
    iget-object v1, p0, Lcom/afollestad/materialdialogs/DefaultAdapter;->dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemIds:[I

    aget p1, v1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setId(I)V

    goto :goto_2

    :cond_4
    const/4 p1, -0x1

    .line 91
    invoke-virtual {p2, p1}, Landroid/view/View;->setId(I)V

    .line 96
    :cond_5
    :goto_2
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ne p1, v2, :cond_7

    .line 98
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 99
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 100
    :cond_6
    invoke-virtual {p3, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Landroid/widget/CompoundButton;

    if-eqz p1, :cond_7

    .line 101
    invoke-virtual {p3, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    :goto_3
    return-object p2
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

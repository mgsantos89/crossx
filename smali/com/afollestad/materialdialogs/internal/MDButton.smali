.class public Lcom/afollestad/materialdialogs/internal/MDButton;
.super Landroid/widget/TextView;
.source "MDButton.java"


# instance fields
.field private mDefaultBackground:Landroid/graphics/drawable/Drawable;

.field private mStacked:Z

.field private mStackedBackground:Landroid/graphics/drawable/Drawable;

.field private mStackedEndPadding:I

.field private mStackedGravity:Lcom/afollestad/materialdialogs/GravityEnum;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->mStacked:Z

    .line 31
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/afollestad/materialdialogs/internal/MDButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->mStacked:Z

    .line 36
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/afollestad/materialdialogs/internal/MDButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->mStacked:Z

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/afollestad/materialdialogs/internal/MDButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/afollestad/materialdialogs/R$dimen;->md_dialog_frame_margin:I

    .line 47
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->mStackedEndPadding:I

    .line 48
    sget-object p1, Lcom/afollestad/materialdialogs/GravityEnum;->END:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->mStackedGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    return-void
.end method


# virtual methods
.method public setAllCapsCompat(Z)V
    .locals 0

    .line 92
    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/internal/MDButton;->setAllCaps(Z)V

    return-void
.end method

.method public setDefaultSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 85
    iput-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    .line 86
    iget-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->mStacked:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 87
    invoke-virtual {p0, p1, v0}, Lcom/afollestad/materialdialogs/internal/MDButton;->setStacked(ZZ)V

    :cond_0
    return-void
.end method

.method setStacked(ZZ)V
    .locals 3

    .line 57
    iget-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->mStacked:Z

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_5

    :cond_0
    if-eqz p1, :cond_1

    .line 59
    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->mStackedGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    invoke-virtual {p2}, Lcom/afollestad/materialdialogs/GravityEnum;->getGravityInt()I

    move-result p2

    or-int/lit8 p2, p2, 0x10

    goto :goto_0

    :cond_1
    const/16 p2, 0x11

    :goto_0
    invoke-virtual {p0, p2}, Lcom/afollestad/materialdialogs/internal/MDButton;->setGravity(I)V

    if-eqz p1, :cond_2

    .line 62
    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->mStackedGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    invoke-virtual {p2}, Lcom/afollestad/materialdialogs/GravityEnum;->getTextAlignment()I

    move-result p2

    goto :goto_1

    :cond_2
    const/4 p2, 0x4

    :goto_1
    invoke-virtual {p0, p2}, Lcom/afollestad/materialdialogs/internal/MDButton;->setTextAlignment(I)V

    if-eqz p1, :cond_3

    .line 65
    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    :goto_2
    invoke-static {p0, p2}, Lcom/afollestad/materialdialogs/util/DialogUtils;->setBackgroundCompat(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_4

    .line 67
    iget p2, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->mStackedEndPadding:I

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDButton;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->mStackedEndPadding:I

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDButton;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/afollestad/materialdialogs/internal/MDButton;->setPadding(IIII)V

    .line 70
    :cond_4
    iput-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->mStacked:Z

    :cond_5
    return-void
.end method

.method public setStackedGravity(Lcom/afollestad/materialdialogs/GravityEnum;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->mStackedGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    return-void
.end method

.method public setStackedSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 80
    iget-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/MDButton;->mStacked:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 81
    invoke-virtual {p0, p1, p1}, Lcom/afollestad/materialdialogs/internal/MDButton;->setStacked(ZZ)V

    :cond_0
    return-void
.end method

.class public Lcom/startapps/crossx/view/widget/ToggleButton;
.super Landroid/widget/ImageView;
.source "ToggleButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/widget/ToggleButton$ToggleButtonListener;
    }
.end annotation


# instance fields
.field private drawableSelected:Landroid/graphics/drawable/Drawable;

.field private drawableUnselected:Landroid/graphics/drawable/Drawable;

.field private isSelected:Z

.field private mContext:Landroid/content/Context;

.field private toggleButtonListener:Lcom/startapps/crossx/view/widget/ToggleButton$ToggleButtonListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetisSelected(Lcom/startapps/crossx/view/widget/ToggleButton;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/startapps/crossx/view/widget/ToggleButton;->isSelected:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettoggleButtonListener(Lcom/startapps/crossx/view/widget/ToggleButton;)Lcom/startapps/crossx/view/widget/ToggleButton$ToggleButtonListener;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/widget/ToggleButton;->toggleButtonListener:Lcom/startapps/crossx/view/widget/ToggleButton$ToggleButtonListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisSelected(Lcom/startapps/crossx/view/widget/ToggleButton;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/startapps/crossx/view/widget/ToggleButton;->isSelected:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput-object p1, p0, Lcom/startapps/crossx/view/widget/ToggleButton;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 39
    invoke-direct {p0, p2, p1}, Lcom/startapps/crossx/view/widget/ToggleButton;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    iput-object p1, p0, Lcom/startapps/crossx/view/widget/ToggleButton;->mContext:Landroid/content/Context;

    .line 46
    invoke-direct {p0, p2, p3}, Lcom/startapps/crossx/view/widget/ToggleButton;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/ToggleButton;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/startapps/crossx/R$styleable;->ToggleButton:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 53
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/startapps/crossx/view/widget/ToggleButton;->drawableSelected:Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x1

    .line 54
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/view/widget/ToggleButton;->drawableUnselected:Landroid/graphics/drawable/Drawable;

    .line 56
    new-instance p1, Lcom/startapps/crossx/view/widget/ToggleButton$1;

    invoke-direct {p1, p0}, Lcom/startapps/crossx/view/widget/ToggleButton$1;-><init>(Lcom/startapps/crossx/view/widget/ToggleButton;)V

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public setSelected(Z)V
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/startapps/crossx/view/widget/ToggleButton;->isSelected:Z

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lcom/startapps/crossx/view/widget/ToggleButton;->drawableSelected:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/view/widget/ToggleButton;->drawableUnselected:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/widget/ToggleButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setToggleButtonListener(Lcom/startapps/crossx/view/widget/ToggleButton$ToggleButtonListener;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/startapps/crossx/view/widget/ToggleButton;->toggleButtonListener:Lcom/startapps/crossx/view/widget/ToggleButton$ToggleButtonListener;

    return-void
.end method

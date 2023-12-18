.class public Lcom/getbase/floatingactionbutton/FloatingActionsMenu;
.super Landroid/view/ViewGroup;
.source "FloatingActionsMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;,
        Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;,
        Lcom/getbase/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;,
        Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field private static final COLLAPSED_PLUS_ROTATION:F = 0.0f

.field private static final EXPANDED_PLUS_ROTATION:F = 135.0f

.field public static final EXPAND_DOWN:I = 0x1

.field public static final EXPAND_LEFT:I = 0x2

.field public static final EXPAND_RIGHT:I = 0x3

.field public static final EXPAND_UP:I = 0x0

.field public static final LABELS_ON_LEFT_SIDE:I = 0x0

.field public static final LABELS_ON_RIGHT_SIDE:I = 0x1

.field private static sAlphaExpandInterpolator:Landroid/view/animation/Interpolator;

.field private static sCollapseInterpolator:Landroid/view/animation/Interpolator;

.field private static sExpandInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

.field private mAddButtonColorNormal:I

.field private mAddButtonColorPressed:I

.field private mAddButtonPlusColor:I

.field private mAddButtonSize:I

.field private mAddButtonStrokeVisible:Z

.field private mButtonSpacing:I

.field private mButtonsCount:I

.field private mCollapseAnimation:Landroid/animation/AnimatorSet;

.field private mExpandAnimation:Landroid/animation/AnimatorSet;

.field private mExpandDirection:I

.field private mExpanded:Z

.field private mLabelsMargin:I

.field private mLabelsPosition:I

.field private mLabelsStyle:I

.field private mLabelsVerticalOffset:I

.field private mListener:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;

.field private mMaxButtonHeight:I

.field private mMaxButtonWidth:I

.field private mRotatingDrawable:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;

.field private mTouchDelegateGroup:Lcom/getbase/floatingactionbutton/TouchDelegateGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 422
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    sput-object v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->sExpandInterpolator:Landroid/view/animation/Interpolator;

    .line 423
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->sCollapseInterpolator:Landroid/view/animation/Interpolator;

    .line 424
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->sAlphaExpandInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandAnimation:Landroid/animation/AnimatorSet;

    .line 52
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v0, 0x12c

    invoke-virtual {p3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object p3

    iput-object p3, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandAnimation:Landroid/animation/AnimatorSet;

    .line 52
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object p3

    iput-object p3, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButtonPlusColor:I

    return p0
.end method

.method static synthetic access$100(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButtonColorNormal:I

    return p0
.end method

.method static synthetic access$1000()Landroid/view/animation/Interpolator;
    .locals 1

    .line 25
    sget-object v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->sAlphaExpandInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1100()Landroid/view/animation/Interpolator;
    .locals 1

    .line 25
    sget-object v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->sCollapseInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    return p0
.end method

.method static synthetic access$200(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButtonColorPressed:I

    return p0
.end method

.method static synthetic access$300(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButtonStrokeVisible:Z

    return p0
.end method

.method static synthetic access$402(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;Lcom/getbase/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;)Lcom/getbase/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mRotatingDrawable:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;

    return-object p1
.end method

.method static synthetic access$500(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$600(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$900()Landroid/view/animation/Interpolator;
    .locals 1

    .line 25
    sget-object v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->sExpandInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private adjustForOvershoot(I)I
    .locals 0

    mul-int/lit8 p1, p1, 0xc

    .line 269
    div-int/lit8 p1, p1, 0xa

    return p1
.end method

.method private createAddButton(Landroid/content/Context;)V
    .locals 1

    .line 146
    new-instance v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$1;

    invoke-direct {v0, p0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$1;-><init>(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    .line 176
    sget p1, Lcom/getbase/floatingactionbutton/R$id;->fab_expand_menu_button:I

    invoke-virtual {v0, p1}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->setId(I)V

    .line 177
    iget-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButtonSize:I

    invoke-virtual {p1, v0}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->setSize(I)V

    .line 178
    iget-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    new-instance v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$2;

    invoke-direct {v0, p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$2;-><init>(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;)V

    invoke-virtual {p1, v0}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-super {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private createLabels()V
    .locals 6

    .line 492
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsStyle:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    .line 494
    :goto_0
    iget v2, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    if-ge v1, v2, :cond_2

    .line 495
    invoke-virtual {p0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/getbase/floatingactionbutton/FloatingActionButton;

    .line 496
    invoke-virtual {v2}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 498
    iget-object v4, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    if-eq v2, v4, :cond_1

    if-eqz v3, :cond_1

    sget v3, Lcom/getbase/floatingactionbutton/R$id;->fab_label:I

    .line 499
    invoke-virtual {v2, v3}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 501
    :cond_0
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 502
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsStyle:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 503
    invoke-virtual {v2}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    invoke-virtual {p0, v3}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->addView(Landroid/view/View;)V

    .line 506
    sget v4, Lcom/getbase/floatingactionbutton/R$id;->fab_label:I

    invoke-virtual {v2, v4, v3}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setTag(ILjava/lang/Object;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private expandsHorizontally()Z
    .locals 2

    .line 115
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private getColor(I)I
    .locals 1

    .line 204
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 85
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/getbase/floatingactionbutton/R$dimen;->fab_actions_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/getbase/floatingactionbutton/R$dimen;->fab_shadow_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/getbase/floatingactionbutton/R$dimen;->fab_shadow_offset:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    .line 86
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/getbase/floatingactionbutton/R$dimen;->fab_labels_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsMargin:I

    .line 87
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/getbase/floatingactionbutton/R$dimen;->fab_shadow_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsVerticalOffset:I

    .line 89
    new-instance v0, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;

    invoke-direct {v0, p0}, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mTouchDelegateGroup:Lcom/getbase/floatingactionbutton/TouchDelegateGroup;

    .line 90
    invoke-virtual {p0, v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 92
    sget-object v0, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionsMenu:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 93
    sget v0, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_addButtonPlusIconColor:I

    const v2, 0x106000b

    invoke-direct {p0, v2}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButtonPlusColor:I

    .line 94
    sget v0, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_addButtonColorNormal:I

    const v2, 0x1060013

    invoke-direct {p0, v2}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButtonColorNormal:I

    .line 95
    sget v0, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_addButtonColorPressed:I

    const v2, 0x1060012

    invoke-direct {p0, v2}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButtonColorPressed:I

    .line 96
    sget v0, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_addButtonSize:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButtonSize:I

    .line 97
    sget v0, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_addButtonStrokeVisible:I

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButtonStrokeVisible:Z

    .line 98
    sget v0, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_expandDirection:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    .line 99
    sget v0, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_labelStyle:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsStyle:I

    .line 100
    sget v0, Lcom/getbase/floatingactionbutton/R$styleable;->FloatingActionsMenu_fab_labelsPosition:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsPosition:I

    .line 101
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    iget p2, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsStyle:I

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->expandsHorizontally()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Action labels in horizontal expand orientation is not supported."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->createAddButton(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public addButton(Lcom/getbase/floatingactionbutton/FloatingActionButton;)V
    .locals 1

    .line 189
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->addView(Landroid/view/View;I)V

    .line 190
    iget p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    .line 192
    iget p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsStyle:I

    if-eqz p1, :cond_0

    .line 193
    invoke-direct {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->createLabels()V

    :cond_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 419
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    return p1
.end method

.method public collapse()V
    .locals 2

    .line 511
    iget-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 512
    iput-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    .line 513
    iget-object v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mTouchDelegateGroup:Lcom/getbase/floatingactionbutton/TouchDelegateGroup;

    invoke-virtual {v1, v0}, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;->setEnabled(Z)V

    .line 514
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 515
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 517
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mListener:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;

    if-eqz v0, :cond_0

    .line 518
    invoke-interface {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;->onMenuCollapsed()V

    :cond_0
    return-void
.end method

.method public expand()V
    .locals 2

    .line 532
    iget-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 533
    iput-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    .line 534
    iget-object v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mTouchDelegateGroup:Lcom/getbase/floatingactionbutton/TouchDelegateGroup;

    invoke-virtual {v1, v0}, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;->setEnabled(Z)V

    .line 535
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mCollapseAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 536
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 538
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mListener:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;

    if-eqz v0, :cond_0

    .line 539
    invoke-interface {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;->onMenuExpanded()V

    :cond_0
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 404
    new-instance v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;

    invoke-super {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;-><init>(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 409
    new-instance v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;-><init>(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 414
    new-instance v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;-><init>(Lcom/getbase/floatingactionbutton/FloatingActionsMenu;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public isExpanded()Z
    .locals 1

    .line 545
    iget-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 481
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 483
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {p0, v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->bringChildToFront(Landroid/view/View;)V

    .line 484
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    .line 486
    iget v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsStyle:I

    if-eqz v0, :cond_0

    .line 487
    invoke-direct {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->createLabels()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    .line 274
    iget v1, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    const/16 v2, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eqz v1, :cond_a

    if-eq v1, v6, :cond_a

    if-eq v1, v7, :cond_0

    const/4 v8, 0x3

    if-eq v1, v8, :cond_0

    goto/16 :goto_16

    :cond_0
    if-ne v1, v7, :cond_1

    move v1, v6

    goto :goto_0

    :cond_1
    move v1, v5

    :goto_0
    if-eqz v1, :cond_2

    sub-int v8, p4, p2

    .line 364
    iget-object v9, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v9}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v8, v9

    goto :goto_1

    :cond_2
    move v8, v5

    :goto_1
    sub-int v9, p5, p3

    .line 366
    iget v10, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mMaxButtonHeight:I

    sub-int/2addr v9, v10

    iget-object v11, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v11}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getMeasuredHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/2addr v10, v7

    add-int/2addr v9, v10

    .line 367
    iget-object v10, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v10}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v11, v8

    iget-object v12, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v12}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v9

    invoke-virtual {v10, v8, v9, v11, v12}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->layout(IIII)V

    if-eqz v1, :cond_3

    .line 369
    iget v10, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    sub-int v10, v8, v10

    goto :goto_2

    :cond_3
    iget-object v10, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    .line 371
    invoke-virtual {v10}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v8

    iget v11, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    add-int/2addr v10, v11

    .line 373
    :goto_2
    iget v11, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    sub-int/2addr v11, v6

    :goto_3
    if-ltz v11, :cond_1d

    .line 374
    invoke-virtual {v0, v11}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 376
    iget-object v13, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    if-eq v12, v13, :cond_9

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-ne v13, v2, :cond_4

    goto :goto_6

    :cond_4
    if-eqz v1, :cond_5

    .line 378
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    sub-int/2addr v10, v13

    .line 379
    :cond_5
    iget-object v13, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v13}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getMeasuredHeight()I

    move-result v13

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v13, v14

    div-int/2addr v13, v7

    add-int/2addr v13, v9

    .line 380
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v10

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v13

    invoke-virtual {v12, v10, v13, v14, v15}, Landroid/view/View;->layout(IIII)V

    sub-int v13, v8, v10

    int-to-float v13, v13

    .line 385
    iget-boolean v14, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    if-eqz v14, :cond_6

    move v14, v4

    goto :goto_4

    :cond_6
    move v14, v13

    :goto_4
    invoke-virtual {v12, v14}, Landroid/view/View;->setTranslationX(F)V

    .line 386
    iget-boolean v14, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    if-eqz v14, :cond_7

    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_7
    move v14, v4

    :goto_5
    invoke-virtual {v12, v14}, Landroid/view/View;->setAlpha(F)V

    .line 388
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;

    .line 389
    invoke-static {v14}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->access$700(Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;)Landroid/animation/ObjectAnimator;

    move-result-object v15

    new-array v3, v7, [F

    aput v4, v3, v5

    aput v13, v3, v6

    invoke-virtual {v15, v3}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 390
    invoke-static {v14}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->access$800(Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v15, v7, [F

    aput v13, v15, v5

    aput v4, v15, v6

    invoke-virtual {v3, v15}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 391
    invoke-virtual {v14, v12}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->setAnimationsTarget(Landroid/view/View;)V

    if-eqz v1, :cond_8

    .line 393
    iget v3, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    sub-int/2addr v10, v3

    goto :goto_6

    .line 395
    :cond_8
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v10, v3

    iget v3, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    add-int/2addr v10, v3

    :cond_9
    :goto_6
    add-int/lit8 v11, v11, -0x1

    goto :goto_3

    :cond_a
    if-nez v1, :cond_b

    move v1, v6

    goto :goto_7

    :cond_b
    move v1, v5

    :goto_7
    if-eqz p1, :cond_c

    .line 280
    iget-object v3, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mTouchDelegateGroup:Lcom/getbase/floatingactionbutton/TouchDelegateGroup;

    invoke-virtual {v3}, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;->clearTouchDelegates()V

    :cond_c
    if-eqz v1, :cond_d

    sub-int v3, p5, p3

    .line 283
    iget-object v8, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v8}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v3, v8

    goto :goto_8

    :cond_d
    move v3, v5

    .line 285
    :goto_8
    iget v8, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsPosition:I

    if-nez v8, :cond_e

    sub-int v8, p4, p2

    iget v9, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mMaxButtonWidth:I

    div-int/2addr v9, v7

    sub-int/2addr v8, v9

    goto :goto_9

    :cond_e
    iget v8, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mMaxButtonWidth:I

    div-int/2addr v8, v7

    .line 288
    :goto_9
    iget-object v9, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v9}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getMeasuredWidth()I

    move-result v9

    div-int/2addr v9, v7

    sub-int v9, v8, v9

    .line 289
    iget-object v10, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v10}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v11, v9

    iget-object v12, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    invoke-virtual {v12}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v3

    invoke-virtual {v10, v9, v3, v11, v12}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->layout(IIII)V

    .line 291
    iget v9, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mMaxButtonWidth:I

    div-int/2addr v9, v7

    iget v10, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsMargin:I

    add-int/2addr v9, v10

    .line 292
    iget v10, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsPosition:I

    if-nez v10, :cond_f

    sub-int v9, v8, v9

    goto :goto_a

    :cond_f
    add-int/2addr v9, v8

    :goto_a
    if-eqz v1, :cond_10

    .line 296
    iget v10, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    sub-int v10, v3, v10

    goto :goto_b

    :cond_10
    iget-object v10, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    .line 298
    invoke-virtual {v10}, Lcom/getbase/floatingactionbutton/AddFloatingActionButton;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v3

    iget v11, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    add-int/2addr v10, v11

    .line 300
    :goto_b
    iget v11, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    sub-int/2addr v11, v6

    :goto_c
    if-ltz v11, :cond_1d

    .line 301
    invoke-virtual {v0, v11}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 303
    iget-object v13, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mAddButton:Lcom/getbase/floatingactionbutton/AddFloatingActionButton;

    if-eq v12, v13, :cond_1c

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-ne v13, v2, :cond_11

    goto/16 :goto_14

    .line 305
    :cond_11
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    div-int/2addr v13, v7

    sub-int v13, v8, v13

    if-eqz v1, :cond_12

    .line 306
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v10, v14

    .line 307
    :cond_12
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v13

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v10

    invoke-virtual {v12, v13, v10, v14, v15}, Landroid/view/View;->layout(IIII)V

    sub-int v14, v3, v10

    int-to-float v14, v14

    .line 312
    iget-boolean v15, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    if-eqz v15, :cond_13

    move v15, v4

    goto :goto_d

    :cond_13
    move v15, v14

    :goto_d
    invoke-virtual {v12, v15}, Landroid/view/View;->setTranslationY(F)V

    .line 313
    iget-boolean v15, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    if-eqz v15, :cond_14

    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_e

    :cond_14
    move v15, v4

    :goto_e
    invoke-virtual {v12, v15}, Landroid/view/View;->setAlpha(F)V

    .line 315
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;

    .line 316
    invoke-static {v15}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->access$700(Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    move/from16 p1, v3

    new-array v3, v7, [F

    aput v4, v3, v5

    aput v14, v3, v6

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 317
    invoke-static {v15}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->access$800(Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v3, v7, [F

    aput v14, v3, v5

    aput v4, v3, v6

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 318
    invoke-virtual {v15, v12}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->setAnimationsTarget(Landroid/view/View;)V

    .line 320
    sget v2, Lcom/getbase/floatingactionbutton/R$id;->fab_label:I

    invoke-virtual {v12, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_1a

    .line 322
    iget v3, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsPosition:I

    if-nez v3, :cond_15

    .line 323
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v9, v3

    goto :goto_f

    .line 324
    :cond_15
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v9

    .line 326
    :goto_f
    iget v15, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsPosition:I

    if-nez v15, :cond_16

    move v6, v3

    goto :goto_10

    :cond_16
    move v6, v9

    :goto_10
    if-nez v15, :cond_17

    move v3, v9

    .line 334
    :cond_17
    iget v15, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsVerticalOffset:I

    sub-int v15, v10, v15

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    sub-int v16, v16, v17

    div-int/lit8 v16, v16, 0x2

    add-int v15, v15, v16

    .line 336
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v4, v15, v16

    invoke-virtual {v2, v6, v15, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 338
    new-instance v4, Landroid/graphics/Rect;

    .line 339
    invoke-static {v13, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget v15, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    div-int/2addr v15, v7

    sub-int v15, v10, v15

    .line 341
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    add-int v13, v13, v16

    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 342
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v10

    iget v5, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    div-int/2addr v5, v7

    add-int/2addr v13, v5

    invoke-direct {v4, v6, v15, v3, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 343
    iget-object v3, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mTouchDelegateGroup:Lcom/getbase/floatingactionbutton/TouchDelegateGroup;

    new-instance v5, Landroid/view/TouchDelegate;

    invoke-direct {v5, v4, v12}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v3, v5}, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;->addTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 345
    iget-boolean v3, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    if-eqz v3, :cond_18

    const/4 v3, 0x0

    goto :goto_11

    :cond_18
    move v3, v14

    :goto_11
    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 346
    iget-boolean v3, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    if-eqz v3, :cond_19

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_12

    :cond_19
    const/4 v3, 0x0

    :goto_12
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 348
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;

    .line 349
    invoke-static {v3}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->access$700(Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-array v5, v7, [F

    const/4 v6, 0x0

    const/4 v13, 0x0

    aput v6, v5, v13

    const/4 v15, 0x1

    aput v14, v5, v15

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 350
    invoke-static {v3}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->access$800(Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-array v5, v7, [F

    aput v14, v5, v13

    aput v6, v5, v15

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 351
    invoke-virtual {v3, v2}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->setAnimationsTarget(Landroid/view/View;)V

    goto :goto_13

    :cond_1a
    move v13, v5

    move v15, v6

    move v6, v4

    :goto_13
    if-eqz v1, :cond_1b

    .line 354
    iget v2, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    sub-int/2addr v10, v2

    goto :goto_15

    .line 356
    :cond_1b
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v10, v2

    iget v2, v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    add-int/2addr v10, v2

    goto :goto_15

    :cond_1c
    :goto_14
    move/from16 p1, v3

    move v13, v5

    move v15, v6

    move v6, v4

    :goto_15
    add-int/lit8 v11, v11, -0x1

    move/from16 v3, p1

    move v4, v6

    move v5, v13

    move v6, v15

    const/16 v2, 0x8

    goto/16 :goto_c

    :cond_1d
    :goto_16
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    .line 209
    invoke-virtual {p0, p1, p2}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->measureChildren(II)V

    const/4 p1, 0x0

    .line 214
    iput p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mMaxButtonWidth:I

    .line 215
    iput p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mMaxButtonHeight:I

    move p2, p1

    move v0, p2

    move v1, v0

    move v2, v1

    .line 218
    :goto_0
    iget v3, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge p2, v3, :cond_4

    .line 219
    invoke-virtual {p0, p2}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 221
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_0

    goto :goto_2

    .line 225
    :cond_0
    iget v7, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    if-eqz v7, :cond_2

    if-eq v7, v6, :cond_2

    if-eq v7, v5, :cond_1

    if-eq v7, v4, :cond_1

    goto :goto_1

    .line 233
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v2, v4

    .line 234
    iget v4, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mMaxButtonHeight:I

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mMaxButtonHeight:I

    goto :goto_1

    .line 228
    :cond_2
    iget v4, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mMaxButtonWidth:I

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mMaxButtonWidth:I

    .line 229
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v1, v4

    .line 238
    :goto_1
    invoke-direct {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->expandsHorizontally()Z

    move-result v4

    if-nez v4, :cond_3

    .line 239
    sget v4, Lcom/getbase/floatingactionbutton/R$id;->fab_label:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 241
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_3
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 246
    :cond_4
    invoke-direct {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->expandsHorizontally()Z

    move-result p2

    if-nez p2, :cond_6

    .line 247
    iget p2, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mMaxButtonWidth:I

    if-lez v0, :cond_5

    iget p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mLabelsMargin:I

    add-int/2addr p1, v0

    :cond_5
    add-int v2, p2, p1

    goto :goto_3

    .line 249
    :cond_6
    iget v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mMaxButtonHeight:I

    .line 252
    :goto_3
    iget p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpandDirection:I

    if-eqz p1, :cond_8

    if-eq p1, v6, :cond_8

    if-eq p1, v5, :cond_7

    if-eq p1, v4, :cond_7

    goto :goto_4

    .line 260
    :cond_7
    iget p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getChildCount()I

    move-result p2

    sub-int/2addr p2, v6

    mul-int/2addr p1, p2

    add-int/2addr v2, p1

    .line 261
    invoke-direct {p0, v2}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->adjustForOvershoot(I)I

    move-result v2

    goto :goto_4

    .line 255
    :cond_8
    iget p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonSpacing:I

    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->getChildCount()I

    move-result p2

    sub-int/2addr p2, v6

    mul-int/2addr p1, p2

    add-int/2addr v1, p1

    .line 256
    invoke-direct {p0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->adjustForOvershoot(I)I

    move-result v1

    .line 265
    :goto_4
    invoke-virtual {p0, v2, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 559
    instance-of v0, p1, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;

    if-eqz v0, :cond_2

    .line 560
    check-cast p1, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;

    .line 561
    iget-boolean v0, p1, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;->mExpanded:Z

    iput-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    .line 562
    iget-object v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mTouchDelegateGroup:Lcom/getbase/floatingactionbutton/TouchDelegateGroup;

    invoke-virtual {v1, v0}, Lcom/getbase/floatingactionbutton/TouchDelegateGroup;->setEnabled(Z)V

    .line 564
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mRotatingDrawable:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;

    if-eqz v0, :cond_1

    .line 565
    iget-boolean v1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x43070000    # 135.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$RotatingDrawable;->setRotation(F)V

    .line 568
    :cond_1
    invoke-virtual {p1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_1

    .line 570
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 550
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 551
    new-instance v1, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;

    invoke-direct {v1, v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 552
    iget-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    iput-boolean v0, v1, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$SavedState;->mExpanded:Z

    return-object v1
.end method

.method public removeButton(Lcom/getbase/floatingactionbutton/FloatingActionButton;)V
    .locals 1

    .line 198
    invoke-virtual {p1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getLabelView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->removeView(Landroid/view/View;)V

    .line 199
    invoke-virtual {p0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->removeView(Landroid/view/View;)V

    .line 200
    iget p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mButtonsCount:I

    return-void
.end method

.method public setOnFloatingActionsMenuUpdateListener(Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mListener:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$OnFloatingActionsMenuUpdateListener;

    return-void
.end method

.method public toggle()V
    .locals 1

    .line 524
    iget-boolean v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->mExpanded:Z

    if-eqz v0, :cond_0

    .line 525
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->collapse()V

    goto :goto_0

    .line 527
    :cond_0
    invoke-virtual {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->expand()V

    :goto_0
    return-void
.end method

.class public Lcom/afollestad/materialdialogs/internal/MDRootLayout;
.super Landroid/view/ViewGroup;
.source "MDRootLayout.java"


# static fields
.field private static final INDEX_NEGATIVE:I = 0x1

.field private static final INDEX_NEUTRAL:I = 0x0

.field private static final INDEX_POSITIVE:I = 0x2


# instance fields
.field private mBottomOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mButtonBarHeight:I

.field private mButtonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

.field private mButtonHorizontalEdgeMargin:I

.field private mButtonPaddingFull:I

.field private final mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

.field private mContent:Landroid/view/View;

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mDividerWidth:I

.field private mDrawBottomDivider:Z

.field private mDrawTopDivider:Z

.field private mForceStack:Z

.field private mIsStacked:Z

.field private mNoTitleNoPadding:Z

.field private mNoTitlePaddingFull:I

.field private mReducePaddingNoTitleNoButtons:Z

.field private mTitleBar:Landroid/view/View;

.field private mTopOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mUseFullPadding:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 69
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawTopDivider:Z

    .line 45
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawBottomDivider:Z

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 46
    iput-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 47
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mForceStack:Z

    .line 48
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mIsStacked:Z

    const/4 v1, 0x1

    .line 49
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mUseFullPadding:Z

    .line 57
    sget-object v1, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1, v1, v0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawTopDivider:Z

    .line 45
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawBottomDivider:Z

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 46
    iput-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 47
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mForceStack:Z

    .line 48
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mIsStacked:Z

    const/4 v1, 0x1

    .line 49
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mUseFullPadding:Z

    .line 57
    sget-object v1, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 75
    invoke-direct {p0, p1, p2, v0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawTopDivider:Z

    .line 45
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawBottomDivider:Z

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 46
    iput-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 47
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mForceStack:Z

    .line 48
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mIsStacked:Z

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mUseFullPadding:Z

    .line 57
    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 86
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p4, 0x0

    .line 44
    iput-boolean p4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawTopDivider:Z

    .line 45
    iput-boolean p4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawBottomDivider:Z

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 46
    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 47
    iput-boolean p4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mForceStack:Z

    .line 48
    iput-boolean p4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mIsStacked:Z

    const/4 p4, 0x1

    .line 49
    iput-boolean p4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mUseFullPadding:Z

    .line 57
    sget-object p4, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object p4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Landroid/webkit/WebView;)Z
    .locals 0

    .line 36
    invoke-static {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->canWebViewScroll(Landroid/webkit/WebView;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$102(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawTopDivider:Z

    return p1
.end method

.method static synthetic access$202(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawBottomDivider:Z

    return p1
.end method

.method static synthetic access$300(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/view/ViewGroup;ZZ)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->addScrollListener(Landroid/view/ViewGroup;ZZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/afollestad/materialdialogs/internal/MDRootLayout;)[Lcom/afollestad/materialdialogs/internal/MDButton;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    return-object p0
.end method

.method static synthetic access$500(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/webkit/WebView;ZZZ)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->invalidateDividersForWebView(Landroid/webkit/WebView;ZZZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/view/ViewGroup;ZZZ)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->invalidateDividersForScrollingView(Landroid/view/ViewGroup;ZZZ)V

    return-void
.end method

.method private addScrollListener(Landroid/view/ViewGroup;ZZ)V
    .locals 1

    if-nez p3, :cond_0

    .line 445
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mTopOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p3, :cond_3

    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mBottomOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-nez v0, :cond_3

    .line 447
    :cond_1
    new-instance v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout$2;-><init>(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/view/ViewGroup;ZZ)V

    if-nez p3, :cond_2

    .line 466
    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mTopOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 467
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mTopOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    goto :goto_0

    .line 469
    :cond_2
    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mBottomOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 470
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mBottomOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 472
    :goto_0
    invoke-interface {v0}, Landroid/view/ViewTreeObserver$OnScrollChangedListener;->onScrollChanged()V

    :cond_3
    return-void
.end method

.method private static canAdapterViewScroll(Landroid/widget/AdapterView;)Z
    .locals 5

    .line 540
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 544
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 545
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v4

    sub-int/2addr v4, v1

    if-ne v3, v4, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    if-eqz v0, :cond_5

    if-eqz v3, :cond_5

    .line 547
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 549
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingTop()I

    move-result v3

    if-ge v0, v3, :cond_3

    return v1

    .line 552
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 553
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v3, p0

    if-le v0, v3, :cond_4

    move v2, v1

    :cond_4
    return v2

    :cond_5
    return v1
.end method

.method public static canRecyclerViewScroll(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    .line 505
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 507
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 508
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    .line 511
    instance-of v3, v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v3, :cond_5

    .line 512
    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 513
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    return v0

    :cond_1
    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    if-eqz v1, :cond_3

    .line 523
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    if-le v1, v2, :cond_4

    :cond_3
    move v0, v3

    :cond_4
    return v0

    .line 515
    :cond_5
    new-instance p0, Lcom/afollestad/materialdialogs/MaterialDialog$NotImplementedException;

    const-string v0, "Material Dialogs currently only supports LinearLayoutManager. Please report any new layout managers."

    invoke-direct {p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$NotImplementedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_1
    return v0
.end method

.method private static canScrollViewScroll(Landroid/widget/ScrollView;)Z
    .locals 4

    .line 527
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 529
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 530
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    if-ge v2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static canWebViewScroll(Landroid/webkit/WebView;)Z
    .locals 2

    .line 535
    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getScale()F

    move-result p0

    mul-float/2addr v1, p0

    cmpg-float p0, v0, v1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static getBottomView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 568
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 571
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 572
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 573
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    if-ne v3, v4, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private static getTopView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 583
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 586
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 587
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 588
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-nez v3, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 93
    sget-object v1, Lcom/afollestad/materialdialogs/R$styleable;->MDRootLayout:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 94
    sget p3, Lcom/afollestad/materialdialogs/R$styleable;->MDRootLayout_md_reduce_padding_no_title_no_buttons:I

    const/4 v1, 0x1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mReducePaddingNoTitleNoButtons:Z

    .line 95
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    sget p2, Lcom/afollestad/materialdialogs/R$dimen;->md_notitle_vertical_padding:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mNoTitlePaddingFull:I

    .line 98
    sget p2, Lcom/afollestad/materialdialogs/R$dimen;->md_button_frame_vertical_padding:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonPaddingFull:I

    .line 100
    sget p2, Lcom/afollestad/materialdialogs/R$dimen;->md_button_padding_frame_side:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonHorizontalEdgeMargin:I

    .line 101
    sget p2, Lcom/afollestad/materialdialogs/R$dimen;->md_button_height:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonBarHeight:I

    .line 103
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDividerPaint:Landroid/graphics/Paint;

    .line 104
    sget p2, Lcom/afollestad/materialdialogs/R$dimen;->md_divider_height:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDividerWidth:I

    .line 105
    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDividerPaint:Landroid/graphics/Paint;

    sget p3, Lcom/afollestad/materialdialogs/R$attr;->md_divider_color:I

    invoke-static {p1, p3}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    invoke-virtual {p0, v2}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method private invalidateDividersForScrollingView(Landroid/view/ViewGroup;ZZZ)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 477
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_1

    .line 478
    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mTitleBar:Landroid/view/View;

    if-eqz p2, :cond_0

    .line 479
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    const/16 v2, 0x8

    if-eq p2, v2, :cond_0

    .line 481
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    add-int/2addr p2, v2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-le p2, v2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    iput-boolean p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawTopDivider:Z

    :cond_1
    if-eqz p3, :cond_3

    .line 484
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_3

    if-eqz p4, :cond_2

    .line 486
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    sub-int/2addr p3, v0

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    if-ge p2, p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawBottomDivider:Z

    :cond_3
    return-void
.end method

.method private invalidateDividersForWebView(Landroid/webkit/WebView;ZZZ)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 492
    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mTitleBar:Landroid/view/View;

    if-eqz p2, :cond_0

    .line 493
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    const/16 v2, 0x8

    if-eq p2, v2, :cond_0

    .line 495
    invoke-virtual {p1}, Landroid/webkit/WebView;->getScrollY()I

    move-result p2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getPaddingTop()I

    move-result v2

    add-int/2addr p2, v2

    if-lez p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    iput-boolean p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawTopDivider:Z

    :cond_1
    if-eqz p3, :cond_3

    if-eqz p4, :cond_2

    .line 500
    invoke-virtual {p1}, Landroid/webkit/WebView;->getScrollY()I

    move-result p2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {p1}, Landroid/webkit/WebView;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p2, p3

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContentHeight()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1}, Landroid/webkit/WebView;->getScale()F

    move-result p1

    mul-float/2addr p3, p1

    cmpg-float p1, p2, p3

    if-gez p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawBottomDivider:Z

    :cond_3
    return-void
.end method

.method private invertGravityIfNecessary()V
    .locals 3

    .line 364
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 365
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 366
    sget-object v0, Lcom/afollestad/materialdialogs/internal/MDRootLayout$3;->$SwitchMap$com$afollestad$materialdialogs$GravityEnum:[I

    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    invoke-virtual {v2}, Lcom/afollestad/materialdialogs/GravityEnum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 371
    :cond_0
    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    goto :goto_0

    .line 368
    :cond_1
    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum;->END:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    :cond_2
    :goto_0
    return-void
.end method

.method private static isVisible(Landroid/view/View;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 222
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    .line 223
    instance-of v3, p0, Lcom/afollestad/materialdialogs/internal/MDButton;

    if-eqz v3, :cond_2

    .line 224
    check-cast p0, Lcom/afollestad/materialdialogs/internal/MDButton;

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDButton;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    move v2, v0

    :cond_2
    return v2
.end method

.method private setUpDividersVisibility(Landroid/view/View;ZZ)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 387
    :cond_0
    instance-of v0, p1, Landroid/widget/ScrollView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 388
    check-cast p1, Landroid/widget/ScrollView;

    .line 389
    invoke-static {p1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->canScrollViewScroll(Landroid/widget/ScrollView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    invoke-direct {p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->addScrollListener(Landroid/view/ViewGroup;ZZ)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 393
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawTopDivider:Z

    :cond_2
    if-eqz p3, :cond_a

    .line 395
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawBottomDivider:Z

    goto :goto_0

    .line 397
    :cond_3
    instance-of v0, p1, Landroid/widget/AdapterView;

    if-eqz v0, :cond_6

    .line 398
    check-cast p1, Landroid/widget/AdapterView;

    .line 399
    invoke-static {p1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->canAdapterViewScroll(Landroid/widget/AdapterView;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 400
    invoke-direct {p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->addScrollListener(Landroid/view/ViewGroup;ZZ)V

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    .line 403
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawTopDivider:Z

    :cond_5
    if-eqz p3, :cond_a

    .line 405
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawBottomDivider:Z

    goto :goto_0

    .line 407
    :cond_6
    instance-of v0, p1, Landroid/webkit/WebView;

    if-eqz v0, :cond_7

    .line 408
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/afollestad/materialdialogs/internal/MDRootLayout$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout$1;-><init>(Lcom/afollestad/materialdialogs/internal/MDRootLayout;Landroid/view/View;ZZ)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    .line 425
    :cond_7
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_9

    .line 429
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->canRecyclerViewScroll(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result p1

    if-eqz p2, :cond_8

    .line 431
    iput-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawTopDivider:Z

    :cond_8
    if-eqz p3, :cond_a

    .line 433
    iput-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawBottomDivider:Z

    goto :goto_0

    .line 434
    :cond_9
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_a

    .line 435
    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->getTopView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 436
    invoke-direct {p0, v0, p2, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->setUpDividersVisibility(Landroid/view/View;ZZ)V

    .line 437
    invoke-static {p1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->getBottomView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-eq p1, v0, :cond_a

    const/4 p2, 0x1

    .line 439
    invoke-direct {p0, p1, v1, p2}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->setUpDividersVisibility(Landroid/view/View;ZZ)V

    :cond_a
    :goto_0
    return-void
.end method


# virtual methods
.method public noTitleNoPadding()V
    .locals 1

    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mNoTitleNoPadding:Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 230
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 232
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mContent:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 233
    iget-boolean v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawTopDivider:Z

    if-eqz v1, :cond_0

    .line 234
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    const/4 v2, 0x0

    .line 235
    iget v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDividerWidth:I

    sub-int v1, v0, v1

    int-to-float v3, v1

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDividerPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 238
    :cond_0
    iget-boolean v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDrawBottomDivider:Z

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    const/4 v2, 0x0

    int-to-float v3, v0

    .line 240
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    iget v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDividerWidth:I

    add-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDividerPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public onFinishInflate()V
    .locals 5

    .line 115
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const/4 v0, 0x0

    move v1, v0

    .line 116
    :goto_0
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 117
    invoke-virtual {p0, v1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 118
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/afollestad/materialdialogs/R$id;->titleFrame:I

    if-ne v3, v4, :cond_0

    .line 119
    iput-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mTitleBar:Landroid/view/View;

    goto :goto_1

    .line 120
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/afollestad/materialdialogs/R$id;->buttonDefaultNeutral:I

    if-ne v3, v4, :cond_1

    .line 121
    iget-object v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    check-cast v2, Lcom/afollestad/materialdialogs/internal/MDButton;

    aput-object v2, v3, v0

    goto :goto_1

    .line 122
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/afollestad/materialdialogs/R$id;->buttonDefaultNegative:I

    if-ne v3, v4, :cond_2

    .line 123
    iget-object v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    check-cast v2, Lcom/afollestad/materialdialogs/internal/MDButton;

    const/4 v4, 0x1

    aput-object v2, v3, v4

    goto :goto_1

    .line 124
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/afollestad/materialdialogs/R$id;->buttonDefaultPositive:I

    if-ne v3, v4, :cond_3

    .line 125
    iget-object v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    const/4 v4, 0x2

    check-cast v2, Lcom/afollestad/materialdialogs/internal/MDButton;

    aput-object v2, v3, v4

    goto :goto_1

    .line 127
    :cond_3
    iput-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mContent:Landroid/view/View;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    .line 247
    iget-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mTitleBar:Landroid/view/View;

    invoke-static {p1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isVisible(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 248
    iget-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mTitleBar:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    .line 249
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mTitleBar:Landroid/view/View;

    add-int/2addr p1, p3

    invoke-virtual {v0, p2, p3, p4, p1}, Landroid/view/View;->layout(IIII)V

    move p3, p1

    goto :goto_0

    .line 251
    :cond_0
    iget-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mNoTitleNoPadding:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mUseFullPadding:Z

    if-eqz p1, :cond_1

    .line 252
    iget p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mNoTitlePaddingFull:I

    add-int/2addr p3, p1

    .line 255
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mContent:Landroid/view/View;

    invoke-static {p1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isVisible(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 256
    iget-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mContent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/view/View;->layout(IIII)V

    .line 258
    :cond_2
    iget-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mIsStacked:Z

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 259
    iget p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonPaddingFull:I

    sub-int/2addr p5, p1

    .line 260
    iget-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    array-length v1, p1

    :goto_1
    if-ge v0, v1, :cond_10

    aget-object v2, p1, v0

    .line 261
    invoke-static {v2}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 262
    invoke-virtual {v2}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredHeight()I

    move-result v3

    sub-int v3, p5, v3

    invoke-virtual {v2, p2, v3, p4, p5}, Lcom/afollestad/materialdialogs/internal/MDButton;->layout(IIII)V

    .line 263
    invoke-virtual {v2}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr p5, v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 269
    :cond_4
    iget-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mUseFullPadding:Z

    if-eqz p1, :cond_5

    .line 270
    iget p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonPaddingFull:I

    sub-int/2addr p5, p1

    .line 271
    :cond_5
    iget p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonBarHeight:I

    sub-int p1, p5, p1

    .line 283
    iget v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonHorizontalEdgeMargin:I

    .line 289
    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v2

    const/4 v4, -0x1

    if-eqz v2, :cond_7

    .line 291
    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    sget-object v5, Lcom/afollestad/materialdialogs/GravityEnum;->END:Lcom/afollestad/materialdialogs/GravityEnum;

    if-ne v2, v5, :cond_6

    add-int v2, p2, v1

    .line 293
    iget-object v5, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v2

    move v6, v5

    move v5, v4

    goto :goto_2

    :cond_6
    sub-int v5, p4, v1

    .line 296
    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v5, v2

    move v6, v5

    move v5, v2

    .line 299
    :goto_2
    iget-object v7, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v7, v7, v3

    invoke-virtual {v7, v2, p1, v6, p5}, Lcom/afollestad/materialdialogs/internal/MDButton;->layout(IIII)V

    .line 300
    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_3

    :cond_7
    move v5, v4

    .line 303
    :goto_3
    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v2, v2, p3

    invoke-static {v2}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 305
    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    sget-object v6, Lcom/afollestad/materialdialogs/GravityEnum;->END:Lcom/afollestad/materialdialogs/GravityEnum;

    if-ne v2, v6, :cond_8

    add-int/2addr v1, p2

    .line 307
    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v2, v2, p3

    invoke-virtual {v2}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v1

    :goto_4
    move v6, v4

    goto :goto_5

    .line 308
    :cond_8
    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    sget-object v6, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    if-ne v2, v6, :cond_9

    sub-int v2, p4, v1

    .line 310
    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v1, v1, p3

    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v2, v1

    goto :goto_4

    .line 312
    :cond_9
    iget v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonHorizontalEdgeMargin:I

    add-int/2addr v1, p2

    .line 313
    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v2, v2, p3

    invoke-virtual {v2}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v1

    move v6, v2

    .line 316
    :goto_5
    iget-object v7, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v7, v7, p3

    invoke-virtual {v7, v1, p1, v2, p5}, Lcom/afollestad/materialdialogs/internal/MDButton;->layout(IIII)V

    goto :goto_6

    :cond_a
    move v6, v4

    .line 319
    :goto_6
    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 321
    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    sget-object v2, Lcom/afollestad/materialdialogs/GravityEnum;->END:Lcom/afollestad/materialdialogs/GravityEnum;

    if-ne v1, v2, :cond_b

    .line 322
    iget p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonHorizontalEdgeMargin:I

    sub-int/2addr p4, p2

    .line 323
    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object p2, p2, v0

    invoke-virtual {p2}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result p2

    sub-int p2, p4, p2

    goto :goto_9

    .line 324
    :cond_b
    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    sget-object v2, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    if-ne v1, v2, :cond_c

    .line 325
    iget p4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonHorizontalEdgeMargin:I

    add-int/2addr p2, p4

    .line 326
    iget-object p4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object p4, p4, v0

    invoke-virtual {p4}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p2

    goto :goto_9

    :cond_c
    if-ne v6, v4, :cond_d

    if-eq v5, v4, :cond_d

    .line 329
    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object p2, p2, v0

    invoke-virtual {p2}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result p2

    sub-int v6, v5, p2

    goto :goto_8

    :cond_d
    if-ne v5, v4, :cond_e

    if-eq v6, v4, :cond_e

    .line 331
    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object p2, p2, v0

    invoke-virtual {p2}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result p2

    goto :goto_7

    :cond_e
    if-ne v5, v4, :cond_f

    sub-int/2addr p4, p2

    .line 333
    div-int/2addr p4, v3

    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object p2, p2, v0

    invoke-virtual {p2}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result p2

    div-int/2addr p2, v3

    sub-int v6, p4, p2

    .line 334
    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object p2, p2, v0

    invoke-virtual {p2}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result p2

    :goto_7
    add-int v5, v6, p2

    :cond_f
    :goto_8
    move p4, v5

    move p2, v6

    .line 340
    :goto_9
    iget-object v1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    aget-object v0, v1, v0

    invoke-virtual {v0, p2, p1, p4, p5}, Lcom/afollestad/materialdialogs/internal/MDButton;->layout(IIII)V

    .line 344
    :cond_10
    iget-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mContent:Landroid/view/View;

    invoke-direct {p0, p1, p3, p3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->setUpDividersVisibility(Landroid/view/View;ZZ)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 11

    .line 134
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 135
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/4 v2, 0x1

    .line 137
    iput-boolean v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mUseFullPadding:Z

    .line 141
    iget-boolean v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mForceStack:Z

    const/4 v4, 0x0

    if-nez v3, :cond_3

    .line 143
    iget-object v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    array-length v5, v3

    move v6, v4

    move v7, v6

    move v8, v7

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v9, v3, v6

    if-eqz v9, :cond_0

    .line 144
    invoke-static {v9}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 145
    invoke-virtual {v9, v4, v4}, Lcom/afollestad/materialdialogs/internal/MDButton;->setStacked(ZZ)V

    .line 146
    invoke-virtual {p0, v9, p1, p2}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->measureChild(Landroid/view/View;II)V

    .line 147
    invoke-virtual {v9}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v7, v8

    move v8, v2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 152
    :cond_1
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/afollestad/materialdialogs/R$dimen;->md_neutral_button_margin:I

    .line 153
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v0, v3

    if-le v7, v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_1

    :cond_3
    move v3, v2

    move v8, v4

    .line 161
    :goto_1
    iput-boolean v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mIsStacked:Z

    if-eqz v3, :cond_5

    .line 163
    iget-object v3, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    array-length v5, v3

    move v6, v4

    move v7, v6

    :goto_2
    if-ge v6, v5, :cond_6

    aget-object v9, v3, v6

    if-eqz v9, :cond_4

    .line 164
    invoke-static {v9}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 165
    invoke-virtual {v9, v2, v4}, Lcom/afollestad/materialdialogs/internal/MDButton;->setStacked(ZZ)V

    .line 166
    invoke-virtual {p0, v9, p1, p2}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->measureChild(Landroid/view/View;II)V

    .line 167
    invoke-virtual {v9}, Lcom/afollestad/materialdialogs/internal/MDButton;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    move v8, v2

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    move v7, v4

    :cond_6
    if-eqz v8, :cond_8

    .line 177
    iget-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mIsStacked:Z

    if-eqz p1, :cond_7

    sub-int p1, v1, v7

    .line 179
    iget p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonPaddingFull:I

    mul-int/lit8 v3, p2, 0x2

    add-int/2addr v3, v4

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v4

    goto :goto_4

    .line 182
    :cond_7
    iget p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonBarHeight:I

    sub-int p1, v1, p1

    .line 183
    iget p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonPaddingFull:I

    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 v3, p2, 0x0

    goto :goto_3

    .line 188
    :cond_8
    iget p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonPaddingFull:I

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 v3, p1, 0x0

    move p1, v1

    :goto_3
    move p2, v4

    .line 191
    :goto_4
    iget-object v5, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mTitleBar:Landroid/view/View;

    invoke-static {v5}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v5, :cond_9

    .line 192
    iget-object v5, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mTitleBar:Landroid/view/View;

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v5, v7, v4}, Landroid/view/View;->measure(II)V

    .line 194
    iget-object v5, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mTitleBar:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr p1, v5

    goto :goto_5

    .line 195
    :cond_9
    iget-boolean v5, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mNoTitleNoPadding:Z

    if-nez v5, :cond_a

    .line 196
    iget v5, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mNoTitlePaddingFull:I

    add-int/2addr v3, v5

    .line 199
    :cond_a
    :goto_5
    iget-object v5, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mContent:Landroid/view/View;

    invoke-static {v5}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 200
    iget-object v5, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mContent:Landroid/view/View;

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    sub-int v7, p1, p2

    const/high16 v9, -0x80000000

    .line 201
    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 200
    invoke-virtual {v5, v6, v7}, Landroid/view/View;->measure(II)V

    .line 203
    iget-object v5, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mContent:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int v6, p1, v3

    if-gt v5, v6, :cond_d

    .line 204
    iget-boolean v5, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mReducePaddingNoTitleNoButtons:Z

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mTitleBar:Landroid/view/View;

    invoke-static {v5}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->isVisible(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_c

    if-eqz v8, :cond_b

    goto :goto_6

    .line 208
    :cond_b
    iput-boolean v4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mUseFullPadding:Z

    .line 209
    iget-object v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p2

    sub-int v4, p1, v2

    goto :goto_7

    .line 205
    :cond_c
    :goto_6
    iput-boolean v2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mUseFullPadding:Z

    .line 206
    iget-object p2, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mContent:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p2, v3

    sub-int v4, p1, p2

    goto :goto_7

    .line 212
    :cond_d
    iput-boolean v4, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mUseFullPadding:Z

    goto :goto_7

    :cond_e
    move v4, p1

    :goto_7
    sub-int/2addr v1, v4

    .line 218
    invoke-virtual {p0, v0, v1}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public setButtonGravity(Lcom/afollestad/materialdialogs/GravityEnum;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtonGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 359
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->invertGravityIfNecessary()V

    return-void
.end method

.method public setButtonStackedGravity(Lcom/afollestad/materialdialogs/GravityEnum;)V
    .locals 4

    .line 378
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mButtons:[Lcom/afollestad/materialdialogs/internal/MDButton;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 380
    invoke-virtual {v3, p1}, Lcom/afollestad/materialdialogs/internal/MDButton;->setStackedGravity(Lcom/afollestad/materialdialogs/GravityEnum;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setDividerColor(I)V
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 354
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->invalidate()V

    return-void
.end method

.method public setForceStack(Z)V
    .locals 0

    .line 348
    iput-boolean p1, p0, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->mForceStack:Z

    .line 349
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->invalidate()V

    return-void
.end method

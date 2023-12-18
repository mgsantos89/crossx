.class public Lcom/startapps/crossx/view/widget/listview/EditingListView;
.super Landroid/widget/ListView;
.source "EditingListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/widget/listview/EditingListView$PinnedSectionedHeaderAdapter;,
        Lcom/startapps/crossx/view/widget/listview/EditingListView$OnEditingListViewListener;,
        Lcom/startapps/crossx/view/widget/listview/EditingListView$OnItemClickListener;
    }
.end annotation


# static fields
.field private static final MOVE_DURATION:I = 0x96


# instance fields
.field public exHeaderRightPadding:I

.field private mAdapter:Lcom/startapps/crossx/view/widget/listview/EditingListView$PinnedSectionedHeaderAdapter;

.field private mCurrentHeader:Landroid/view/View;

.field private mCurrentHeaderViewType:I

.field private mCurrentSection:I

.field private mForwardingTouchListener:Landroid/view/View$OnTouchListener;

.field private mHeaderOffset:F

.field mItemIdTopMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLastUpEventY:F

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mShouldPin:Z

.field private mWidthMode:I

.field private onEditingListViewListener:Lcom/startapps/crossx/view/widget/listview/EditingListView$OnEditingListViewListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetonEditingListViewListener(Lcom/startapps/crossx/view/widget/listview/EditingListView;)Lcom/startapps/crossx/view/widget/listview/EditingListView$OnEditingListViewListener;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->onEditingListViewListener:Lcom/startapps/crossx/view/widget/listview/EditingListView$OnEditingListViewListener;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 62
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mForwardingTouchListener:Landroid/view/View$OnTouchListener;

    const/high16 p1, -0x40800000    # -1.0f

    .line 47
    iput p1, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mLastUpEventY:F

    const/4 p1, 0x0

    .line 49
    iput p1, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mCurrentHeaderViewType:I

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mShouldPin:Z

    .line 52
    iput p1, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mCurrentSection:I

    .line 54
    iput p1, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->exHeaderRightPadding:I

    .line 58
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mItemIdTopMap:Ljava/util/HashMap;

    .line 64
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 65
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mForwardingTouchListener:Landroid/view/View$OnTouchListener;

    const/high16 p1, -0x40800000    # -1.0f

    .line 47
    iput p1, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mLastUpEventY:F

    const/4 p1, 0x0

    .line 49
    iput p1, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mCurrentHeaderViewType:I

    const/4 p2, 0x1

    .line 51
    iput-boolean p2, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mShouldPin:Z

    .line 52
    iput p1, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mCurrentSection:I

    .line 54
    iput p1, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->exHeaderRightPadding:I

    .line 58
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mItemIdTopMap:Ljava/util/HashMap;

    .line 71
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 72
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mForwardingTouchListener:Landroid/view/View$OnTouchListener;

    const/high16 p1, -0x40800000    # -1.0f

    .line 47
    iput p1, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mLastUpEventY:F

    const/4 p1, 0x0

    .line 49
    iput p1, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mCurrentHeaderViewType:I

    const/4 p2, 0x1

    .line 51
    iput-boolean p2, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mShouldPin:Z

    .line 52
    iput p1, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mCurrentSection:I

    .line 54
    iput p1, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->exHeaderRightPadding:I

    .line 58
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mItemIdTopMap:Ljava/util/HashMap;

    .line 78
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 79
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private animateRemoval(Landroid/view/View;)V
    .locals 6

    .line 309
    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/EditingListView;->getFirstVisiblePosition()I

    move-result v0

    const/4 v1, 0x0

    .line 310
    :goto_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/EditingListView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 311
    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/widget/listview/EditingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eq v2, p1, :cond_0

    add-int v3, v0, v1

    .line 314
    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/EditingListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    .line 315
    iget-object v5, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mItemIdTopMap:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 319
    :cond_1
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/widget/listview/EditingListView;->getPositionForView(Landroid/view/View;)I

    move-result p1

    .line 320
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->onEditingListViewListener:Lcom/startapps/crossx/view/widget/listview/EditingListView$OnEditingListViewListener;

    invoke-interface {v0, p1}, Lcom/startapps/crossx/view/widget/listview/EditingListView$OnEditingListViewListener;->onCommitEditingStyle(I)V

    .line 322
    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/EditingListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 323
    new-instance v0, Lcom/startapps/crossx/view/widget/listview/EditingListView$1;

    invoke-direct {v0, p0, p1}, Lcom/startapps/crossx/view/widget/listview/EditingListView$1;-><init>(Lcom/startapps/crossx/view/widget/listview/EditingListView;Landroid/view/ViewTreeObserver;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private ensurePinnedHeaderLayout(Landroid/view/View;Z)V
    .locals 3

    .line 182
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_2

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/EditingListView;->getMeasuredWidth()I

    move-result p2

    iget v0, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mWidthMode:I

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 186
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 187
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_1

    .line 188
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    .line 190
    :cond_1
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 192
    :goto_0
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    .line 193
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/view/View;->layout(IIII)V

    :cond_2
    return-void
.end method

.method private getSectionHeaderView(ILandroid/view/View;)Landroid/view/View;
    .locals 3

    .line 159
    iget v0, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mCurrentSection:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 161
    :goto_1
    iget-object v2, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mAdapter:Lcom/startapps/crossx/view/widget/listview/EditingListView$PinnedSectionedHeaderAdapter;

    invoke-interface {v2, p1, p2, p0}, Lcom/startapps/crossx/view/widget/listview/EditingListView$PinnedSectionedHeaderAdapter;->getSectionHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    if-eqz v0, :cond_2

    .line 164
    invoke-direct {p0, p2, v1}, Lcom/startapps/crossx/view/widget/listview/EditingListView;->ensurePinnedHeaderLayout(Landroid/view/View;Z)V

    .line 165
    iput p1, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mCurrentSection:I

    :cond_2
    return-object p2
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 199
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 200
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mAdapter:Lcom/startapps/crossx/view/widget/listview/EditingListView$PinnedSectionedHeaderAdapter;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mShouldPin:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mCurrentHeader:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    const/4 v1, 0x0

    .line 204
    iget v2, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mHeaderOffset:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 205
    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/EditingListView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mCurrentHeader:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 206
    iget-object v1, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mCurrentHeader:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 207
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 246
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 248
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iput p1, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mWidthMode:I

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 7

    .line 99
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mAdapter:Lcom/startapps/crossx/view/widget/listview/EditingListView$PinnedSectionedHeaderAdapter;

    if-nez v0, :cond_0

    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 103
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 106
    :cond_1
    iget-object p1, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mAdapter:Lcom/startapps/crossx/view/widget/listview/EditingListView$PinnedSectionedHeaderAdapter;

    const/4 p4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    invoke-interface {p1}, Lcom/startapps/crossx/view/widget/listview/EditingListView$PinnedSectionedHeaderAdapter;->getCount()I

    move-result p1

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mShouldPin:Z

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/EditingListView;->getHeaderViewsCount()I

    move-result p1

    if-ge p2, p1, :cond_2

    goto/16 :goto_3

    .line 118
    :cond_2
    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/EditingListView;->getHeaderViewsCount()I

    move-result p1

    sub-int/2addr p2, p1

    .line 120
    iget-object p1, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mAdapter:Lcom/startapps/crossx/view/widget/listview/EditingListView$PinnedSectionedHeaderAdapter;

    invoke-interface {p1, p2}, Lcom/startapps/crossx/view/widget/listview/EditingListView$PinnedSectionedHeaderAdapter;->getSectionForPosition(I)I

    move-result p1

    .line 121
    iget-object v2, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mAdapter:Lcom/startapps/crossx/view/widget/listview/EditingListView$PinnedSectionedHeaderAdapter;

    invoke-interface {v2, p1}, Lcom/startapps/crossx/view/widget/listview/EditingListView$PinnedSectionedHeaderAdapter;->getSectionHeaderViewType(I)I

    move-result v2

    .line 122
    iget v3, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mCurrentHeaderViewType:I

    if-eq v3, v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object p4, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mCurrentHeader:Landroid/view/View;

    :goto_0
    invoke-direct {p0, p1, p4}, Lcom/startapps/crossx/view/widget/listview/EditingListView;->getSectionHeaderView(ILandroid/view/View;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mCurrentHeader:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/EditingListView;->getPaddingLeft()I

    move-result p4

    if-eq p1, p4, :cond_4

    .line 124
    iget-object p1, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mCurrentHeader:Landroid/view/View;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/EditingListView;->getPaddingLeft()I

    move-result p4

    iget-object v3, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mCurrentHeader:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/EditingListView;->getPaddingRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/EditingListView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    iget v6, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->exHeaderRightPadding:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v4, v5

    invoke-virtual {p1, p4, v3, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 126
    :cond_4
    iget-object p1, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mCurrentHeader:Landroid/view/View;

    invoke-direct {p0, p1, v1}, Lcom/startapps/crossx/view/widget/listview/EditingListView;->ensurePinnedHeaderLayout(Landroid/view/View;Z)V

    .line 127
    iput v2, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mCurrentHeaderViewType:I

    .line 129
    iput v0, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mHeaderOffset:F

    move p1, p2

    :goto_1
    add-int p4, p2, p3

    if-ge p1, p4, :cond_7

    .line 132
    iget-object p4, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mAdapter:Lcom/startapps/crossx/view/widget/listview/EditingListView$PinnedSectionedHeaderAdapter;

    invoke-interface {p4, p1}, Lcom/startapps/crossx/view/widget/listview/EditingListView$PinnedSectionedHeaderAdapter;->isSectionHeader(I)Z

    move-result p4

    if-eqz p4, :cond_6

    sub-int p4, p1, p2

    .line 133
    invoke-virtual {p0, p4}, Lcom/startapps/crossx/view/widget/listview/EditingListView;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 134
    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    .line 135
    iget-object v3, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mCurrentHeader:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    .line 136
    invoke-virtual {p4, v1}, Landroid/view/View;->setVisibility(I)V

    cmpl-float v3, v3, v2

    if-ltz v3, :cond_5

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_5

    .line 138
    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p4

    int-to-float p4, p4

    sub-float/2addr v2, p4

    iput v2, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mHeaderOffset:F

    goto :goto_2

    :cond_5
    cmpg-float v2, v2, v0

    if-gtz v2, :cond_6

    const/4 v2, 0x4

    .line 140
    invoke-virtual {p4, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 145
    :cond_7
    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/EditingListView;->invalidate()V

    return-void

    .line 107
    :cond_8
    :goto_3
    iput-object p4, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mCurrentHeader:Landroid/view/View;

    .line 108
    iput v0, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mHeaderOffset:F

    move p1, p2

    :goto_4
    add-int p4, p2, p3

    if-ge p1, p4, :cond_a

    .line 110
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/widget/listview/EditingListView;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_9

    .line 112
    invoke-virtual {p4, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_a
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mAdapter:Lcom/startapps/crossx/view/widget/listview/EditingListView$PinnedSectionedHeaderAdapter;

    if-nez v0, :cond_0

    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 154
    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 172
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    .line 173
    iget-object p1, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mAdapter:Lcom/startapps/crossx/view/widget/listview/EditingListView$PinnedSectionedHeaderAdapter;

    if-nez p1, :cond_0

    return-void

    .line 176
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mCurrentHeader:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    .line 177
    invoke-direct {p0, p1, p2}, Lcom/startapps/crossx/view/widget/listview/EditingListView;->ensurePinnedHeaderLayout(Landroid/view/View;Z)V

    :cond_1
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mForwardingTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_0

    .line 228
    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 231
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mCurrentHeader:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mCurrentHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    .line 232
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 233
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mLastUpEventY:F

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mAdapter:Lcom/startapps/crossx/view/widget/listview/EditingListView$PinnedSectionedHeaderAdapter;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mLastUpEventY:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mCurrentHeader:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 213
    iget-object p1, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mCurrentHeader:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    const/high16 p1, -0x40800000    # -1.0f

    .line 214
    iput p1, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mLastUpEventY:F

    const/4 p1, 0x1

    return p1

    .line 217
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 22
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/widget/listview/EditingListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mCurrentHeader:Landroid/view/View;

    .line 89
    instance-of v1, p1, Lcom/startapps/crossx/view/widget/listview/EditingListView$PinnedSectionedHeaderAdapter;

    if-eqz v1, :cond_0

    .line 90
    move-object v0, p1

    check-cast v0, Lcom/startapps/crossx/view/widget/listview/EditingListView$PinnedSectionedHeaderAdapter;

    iput-object v0, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mAdapter:Lcom/startapps/crossx/view/widget/listview/EditingListView$PinnedSectionedHeaderAdapter;

    goto :goto_0

    .line 92
    :cond_0
    iput-object v0, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mAdapter:Lcom/startapps/crossx/view/widget/listview/EditingListView$PinnedSectionedHeaderAdapter;

    .line 94
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setEditing(Z)V
    .locals 1

    .line 287
    iget-object p1, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->onEditingListViewListener:Lcom/startapps/crossx/view/widget/listview/EditingListView$OnEditingListViewListener;

    if-eqz p1, :cond_0

    .line 291
    invoke-interface {p1}, Lcom/startapps/crossx/view/widget/listview/EditingListView$OnEditingListViewListener;->onRemoveCellAtIndex()I

    move-result p1

    .line 292
    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/EditingListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/widget/listview/EditingListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/widget/listview/EditingListView;->animateRemoval(Landroid/view/View;)V

    return-void

    .line 288
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "OnListViewRemoveCellListener not implemented"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnEditingListViewListener(Lcom/startapps/crossx/view/widget/listview/EditingListView$OnEditingListViewListener;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->onEditingListViewListener:Lcom/startapps/crossx/view/widget/listview/EditingListView$OnEditingListViewListener;

    return-void
.end method

.method public setOnItemClickListener(Lcom/startapps/crossx/view/widget/listview/EditingListView$OnItemClickListener;)V
    .locals 0

    .line 252
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mForwardingTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setPinHeaders(Z)V
    .locals 0

    .line 83
    iput-boolean p1, p0, Lcom/startapps/crossx/view/widget/listview/EditingListView;->mShouldPin:Z

    return-void
.end method

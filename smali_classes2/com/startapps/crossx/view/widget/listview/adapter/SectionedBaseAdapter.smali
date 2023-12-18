.class public abstract Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "SectionedBaseAdapter.java"

# interfaces
.implements Lcom/startapps/crossx/view/widget/listview/EditingListView$PinnedSectionedHeaderAdapter;


# instance fields
.field private mCount:I

.field private mSectionCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSectionCount:I

.field private mSectionCountCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSectionPositionCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 44
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->mSectionCache:Landroid/util/SparseArray;

    .line 45
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->mSectionPositionCache:Landroid/util/SparseArray;

    .line 46
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->mSectionCountCache:Landroid/util/SparseArray;

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->mCount:I

    .line 48
    iput v0, p0, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->mSectionCount:I

    return-void
.end method

.method private internalGetCountForSection(I)I
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->mSectionCountCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 214
    :cond_0
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->getCountForSection(I)I

    move-result v0

    .line 215
    iget-object v1, p0, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->mSectionCountCache:Landroid/util/SparseArray;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return v0
.end method

.method private internalGetSectionCount()I
    .locals 1

    .line 220
    iget v0, p0, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->mSectionCount:I

    if-ltz v0, :cond_0

    return v0

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->getSectionCount()I

    move-result v0

    iput v0, p0, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->mSectionCount:I

    return v0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getCount()I
    .locals 3

    .line 83
    iget v0, p0, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->mCount:I

    if-ltz v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 87
    :goto_0
    invoke-direct {p0}, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->internalGetSectionCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 88
    invoke-direct {p0, v0}, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->internalGetCountForSection(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_1
    iput v1, p0, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->mCount:I

    return v1
.end method

.method public abstract getCountForSection(I)I
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->getSectionForPosition(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->getPositionInSectionForPosition(I)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->getItem(II)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract getItem(II)Ljava/lang/Object;
.end method

.method public final getItemId(I)J
    .locals 2

    .line 102
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->getSectionForPosition(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->getPositionInSectionForPosition(I)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->getItemId(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract getItemId(II)J
.end method

.method public abstract getItemView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public final getItemViewType(I)I
    .locals 1

    .line 115
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->isSectionHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->getItemViewTypeCount()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->getSectionForPosition(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->getSectionHeaderViewType(I)I

    move-result p1

    add-int/2addr v0, p1

    return v0

    .line 118
    :cond_0
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->getSectionForPosition(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->getPositionInSectionForPosition(I)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->getItemViewType(II)I

    move-result p1

    return p1
.end method

.method public getItemViewType(II)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getItemViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getPositionInSectionForPosition(I)I
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_0

    move p1, v0

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->mSectionPositionCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 152
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 155
    :goto_0
    invoke-direct {p0}, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->internalGetSectionCount()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 156
    invoke-direct {p0, v2}, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->internalGetCountForSection(I)I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr v4, v0

    if-lt p1, v3, :cond_2

    if-ge p1, v4, :cond_2

    sub-int v1, p1, v3

    sub-int/2addr v1, v0

    .line 160
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->mSectionPositionCache:Landroid/util/SparseArray;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_0

    :cond_3
    return v1
.end method

.method public abstract getSectionCount()I
.end method

.method public final getSectionForPosition(I)I
    .locals 4

    .line 128
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->mSectionCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 133
    :goto_0
    invoke-direct {p0}, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->internalGetSectionCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 134
    invoke-direct {p0, v1}, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->internalGetCountForSection(I)I

    move-result v3

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    if-lt p1, v2, :cond_1

    if-ge p1, v3, :cond_1

    .line 137
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->mSectionCache:Landroid/util/SparseArray;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_0

    :cond_2
    return v0
.end method

.method public abstract getSectionHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getSectionHeaderViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getSectionHeaderViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 107
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->isSectionHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->getSectionForPosition(I)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->getSectionHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 110
    :cond_0
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->getSectionForPosition(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->getPositionInSectionForPosition(I)I

    move-result p1

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->getItemView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final getViewTypeCount()I
    .locals 2

    .line 123
    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->getItemViewTypeCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->getSectionHeaderViewTypeCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 0

    .line 78
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->isSectionHeader(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final isSectionHeader(I)Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 170
    :goto_0
    invoke-direct {p0}, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->internalGetSectionCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    const/4 v3, 0x1

    if-ne p1, v2, :cond_0

    return v3

    :cond_0
    if-ge p1, v2, :cond_1

    return v0

    .line 176
    :cond_1
    invoke-direct {p0, v1}, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->internalGetCountForSection(I)I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->mSectionCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 54
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->mSectionPositionCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 55
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->mSectionCountCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, -0x1

    .line 56
    iput v0, p0, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->mCount:I

    .line 57
    iput v0, p0, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->mSectionCount:I

    .line 58
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->mSectionCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 64
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->mSectionPositionCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 65
    iget-object v0, p0, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->mSectionCountCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, -0x1

    .line 66
    iput v0, p0, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->mCount:I

    .line 67
    iput v0, p0, Lcom/startapps/crossx/view/widget/listview/adapter/SectionedBaseAdapter;->mSectionCount:I

    .line 68
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    return-void
.end method

.class public Lcom/startapps/crossx/controller/utils/SimpleDividerDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SimpleDividerDecoration.java"


# instance fields
.field private mDivider:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const p1, 0x7f080176

    .line 19
    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/Utils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/controller/utils/SimpleDividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 6

    .line 24
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result p3

    .line 25
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 27
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 29
    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 31
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 33
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    .line 34
    iget-object v4, p0, Lcom/startapps/crossx/controller/utils/SimpleDividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v3

    .line 36
    iget-object v5, p0, Lcom/startapps/crossx/controller/utils/SimpleDividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p3, v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 37
    iget-object v3, p0, Lcom/startapps/crossx/controller/utils/SimpleDividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

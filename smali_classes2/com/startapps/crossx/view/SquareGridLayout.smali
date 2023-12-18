.class public Lcom/startapps/crossx/view/SquareGridLayout;
.super Landroid/view/ViewGroup;
.source "SquareGridLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/SquareGridLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private isShowMissinDays:Z

.field private mColumns:I

.field private mContext:Landroid/content/Context;

.field private mSpacing:I

.field private missingDays:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/startapps/crossx/view/SquareGridLayout;->mSpacing:I

    const/4 p1, 0x2

    .line 22
    iput p1, p0, Lcom/startapps/crossx/view/SquareGridLayout;->mColumns:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 21
    iput p2, p0, Lcom/startapps/crossx/view/SquareGridLayout;->mSpacing:I

    const/4 p2, 0x2

    .line 22
    iput p2, p0, Lcom/startapps/crossx/view/SquareGridLayout;->mColumns:I

    .line 31
    iput-object p1, p0, Lcom/startapps/crossx/view/SquareGridLayout;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 143
    instance-of p1, p1, Lcom/startapps/crossx/view/SquareGridLayout$LayoutParams;

    return p1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 65
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/startapps/crossx/view/SquareGridLayout;->generateDefaultLayoutParams()Lcom/startapps/crossx/view/SquareGridLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/startapps/crossx/view/SquareGridLayout$LayoutParams;
    .locals 3

    .line 148
    new-instance v0, Lcom/startapps/crossx/view/SquareGridLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/startapps/crossx/view/SquareGridLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/SquareGridLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/startapps/crossx/view/SquareGridLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/SquareGridLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/startapps/crossx/view/SquareGridLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/startapps/crossx/view/SquareGridLayout$LayoutParams;
    .locals 2

    .line 154
    new-instance v0, Lcom/startapps/crossx/view/SquareGridLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/SquareGridLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/startapps/crossx/view/SquareGridLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/startapps/crossx/view/SquareGridLayout$LayoutParams;
    .locals 2

    .line 159
    new-instance v0, Lcom/startapps/crossx/view/SquareGridLayout$LayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v1, p1}, Lcom/startapps/crossx/view/SquareGridLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public getColumnCount()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/startapps/crossx/view/SquareGridLayout;->mColumns:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 70
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 131
    invoke-virtual {p0}, Lcom/startapps/crossx/view/SquareGridLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 133
    invoke-virtual {p0, p2}, Lcom/startapps/crossx/view/SquareGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 134
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Lcom/startapps/crossx/view/SquareGridLayout$LayoutParams;

    .line 136
    iget p5, p4, Lcom/startapps/crossx/view/SquareGridLayout$LayoutParams;->x:I

    iget v0, p4, Lcom/startapps/crossx/view/SquareGridLayout$LayoutParams;->y:I

    iget v1, p4, Lcom/startapps/crossx/view/SquareGridLayout$LayoutParams;->x:I

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget p4, p4, Lcom/startapps/crossx/view/SquareGridLayout$LayoutParams;->y:I

    .line 137
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr p4, v2

    .line 136
    invoke-virtual {p3, p5, v0, v1, p4}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 16

    move-object/from16 v0, p0

    .line 76
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/startapps/crossx/view/SquareGridLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/startapps/crossx/view/SquareGridLayout;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    sub-int v2, v1, v2

    .line 80
    iget v3, v0, Lcom/startapps/crossx/view/SquareGridLayout;->mColumns:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    add-int/lit8 v4, v3, 0x1

    .line 81
    iget v6, v0, Lcom/startapps/crossx/view/SquareGridLayout;->mSpacing:I

    mul-int/2addr v4, v6

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    sub-int/2addr v2, v4

    div-int/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    .line 84
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/startapps/crossx/view/SquareGridLayout;->getPaddingTop()I

    move-result v3

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/startapps/crossx/view/SquareGridLayout;->getPaddingLeft()I

    move-result v4

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/startapps/crossx/view/SquareGridLayout;->getChildCount()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    const-string v10, " height: "

    const-string v11, "squaregrid"

    if-ge v7, v6, :cond_2

    .line 95
    invoke-virtual {v0, v7}, Lcom/startapps/crossx/view/SquareGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 96
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/startapps/crossx/view/SquareGridLayout$LayoutParams;

    .line 97
    invoke-virtual {v0, v12, v2, v2}, Lcom/startapps/crossx/view/SquareGridLayout;->measureChild(Landroid/view/View;II)V

    .line 99
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v4

    iget v15, v0, Lcom/startapps/crossx/view/SquareGridLayout;->mSpacing:I

    add-int/2addr v14, v15

    if-le v14, v1, :cond_1

    add-int/2addr v8, v15

    add-int/2addr v3, v8

    .line 102
    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/startapps/crossx/view/SquareGridLayout;->getPaddingLeft()I

    move-result v4

    const/4 v8, 0x0

    .line 106
    :cond_1
    iget v14, v0, Lcom/startapps/crossx/view/SquareGridLayout;->mSpacing:I

    add-int/2addr v14, v4

    iput v14, v13, Lcom/startapps/crossx/view/SquareGridLayout$LayoutParams;->x:I

    .line 107
    iget v14, v0, Lcom/startapps/crossx/view/SquareGridLayout;->mSpacing:I

    add-int/2addr v14, v3

    iput v14, v13, Lcom/startapps/crossx/view/SquareGridLayout$LayoutParams;->y:I

    .line 109
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "["

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v5, "] current Height: "

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "] x:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v10, v13, Lcom/startapps/crossx/view/SquareGridLayout$LayoutParams;->x:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " y:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v10, v13, Lcom/startapps/crossx/view/SquareGridLayout$LayoutParams;->y:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v10, v0, Lcom/startapps/crossx/view/SquareGridLayout;->mSpacing:I

    add-int/2addr v5, v10

    add-int/2addr v4, v5

    .line 114
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 117
    :cond_2
    iget v1, v0, Lcom/startapps/crossx/view/SquareGridLayout;->mSpacing:I

    add-int/2addr v8, v1

    add-int/2addr v3, v8

    sub-int/2addr v4, v1

    .line 118
    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/startapps/crossx/view/SquareGridLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/startapps/crossx/view/SquareGridLayout;->getPaddingBottom()I

    move-result v2

    iget v4, v0, Lcom/startapps/crossx/view/SquareGridLayout;->mSpacing:I

    add-int/2addr v2, v4

    add-int/2addr v3, v2

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "width: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v2, p1

    .line 125
    invoke-static {v1, v2}, Lcom/startapps/crossx/view/SquareGridLayout;->resolveSize(II)I

    move-result v1

    move/from16 v2, p2

    .line 126
    invoke-static {v3, v2}, Lcom/startapps/crossx/view/SquareGridLayout;->resolveSize(II)I

    move-result v2

    .line 125
    invoke-virtual {v0, v1, v2}, Lcom/startapps/crossx/view/SquareGridLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public setColumnCount(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 54
    iput p1, p0, Lcom/startapps/crossx/view/SquareGridLayout;->mColumns:I

    .line 55
    invoke-virtual {p0}, Lcom/startapps/crossx/view/SquareGridLayout;->requestLayout()V

    return-void

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Layout must have at least one column"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setThumbs(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 179
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 183
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/SquareGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

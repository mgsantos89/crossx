.class Lcom/startapps/crossx/view/TouchImageView$CompatScroller;
.super Ljava/lang/Object;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CompatScroller"
.end annotation


# instance fields
.field isPreGingerbread:Z

.field overScroller:Landroid/widget/OverScroller;

.field scroller:Landroid/widget/Scroller;

.field final synthetic this$0:Lcom/startapps/crossx/view/TouchImageView;


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/view/TouchImageView;Landroid/content/Context;)V
    .locals 0

    .line 1177
    iput-object p1, p0, Lcom/startapps/crossx/view/TouchImageView$CompatScroller;->this$0:Lcom/startapps/crossx/view/TouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1183
    iput-boolean p1, p0, Lcom/startapps/crossx/view/TouchImageView$CompatScroller;->isPreGingerbread:Z

    .line 1184
    new-instance p1, Landroid/widget/OverScroller;

    invoke-direct {p1, p2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/startapps/crossx/view/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    return-void
.end method


# virtual methods
.method public computeScrollOffset()Z
    .locals 1

    .line 1213
    iget-boolean v0, p0, Lcom/startapps/crossx/view/TouchImageView$CompatScroller;->isPreGingerbread:Z

    if-eqz v0, :cond_0

    .line 1214
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView$CompatScroller;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    return v0

    .line 1216
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 1217
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    return v0
.end method

.method public fling(IIIIIIII)V
    .locals 12

    move-object v0, p0

    .line 1189
    iget-boolean v1, v0, Lcom/startapps/crossx/view/TouchImageView$CompatScroller;->isPreGingerbread:Z

    if-eqz v1, :cond_0

    .line 1190
    iget-object v2, v0, Lcom/startapps/crossx/view/TouchImageView$CompatScroller;->scroller:Landroid/widget/Scroller;

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    .line 1192
    :cond_0
    iget-object v3, v0, Lcom/startapps/crossx/view/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    move v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-virtual/range {v3 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    :goto_0
    return-void
.end method

.method public forceFinished(Z)V
    .locals 1

    .line 1197
    iget-boolean v0, p0, Lcom/startapps/crossx/view/TouchImageView$CompatScroller;->isPreGingerbread:Z

    if-eqz v0, :cond_0

    .line 1198
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView$CompatScroller;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0, p1}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_0

    .line 1200
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    :goto_0
    return-void
.end method

.method public getCurrX()I
    .locals 1

    .line 1222
    iget-boolean v0, p0, Lcom/startapps/crossx/view/TouchImageView$CompatScroller;->isPreGingerbread:Z

    if-eqz v0, :cond_0

    .line 1223
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView$CompatScroller;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    return v0

    .line 1225
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    return v0
.end method

.method public getCurrY()I
    .locals 1

    .line 1230
    iget-boolean v0, p0, Lcom/startapps/crossx/view/TouchImageView$CompatScroller;->isPreGingerbread:Z

    if-eqz v0, :cond_0

    .line 1231
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView$CompatScroller;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    return v0

    .line 1233
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    return v0
.end method

.method public isFinished()Z
    .locals 1

    .line 1205
    iget-boolean v0, p0, Lcom/startapps/crossx/view/TouchImageView$CompatScroller;->isPreGingerbread:Z

    if-eqz v0, :cond_0

    .line 1206
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView$CompatScroller;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    return v0

    .line 1208
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    return v0
.end method

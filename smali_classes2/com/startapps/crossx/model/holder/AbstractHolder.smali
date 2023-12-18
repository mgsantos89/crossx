.class public Lcom/startapps/crossx/model/holder/AbstractHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AbstractHolder.java"


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 16
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

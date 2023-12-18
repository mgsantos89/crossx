.class public Lcom/startapps/crossx/model/holder/BoxAutoCompleteHolder;
.super Lcom/startapps/crossx/model/holder/AbstractHolder;
.source "BoxAutoCompleteHolder.java"


# instance fields
.field img:Landroid/widget/ImageView;

.field linearLayout:Landroid/widget/LinearLayout;

.field name:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/startapps/crossx/model/holder/AbstractHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getImg()Landroid/widget/ImageView;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/BoxAutoCompleteHolder;->img:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getLinearLayout()Landroid/widget/LinearLayout;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/BoxAutoCompleteHolder;->linearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getName()Landroid/widget/TextView;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/BoxAutoCompleteHolder;->name:Landroid/widget/TextView;

    return-object v0
.end method

.method public setImg(Landroid/widget/ImageView;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/startapps/crossx/model/holder/BoxAutoCompleteHolder;->img:Landroid/widget/ImageView;

    return-void
.end method

.method public setLinearLayout(Landroid/widget/LinearLayout;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/startapps/crossx/model/holder/BoxAutoCompleteHolder;->linearLayout:Landroid/widget/LinearLayout;

    return-void
.end method

.method public setName(Landroid/widget/TextView;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/startapps/crossx/model/holder/BoxAutoCompleteHolder;->name:Landroid/widget/TextView;

    return-void
.end method

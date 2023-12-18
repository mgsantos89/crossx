.class public Lcom/startapps/crossx/model/holder/MenuDrawerHolder;
.super Lcom/startapps/crossx/model/holder/AbstractHolder;
.source "MenuDrawerHolder.java"


# instance fields
.field icon:Landroid/widget/ImageView;

.field name:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/startapps/crossx/model/holder/AbstractHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getIcon()Landroid/widget/ImageView;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/MenuDrawerHolder;->icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getName()Landroid/widget/TextView;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/MenuDrawerHolder;->name:Landroid/widget/TextView;

    return-object v0
.end method

.method public setIcon(Landroid/widget/ImageView;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/startapps/crossx/model/holder/MenuDrawerHolder;->icon:Landroid/widget/ImageView;

    return-void
.end method

.method public setName(Landroid/widget/TextView;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/startapps/crossx/model/holder/MenuDrawerHolder;->name:Landroid/widget/TextView;

    return-void
.end method

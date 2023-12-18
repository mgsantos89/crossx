.class public Lcom/startapps/crossx/model/holder/GroupHolder;
.super Lcom/startapps/crossx/model/holder/AbstractHolder;
.source "GroupHolder.java"


# instance fields
.field layouAthlete:Landroid/widget/RelativeLayout;

.field squareGridLayout:Lcom/startapps/crossx/view/SquareGridLayout;

.field subTitle:Landroid/widget/TextView;

.field title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/content/Context;)V
    .locals 2

    .line 31
    invoke-direct {p0, p1}, Lcom/startapps/crossx/model/holder/AbstractHolder;-><init>(Landroid/view/View;)V

    .line 33
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/startapps/crossx/model/holder/GroupHolder;->title:Landroid/widget/TextView;

    const v1, 0x7f1201b0

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/startapps/crossx/model/holder/GroupHolder;->subTitle:Landroid/widget/TextView;

    const v1, 0x7f1201af

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getImg()Lcom/startapps/crossx/view/SquareGridLayout;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/GroupHolder;->squareGridLayout:Lcom/startapps/crossx/view/SquareGridLayout;

    return-object v0
.end method

.method public getLayouAthlete()Landroid/widget/RelativeLayout;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/GroupHolder;->layouAthlete:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getSubTitle()Landroid/widget/TextView;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/GroupHolder;->subTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitle()Landroid/widget/TextView;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/GroupHolder;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method public setImg(Lcom/startapps/crossx/view/SquareGridLayout;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/startapps/crossx/model/holder/GroupHolder;->squareGridLayout:Lcom/startapps/crossx/view/SquareGridLayout;

    return-void
.end method

.method public setLayouAthlete(Landroid/widget/RelativeLayout;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/startapps/crossx/model/holder/GroupHolder;->layouAthlete:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public setSubTitle(Landroid/widget/TextView;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/startapps/crossx/model/holder/GroupHolder;->subTitle:Landroid/widget/TextView;

    return-void
.end method

.method public setTitle(Landroid/widget/TextView;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/startapps/crossx/model/holder/GroupHolder;->title:Landroid/widget/TextView;

    return-void
.end method

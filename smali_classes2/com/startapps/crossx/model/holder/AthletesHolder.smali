.class public Lcom/startapps/crossx/model/holder/AthletesHolder;
.super Lcom/startapps/crossx/model/holder/AbstractHolder;
.source "AthletesHolder.java"


# instance fields
.field img:Landroid/widget/ImageView;

.field layouAthlete:Landroid/widget/RelativeLayout;

.field subTitle:Landroid/widget/TextView;

.field title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/content/Context;)V
    .locals 2

    .line 30
    invoke-direct {p0, p1}, Lcom/startapps/crossx/model/holder/AbstractHolder;-><init>(Landroid/view/View;)V

    .line 32
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/startapps/crossx/model/holder/AthletesHolder;->title:Landroid/widget/TextView;

    const v1, 0x7f1201b0

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/startapps/crossx/model/holder/AthletesHolder;->subTitle:Landroid/widget/TextView;

    const v1, 0x7f1201af

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getImg()Landroid/widget/ImageView;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/AthletesHolder;->img:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getLayouAthlete()Landroid/widget/RelativeLayout;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/AthletesHolder;->layouAthlete:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getSubTitle()Landroid/widget/TextView;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/AthletesHolder;->subTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitle()Landroid/widget/TextView;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/AthletesHolder;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method public setImg(Landroid/widget/ImageView;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/startapps/crossx/model/holder/AthletesHolder;->img:Landroid/widget/ImageView;

    return-void
.end method

.method public setLayouAthlete(Landroid/widget/RelativeLayout;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/startapps/crossx/model/holder/AthletesHolder;->layouAthlete:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public setSubTitle(Landroid/widget/TextView;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/startapps/crossx/model/holder/AthletesHolder;->subTitle:Landroid/widget/TextView;

    return-void
.end method

.method public setTitle(Landroid/widget/TextView;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/startapps/crossx/model/holder/AthletesHolder;->title:Landroid/widget/TextView;

    return-void
.end method

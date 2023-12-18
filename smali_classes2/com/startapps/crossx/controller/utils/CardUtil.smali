.class public Lcom/startapps/crossx/controller/utils/CardUtil;
.super Ljava/lang/Object;
.source "CardUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setBrandCard(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2

    .line 16
    sget-object v0, Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;->VISA:Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const p0, 0x7f0800d9

    goto :goto_0

    .line 18
    :cond_0
    sget-object v0, Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;->MASTER_CARD:Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p0, 0x7f0800d6

    goto :goto_0

    .line 20
    :cond_1
    sget-object v0, Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;->AMEX:Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const p0, 0x7f0800d0

    goto :goto_0

    .line 22
    :cond_2
    sget-object v0, Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;->ELO:Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/enuns/BrandCardTypeEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const p0, 0x7f0800d2

    goto :goto_0

    :cond_3
    move p0, v1

    :goto_0
    if-nez p0, :cond_4

    const/4 p0, 0x4

    .line 27
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 29
    :cond_4
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 30
    invoke-static {p0}, Lcom/startapps/crossx/controller/utils/Utils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method

.class public Lcom/startapps/crossx/model/MenuDrawerModel;
.super Ljava/lang/Object;
.source "MenuDrawerModel.java"


# instance fields
.field private menuDrawableEnum:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

.field protected selected:Z


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/startapps/crossx/model/MenuDrawerModel;->menuDrawableEnum:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/startapps/crossx/model/MenuDrawerModel;->selected:Z

    return-void
.end method

.method public static convertArrayEnunsInLis([Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;",
            ")",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/MenuDrawerModel;",
            ">;"
        }
    .end annotation

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 34
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 35
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    new-instance v2, Lcom/startapps/crossx/model/MenuDrawerModel;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lcom/startapps/crossx/model/MenuDrawerModel;-><init>(Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static menuWithoutBox([Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;",
            ")",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/MenuDrawerModel;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 44
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 45
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->isOnlyBox()Z

    move-result v2

    if-nez v2, :cond_0

    .line 46
    new-instance v2, Lcom/startapps/crossx/model/MenuDrawerModel;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lcom/startapps/crossx/model/MenuDrawerModel;-><init>(Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public getDrawableImage()I
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/startapps/crossx/model/MenuDrawerModel;->menuDrawableEnum:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->getDrawableImage()I

    move-result v0

    return v0
.end method

.method public getDrawableImageSelected()I
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/startapps/crossx/model/MenuDrawerModel;->menuDrawableEnum:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->getDrawableImageSelected()I

    move-result v0

    return v0
.end method

.method public getMenuItem()Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/startapps/crossx/model/MenuDrawerModel;->menuDrawableEnum:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    return-object v0
.end method

.method public getText()I
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/startapps/crossx/model/MenuDrawerModel;->menuDrawableEnum:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->getText()I

    move-result v0

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/startapps/crossx/model/MenuDrawerModel;->selected:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/startapps/crossx/model/MenuDrawerModel;->menuDrawableEnum:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->isVisible()Z

    move-result v0

    return v0
.end method

.method public setSelected(Z)V
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/startapps/crossx/model/MenuDrawerModel;->selected:Z

    return-void
.end method

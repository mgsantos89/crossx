.class public Lcom/startapps/crossx/view/adapter/GridresultsPercentsAdapter;
.super Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;
.source "GridresultsPercentsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/adapter/GridresultsPercentsAdapter$ViewHolderPercents;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/view/adapter/FasterArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private strPercents:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct/range {p0 .. p2}, Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    const-string v0, "105%"

    const-string v1, "100%"

    const-string v2, "95%"

    const-string v3, "90%"

    const-string v4, "85%"

    const-string v5, "80%"

    const-string v6, "75%"

    const-string v7, "70%"

    const-string v8, "65%"

    const-string v9, "60%"

    const-string v10, "55%"

    const-string v11, "50%"

    const-string v12, "45%"

    const-string v13, "40%"

    const-string v14, "35%"

    const-string v15, "30%"

    .line 20
    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/startapps/crossx/view/adapter/GridresultsPercentsAdapter;->strPercents:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected fillHolder(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
    .locals 1

    .line 29
    check-cast p1, Lcom/startapps/crossx/view/adapter/GridresultsPercentsAdapter$ViewHolderPercents;

    .line 30
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/GridresultsPercentsAdapter$ViewHolderPercents;->getResult()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p0, p2}, Lcom/startapps/crossx/view/adapter/GridresultsPercentsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/GridresultsPercentsAdapter$ViewHolderPercents;->getPercents()Landroid/widget/TextView;

    move-result-object p1

    iget-object p3, p0, Lcom/startapps/crossx/view/adapter/GridresultsPercentsAdapter;->strPercents:[Ljava/lang/String;

    aget-object p2, p3, p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected getHolder(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    .line 36
    new-instance v0, Lcom/startapps/crossx/view/adapter/GridresultsPercentsAdapter$ViewHolderPercents;

    invoke-direct {v0, p0, p1}, Lcom/startapps/crossx/view/adapter/GridresultsPercentsAdapter$ViewHolderPercents;-><init>(Lcom/startapps/crossx/view/adapter/GridresultsPercentsAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method protected layoutResourceForItem()I
    .locals 1

    const v0, 0x7f0d0098

    return v0
.end method

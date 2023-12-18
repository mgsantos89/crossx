.class public Lcom/startapps/crossx/view/adapter/ExerciserAdapter;
.super Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;
.source "ExerciserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/adapter/ExerciserAdapter$ViewHolderExercises;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/view/adapter/FasterArrayAdapter<",
        "Lcom/startapps/crossx/model/ExercisesModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/ExercisesModel;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected fillHolder(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
    .locals 1

    .line 30
    check-cast p1, Lcom/startapps/crossx/view/adapter/ExerciserAdapter$ViewHolderExercises;

    .line 32
    invoke-virtual {p0, p2}, Lcom/startapps/crossx/view/adapter/ExerciserAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/startapps/crossx/model/ExercisesModel;

    .line 34
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/ExerciserAdapter$ViewHolderExercises;->getTextName()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p2}, Lcom/startapps/crossx/model/ExercisesModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/ExerciserAdapter$ViewHolderExercises;->getTextExercise()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p2}, Lcom/startapps/crossx/model/ExercisesModel;->getBestResult()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/startapps/crossx/model/ExercisesModel;->getResultTypeName()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p3, p2, v0}, Lcom/startapps/crossx/controller/utils/PersonalRecordsUtils;->formatPRSFromType(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected getHolder(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    .line 41
    new-instance v0, Lcom/startapps/crossx/view/adapter/ExerciserAdapter$ViewHolderExercises;

    invoke-direct {v0, p0, p1}, Lcom/startapps/crossx/view/adapter/ExerciserAdapter$ViewHolderExercises;-><init>(Lcom/startapps/crossx/view/adapter/ExerciserAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method protected layoutResourceForItem()I
    .locals 1

    const v0, 0x7f0d0097

    return v0
.end method

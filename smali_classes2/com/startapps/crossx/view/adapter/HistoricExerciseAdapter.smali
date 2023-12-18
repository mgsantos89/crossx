.class public Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter;
.super Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;
.source "HistoricExerciseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter$ViewHolderDetail;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/view/adapter/FasterArrayAdapter<",
        "Lcom/startapps/crossx/model/PersonalRecordsDetails;",
        ">;"
    }
.end annotation


# instance fields
.field private final personalRecordListener:Lcom/startapps/crossx/Interfaces/OnPersonalRecordListener;

.field private resultType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/startapps/crossx/Interfaces/OnPersonalRecordListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/PersonalRecordsDetails;",
            ">;",
            "Lcom/startapps/crossx/Interfaces/OnPersonalRecordListener;",
            ")V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 32
    iput-object p3, p0, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter;->personalRecordListener:Lcom/startapps/crossx/Interfaces/OnPersonalRecordListener;

    return-void
.end method


# virtual methods
.method protected compare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const-string v0, ""

    const-string v1, "[^\\d.]"

    const/4 v2, 0x0

    .line 94
    :try_start_0
    iget-object v3, p0, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter;->resultType:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "tempo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 96
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_0

    move v2, v4

    :cond_0
    return v2

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter;->resultType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "carga"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 100
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    move v2, v4

    :cond_2
    return v2

    .line 106
    :cond_3
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    if-le p1, p2, :cond_4

    move v2, v4

    :catch_0
    :cond_4
    return v2
.end method

.method protected fillHolder(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
    .locals 3

    .line 43
    check-cast p1, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter$ViewHolderDetail;

    .line 44
    invoke-virtual {p0, p2}, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/startapps/crossx/model/PersonalRecordsDetails;

    .line 46
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter$ViewHolderDetail;->getDay()Landroid/widget/TextView;

    move-result-object p3

    .line 47
    invoke-virtual {p2}, Lcom/startapps/crossx/model/PersonalRecordsDetails;->getDate()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dd"

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    .line 46
    invoke-static {v0, v2, v1}, Lcom/startapps/crossx/controller/utils/DateUtility;->formatStringDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter$ViewHolderDetail;->getMonthYear()Landroid/widget/TextView;

    move-result-object p3

    .line 51
    invoke-virtual {p2}, Lcom/startapps/crossx/model/PersonalRecordsDetails;->getDate()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MMM yy"

    .line 50
    invoke-static {v0, v2, v1}, Lcom/startapps/crossx/controller/utils/DateUtility;->formatStringDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {p2}, Lcom/startapps/crossx/model/PersonalRecordsDetails;->getResult()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter;->getBestResult(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 57
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter$ViewHolderDetail;->getPr()Landroid/widget/TextView;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter$ViewHolderDetail;->getPr()Landroid/widget/TextView;

    move-result-object p3

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    :goto_0
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter$ViewHolderDetail;->getResult()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p2}, Lcom/startapps/crossx/model/PersonalRecordsDetails;->getResult()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter;->resultType:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/startapps/crossx/controller/utils/PersonalRecordsUtils;->formatPRSFromType(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object p1, p1, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter$ViewHolderDetail;->type:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/startapps/crossx/model/PersonalRecordsDetails;->getType()I

    move-result p2

    if-ne p2, v2, :cond_1

    const-string p2, "RX"

    goto :goto_1

    :cond_1
    const-string p2, "SCALED"

    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected getBestResult(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/model/PersonalRecordsDetails;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/PersonalRecordsDetails;->getResult()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected getHolder(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    .line 120
    new-instance v0, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter$ViewHolderDetail;

    invoke-direct {v0, p0, p1}, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter$ViewHolderDetail;-><init>(Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 37
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/PersonalRecordsDetails;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method protected layoutResourceForItem()I
    .locals 1

    const v0, 0x7f0d00ab

    return v0
.end method

.method public setResultType(Ljava/lang/String;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter;->resultType:Ljava/lang/String;

    return-void
.end method

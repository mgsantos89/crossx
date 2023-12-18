.class public Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter$ViewHolderDetail;
.super Lcom/startapps/crossx/model/holder/AbstractHolder;
.source "HistoricExerciseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolderDetail"
.end annotation


# instance fields
.field public day:Landroid/widget/TextView;

.field public itemPR:Landroid/widget/LinearLayout;

.field public monthYear:Landroid/widget/TextView;

.field public pr:Landroid/widget/TextView;

.field public result:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter;

.field public type:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter;Landroid/view/View;)V
    .locals 3

    .line 143
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter$ViewHolderDetail;->this$0:Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter;

    .line 144
    invoke-direct {p0, p2}, Lcom/startapps/crossx/model/holder/AbstractHolder;-><init>(Landroid/view/View;)V

    .line 148
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter$ViewHolderDetail;->day:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1201af

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 149
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter$ViewHolderDetail;->monthYear:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 150
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter$ViewHolderDetail;->type:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 151
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter$ViewHolderDetail;->result:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDay()Landroid/widget/TextView;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter$ViewHolderDetail;->day:Landroid/widget/TextView;

    return-object v0
.end method

.method public getMonthYear()Landroid/widget/TextView;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter$ViewHolderDetail;->monthYear:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPr()Landroid/widget/TextView;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter$ViewHolderDetail;->pr:Landroid/widget/TextView;

    return-object v0
.end method

.method public getResult()Landroid/widget/TextView;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter$ViewHolderDetail;->result:Landroid/widget/TextView;

    return-object v0
.end method

.method public setDay(Landroid/widget/TextView;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter$ViewHolderDetail;->day:Landroid/widget/TextView;

    return-void
.end method

.method public setMonthYear(Landroid/widget/TextView;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter$ViewHolderDetail;->monthYear:Landroid/widget/TextView;

    return-void
.end method

.method public setPr(Landroid/widget/TextView;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter$ViewHolderDetail;->pr:Landroid/widget/TextView;

    return-void
.end method

.method public setResult(Landroid/widget/TextView;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter$ViewHolderDetail;->result:Landroid/widget/TextView;

    return-void
.end method

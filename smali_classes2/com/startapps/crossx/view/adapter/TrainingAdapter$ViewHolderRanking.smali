.class public Lcom/startapps/crossx/view/adapter/TrainingAdapter$ViewHolderRanking;
.super Lcom/startapps/crossx/model/holder/AbstractHolder;
.source "TrainingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/adapter/TrainingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolderRanking"
.end annotation


# instance fields
.field public exercise:Landroid/widget/TextView;

.field public name:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/startapps/crossx/view/adapter/TrainingAdapter;

.field public videos:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/view/adapter/TrainingAdapter;Landroid/view/View;)V
    .locals 3

    .line 146
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/TrainingAdapter$ViewHolderRanking;->this$0:Lcom/startapps/crossx/view/adapter/TrainingAdapter;

    .line 147
    invoke-direct {p0, p2}, Lcom/startapps/crossx/model/holder/AbstractHolder;-><init>(Landroid/view/View;)V

    .line 149
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/TrainingAdapter$ViewHolderRanking;->name:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/startapps/crossx/view/adapter/TrainingAdapter;->-$$Nest$fgetcontext(Lcom/startapps/crossx/view/adapter/TrainingAdapter;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1201b0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 150
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/TrainingAdapter$ViewHolderRanking;->exercise:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/startapps/crossx/view/adapter/TrainingAdapter;->-$$Nest$fgetcontext(Lcom/startapps/crossx/view/adapter/TrainingAdapter;)Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f1201af

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getExerciseText()Landroid/widget/TextView;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/TrainingAdapter$ViewHolderRanking;->exercise:Landroid/widget/TextView;

    return-object v0
.end method

.method public getName()Landroid/widget/TextView;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/TrainingAdapter$ViewHolderRanking;->name:Landroid/widget/TextView;

    return-object v0
.end method

.method public getVideos()Landroid/widget/LinearLayout;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/TrainingAdapter$ViewHolderRanking;->videos:Landroid/widget/LinearLayout;

    return-object v0
.end method

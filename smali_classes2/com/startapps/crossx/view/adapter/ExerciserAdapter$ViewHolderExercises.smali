.class public Lcom/startapps/crossx/view/adapter/ExerciserAdapter$ViewHolderExercises;
.super Lcom/startapps/crossx/model/holder/AbstractHolder;
.source "ExerciserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/adapter/ExerciserAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolderExercises"
.end annotation


# instance fields
.field public textExercise:Landroid/widget/TextView;

.field public textName:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/startapps/crossx/view/adapter/ExerciserAdapter;


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/view/adapter/ExerciserAdapter;Landroid/view/View;)V
    .locals 3

    .line 56
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/ExerciserAdapter$ViewHolderExercises;->this$0:Lcom/startapps/crossx/view/adapter/ExerciserAdapter;

    .line 57
    invoke-direct {p0, p2}, Lcom/startapps/crossx/model/holder/AbstractHolder;-><init>(Landroid/view/View;)V

    .line 59
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/ExerciserAdapter$ViewHolderExercises;->textName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/ExerciserAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1201b0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/ExerciserAdapter$ViewHolderExercises;->textExercise:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/ExerciserAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getTextExercise()Landroid/widget/TextView;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/ExerciserAdapter$ViewHolderExercises;->textExercise:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTextName()Landroid/widget/TextView;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/ExerciserAdapter$ViewHolderExercises;->textName:Landroid/widget/TextView;

    return-object v0
.end method

.method public setTextExercise(Landroid/widget/TextView;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/ExerciserAdapter$ViewHolderExercises;->textExercise:Landroid/widget/TextView;

    return-void
.end method

.method public setTextName(Landroid/widget/TextView;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/ExerciserAdapter$ViewHolderExercises;->textName:Landroid/widget/TextView;

    return-void
.end method

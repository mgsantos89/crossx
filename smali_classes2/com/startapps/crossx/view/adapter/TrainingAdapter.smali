.class public Lcom/startapps/crossx/view/adapter/TrainingAdapter;
.super Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;
.source "TrainingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/adapter/TrainingAdapter$ViewHolderRanking;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/view/adapter/FasterArrayAdapter<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "*>;>;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private isWod:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetcontext(Lcom/startapps/crossx/view/adapter/TrainingAdapter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/adapter/TrainingAdapter;->context:Landroid/content/Context;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;Z)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 45
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/TrainingAdapter;->context:Landroid/content/Context;

    .line 46
    iput-boolean p3, p0, Lcom/startapps/crossx/view/adapter/TrainingAdapter;->isWod:Z

    return-void
.end method


# virtual methods
.method protected fillHolder(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
    .locals 7

    .line 52
    check-cast p1, Lcom/startapps/crossx/view/adapter/TrainingAdapter$ViewHolderRanking;

    .line 53
    invoke-virtual {p0, p2}, Lcom/startapps/crossx/view/adapter/TrainingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    .line 55
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/TrainingAdapter$ViewHolderRanking;->getName()Landroid/widget/TextView;

    move-result-object p3

    const-string/jumbo v0, "title"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/TrainingAdapter$ViewHolderRanking;->getExerciseText()Landroid/widget/TextView;

    move-result-object p3

    const-string v1, "caption"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    :try_start_0
    new-instance p3, Lorg/json/JSONArray;

    const-string/jumbo v1, "videos"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p3, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/TrainingAdapter$ViewHolderRanking;->getVideos()Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 p2, 0x0

    move v1, p2

    .line 62
    :goto_0
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v1, v2, :cond_3

    .line 65
    :try_start_1
    invoke-virtual {p3, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "video_url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/startapps/crossx/controller/utils/Utils;->getYoutubeVideoID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 68
    new-instance v2, Landroid/widget/Button;

    iget-object v3, p0, Lcom/startapps/crossx/view/adapter/TrainingAdapter;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 69
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    invoke-virtual {p3, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v3, p0, Lcom/startapps/crossx/view/adapter/TrainingAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08015d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 73
    invoke-static {v3}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 74
    iget-object v5, p0, Lcom/startapps/crossx/view/adapter/TrainingAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-boolean v6, p0, Lcom/startapps/crossx/view/adapter/TrainingAdapter;->isWod:Z

    if-eqz v6, :cond_0

    const v6, 0x7f060158

    goto :goto_1

    :cond_0
    const v6, 0x7f06002e

    :goto_1
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v3, v5}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 75
    invoke-virtual {v2, v4, p2, p2, p2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const/16 v3, 0xf

    .line 76
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setCompoundDrawablePadding(I)V

    .line 77
    iget-boolean v3, p0, Lcom/startapps/crossx/view/adapter/TrainingAdapter;->isWod:Z

    if-eqz v3, :cond_1

    const/4 v3, -0x1

    goto :goto_2

    :cond_1
    const/high16 v3, -0x1000000

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    const/16 v3, 0x14

    .line 78
    invoke-virtual {v2, p2, v3, p2, v3}, Landroid/widget/Button;->setPadding(IIII)V

    .line 79
    invoke-virtual {v2, p2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 80
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 81
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/startapps/crossx/view/adapter/TrainingAdapter;->context:Landroid/content/Context;

    const v5, 0x7f1201b0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 83
    new-instance v3, Lcom/startapps/crossx/view/adapter/TrainingAdapter$1;

    invoke-direct {v3, p0, p3}, Lcom/startapps/crossx/view/adapter/TrainingAdapter$1;-><init>(Lcom/startapps/crossx/view/adapter/TrainingAdapter;Lorg/json/JSONArray;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/TrainingAdapter$ViewHolderRanking;->getVideos()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    .line 117
    :try_start_2
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_1
    move-exception p1

    .line 122
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3
    return-void
.end method

.method protected getHolder(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    .line 129
    new-instance v0, Lcom/startapps/crossx/view/adapter/TrainingAdapter$ViewHolderRanking;

    invoke-direct {v0, p0, p1}, Lcom/startapps/crossx/view/adapter/TrainingAdapter$ViewHolderRanking;-><init>(Lcom/startapps/crossx/view/adapter/TrainingAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method protected layoutResourceForItem()I
    .locals 1

    .line 134
    iget-boolean v0, p0, Lcom/startapps/crossx/view/adapter/TrainingAdapter;->isWod:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0d0124

    goto :goto_0

    :cond_0
    const v0, 0x7f0d0123

    :goto_0
    return v0
.end method

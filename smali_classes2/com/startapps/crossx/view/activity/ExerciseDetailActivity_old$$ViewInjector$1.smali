.class Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$$ViewInjector$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ExerciseDetailActivity_old$$ViewInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$target:Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$$ViewInjector$1;->val$target:Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 39
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$$ViewInjector$1;->val$target:Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->reverse()V

    return-void
.end method

.class Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$$ViewInjector$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "MyTrainingFragment$$ViewInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$target:Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$$ViewInjector$1;->val$target:Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 19
    iget-object p1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$$ViewInjector$1;->val$target:Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;

    invoke-virtual {p1}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->onClickDate()V

    return-void
.end method

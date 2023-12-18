.class Lcom/startapps/crossx/view/activity/PersonalRecordActivity$$ViewInjector$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "PersonalRecordActivity$$ViewInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/PersonalRecordActivity$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/startapps/crossx/view/activity/PersonalRecordActivity;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$target:Lcom/startapps/crossx/view/activity/PersonalRecordActivity;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/PersonalRecordActivity;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$$ViewInjector$2;->val$target:Lcom/startapps/crossx/view/activity/PersonalRecordActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 51
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$$ViewInjector$2;->val$target:Lcom/startapps/crossx/view/activity/PersonalRecordActivity;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->addResultClick()V

    return-void
.end method

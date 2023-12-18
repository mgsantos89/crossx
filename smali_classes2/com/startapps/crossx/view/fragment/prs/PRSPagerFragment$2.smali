.class Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment$2;
.super Ljava/lang/Object;
.source "PRSPagerFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;->sorList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment$2;->this$0:Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 157
    check-cast p1, Lcom/startapps/crossx/model/ExercisesModel;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/ExercisesModel;->getName()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Lcom/startapps/crossx/model/ExercisesModel;

    .line 158
    invoke-virtual {p2}, Lcom/startapps/crossx/model/ExercisesModel;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

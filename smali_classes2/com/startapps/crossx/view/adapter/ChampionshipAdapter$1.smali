.class Lcom/startapps/crossx/view/adapter/ChampionshipAdapter$1;
.super Ljava/lang/Object;
.source "ChampionshipAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/adapter/ChampionshipAdapter;->fillHolder(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/adapter/ChampionshipAdapter;

.field final synthetic val$model:Lcom/startapps/crossx/model/ChampionshipModel;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/adapter/ChampionshipAdapter;Lcom/startapps/crossx/model/ChampionshipModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/ChampionshipAdapter$1;->this$0:Lcom/startapps/crossx/view/adapter/ChampionshipAdapter;

    iput-object p2, p0, Lcom/startapps/crossx/view/adapter/ChampionshipAdapter$1;->val$model:Lcom/startapps/crossx/model/ChampionshipModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 66
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/ChampionshipAdapter$1;->this$0:Lcom/startapps/crossx/view/adapter/ChampionshipAdapter;

    iget-object p1, p1, Lcom/startapps/crossx/view/adapter/ChampionshipAdapter;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/ChampionshipAdapter$1;->this$0:Lcom/startapps/crossx/view/adapter/ChampionshipAdapter;

    iget-object v0, v0, Lcom/startapps/crossx/view/adapter/ChampionshipAdapter;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/startapps/crossx/view/adapter/ChampionshipAdapter$1;->val$model:Lcom/startapps/crossx/model/ChampionshipModel;

    invoke-static {v0, v1}, Lcom/startapps/crossx/controller/utils/Intents;->goToChampionshipDetail(Landroid/content/Context;Lcom/startapps/crossx/model/ChampionshipModel;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

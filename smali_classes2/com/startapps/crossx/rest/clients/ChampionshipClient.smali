.class public Lcom/startapps/crossx/rest/clients/ChampionshipClient;
.super Lcom/startapps/crossx/rest/clients/BaseClient;
.source "ChampionshipClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/rest/clients/BaseClient<",
        "Lcom/startapps/crossx/rest/interfaces/ChampionshipService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    const-class v0, Lcom/startapps/crossx/rest/interfaces/ChampionshipService;

    invoke-direct {p0, v0}, Lcom/startapps/crossx/rest/clients/BaseClient;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public championshipDetail(JLcom/startapps/crossx/rest/callback/CancelableCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/startapps/crossx/rest/callback/CancelableCallback<",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/ChampionshipDetailModel;",
            ">;>;)V"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/startapps/crossx/rest/clients/ChampionshipClient;->service:Ljava/lang/Object;

    check-cast v0, Lcom/startapps/crossx/rest/interfaces/ChampionshipService;

    invoke-interface {v0, p1, p2}, Lcom/startapps/crossx/rest/interfaces/ChampionshipService;->getChampionship(J)Lretrofit/Call;

    move-result-object p1

    invoke-interface {p1, p3}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    return-void
.end method

.method public championshipList(ILcom/startapps/crossx/rest/callback/CancelableCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/startapps/crossx/rest/callback/CancelableCallback<",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/ChampionshipModel;",
            ">;>;)V"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/startapps/crossx/rest/clients/ChampionshipClient;->service:Ljava/lang/Object;

    check-cast v0, Lcom/startapps/crossx/rest/interfaces/ChampionshipService;

    invoke-interface {v0, p1}, Lcom/startapps/crossx/rest/interfaces/ChampionshipService;->championship(I)Lretrofit/Call;

    move-result-object p1

    invoke-interface {p1, p2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    return-void
.end method

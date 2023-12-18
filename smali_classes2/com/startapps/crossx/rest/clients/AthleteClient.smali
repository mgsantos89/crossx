.class public Lcom/startapps/crossx/rest/clients/AthleteClient;
.super Lcom/startapps/crossx/rest/clients/BaseClient;
.source "AthleteClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/rest/clients/BaseClient<",
        "Lcom/startapps/crossx/rest/interfaces/AthleteService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    const-class v0, Lcom/startapps/crossx/rest/interfaces/AthleteService;

    invoke-direct {p0, v0}, Lcom/startapps/crossx/rest/clients/BaseClient;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getUsers(Ljava/lang/String;IILcom/startapps/crossx/rest/callback/CancelableCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/startapps/crossx/rest/callback/CancelableCallback<",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/UserModel;",
            ">;>;)V"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/startapps/crossx/rest/clients/AthleteClient;->service:Ljava/lang/Object;

    check-cast v0, Lcom/startapps/crossx/rest/interfaces/AthleteService;

    invoke-interface {v0, p2, p3, p1}, Lcom/startapps/crossx/rest/interfaces/AthleteService;->users(IILjava/lang/String;)Lretrofit/Call;

    move-result-object p1

    invoke-interface {p1, p4}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    return-void
.end method

.method public getUsersSameBox(ILcom/startapps/crossx/rest/callback/CancelableCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/startapps/crossx/rest/callback/CancelableCallback<",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/UserModel;",
            ">;>;)V"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/startapps/crossx/rest/clients/AthleteClient;->service:Ljava/lang/Object;

    check-cast v0, Lcom/startapps/crossx/rest/interfaces/AthleteService;

    invoke-interface {v0, p1}, Lcom/startapps/crossx/rest/interfaces/AthleteService;->usersSameBox(I)Lretrofit/Call;

    move-result-object p1

    invoke-interface {p1, p2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    return-void
.end method

.method public getUsersSameBoxPerPage(Ljava/lang/String;IILcom/startapps/crossx/rest/callback/CancelableCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/startapps/crossx/rest/callback/CancelableCallback<",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/UserModel;",
            ">;>;)V"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/startapps/crossx/rest/clients/AthleteClient;->service:Ljava/lang/Object;

    check-cast v0, Lcom/startapps/crossx/rest/interfaces/AthleteService;

    invoke-interface {v0, p2, p3, p1}, Lcom/startapps/crossx/rest/interfaces/AthleteService;->usersSameBoxPerPage(IILjava/lang/String;)Lretrofit/Call;

    move-result-object p1

    invoke-interface {p1, p4}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    return-void
.end method

.class public Lcom/startapps/crossx/rest/clients/WorkoutClient;
.super Lcom/startapps/crossx/rest/clients/BaseClient;
.source "WorkoutClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/rest/clients/BaseClient<",
        "Lcom/startapps/crossx/rest/interfaces/WorkoutService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    const-class v0, Lcom/startapps/crossx/rest/interfaces/WorkoutService;

    invoke-direct {p0, v0}, Lcom/startapps/crossx/rest/clients/BaseClient;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public workoutsByDay(Ljava/lang/String;Lcom/startapps/crossx/rest/callback/CancelableCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/startapps/crossx/rest/callback/CancelableCallback<",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/WorkoutModel;",
            ">;>;)V"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/startapps/crossx/rest/clients/WorkoutClient;->service:Ljava/lang/Object;

    check-cast v0, Lcom/startapps/crossx/rest/interfaces/WorkoutService;

    invoke-interface {v0, p1}, Lcom/startapps/crossx/rest/interfaces/WorkoutService;->workoutInDay(Ljava/lang/String;)Lretrofit/Call;

    move-result-object p1

    invoke-interface {p1, p2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    return-void
.end method

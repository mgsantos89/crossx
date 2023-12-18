.class public Lcom/startapps/crossx/classes/athletes/UsersSameBox;
.super Ljava/lang/Object;
.source "UsersSameBox.java"

# interfaces
.implements Lcom/startapps/crossx/Interfaces/athletes/AthletesInterface;


# instance fields
.field private athleteClient:Lcom/startapps/crossx/rest/clients/AthleteClient;

.field private viewRestClientInterface:Lcom/startapps/crossx/Interfaces/views/ViewRestClientInterface;


# direct methods
.method static bridge synthetic -$$Nest$fgetviewRestClientInterface(Lcom/startapps/crossx/classes/athletes/UsersSameBox;)Lcom/startapps/crossx/Interfaces/views/ViewRestClientInterface;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/classes/athletes/UsersSameBox;->viewRestClientInterface:Lcom/startapps/crossx/Interfaces/views/ViewRestClientInterface;

    return-object p0
.end method

.method public constructor <init>(Lcom/startapps/crossx/Interfaces/views/ViewRestClientInterface;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/startapps/crossx/rest/clients/AthleteClient;

    invoke-direct {v0}, Lcom/startapps/crossx/rest/clients/AthleteClient;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/classes/athletes/UsersSameBox;->athleteClient:Lcom/startapps/crossx/rest/clients/AthleteClient;

    .line 26
    iput-object p1, p0, Lcom/startapps/crossx/classes/athletes/UsersSameBox;->viewRestClientInterface:Lcom/startapps/crossx/Interfaces/views/ViewRestClientInterface;

    return-void
.end method


# virtual methods
.method public allAthetes(I)V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/startapps/crossx/classes/athletes/UsersSameBox;->athleteClient:Lcom/startapps/crossx/rest/clients/AthleteClient;

    new-instance v1, Lcom/startapps/crossx/classes/athletes/UsersSameBox$2;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/classes/athletes/UsersSameBox$2;-><init>(Lcom/startapps/crossx/classes/athletes/UsersSameBox;)V

    invoke-virtual {v0, p1, v1}, Lcom/startapps/crossx/rest/clients/AthleteClient;->getUsersSameBox(ILcom/startapps/crossx/rest/callback/CancelableCallback;)V

    return-void
.end method

.method public athetes(Ljava/lang/String;II)V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/startapps/crossx/classes/athletes/UsersSameBox;->athleteClient:Lcom/startapps/crossx/rest/clients/AthleteClient;

    new-instance v1, Lcom/startapps/crossx/classes/athletes/UsersSameBox$1;

    invoke-direct {v1, p0, p3}, Lcom/startapps/crossx/classes/athletes/UsersSameBox$1;-><init>(Lcom/startapps/crossx/classes/athletes/UsersSameBox;I)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/startapps/crossx/rest/clients/AthleteClient;->getUsersSameBoxPerPage(Ljava/lang/String;IILcom/startapps/crossx/rest/callback/CancelableCallback;)V

    return-void
.end method

.method public getAthetesPage(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    if-gez p2, :cond_0

    .line 33
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/classes/athletes/UsersSameBox;->allAthetes(I)V

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/startapps/crossx/classes/athletes/UsersSameBox;->athetes(Ljava/lang/String;II)V

    :goto_0
    return-void
.end method

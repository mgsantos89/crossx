.class public Lcom/startapps/crossx/classes/athletes/UsersGroup;
.super Ljava/lang/Object;
.source "UsersGroup.java"

# interfaces
.implements Lcom/startapps/crossx/Interfaces/athletes/AthletesInterface;


# instance fields
.field private athleteClient:Lcom/startapps/crossx/rest/clients/AthleteClient;

.field private viewRestClientInterface:Lcom/startapps/crossx/Interfaces/views/ViewRestClientInterface;


# direct methods
.method static bridge synthetic -$$Nest$fgetviewRestClientInterface(Lcom/startapps/crossx/classes/athletes/UsersGroup;)Lcom/startapps/crossx/Interfaces/views/ViewRestClientInterface;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/classes/athletes/UsersGroup;->viewRestClientInterface:Lcom/startapps/crossx/Interfaces/views/ViewRestClientInterface;

    return-object p0
.end method

.method public constructor <init>(Lcom/startapps/crossx/Interfaces/views/ViewRestClientInterface;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/startapps/crossx/rest/clients/AthleteClient;

    invoke-direct {v0}, Lcom/startapps/crossx/rest/clients/AthleteClient;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/classes/athletes/UsersGroup;->athleteClient:Lcom/startapps/crossx/rest/clients/AthleteClient;

    .line 28
    iput-object p1, p0, Lcom/startapps/crossx/classes/athletes/UsersGroup;->viewRestClientInterface:Lcom/startapps/crossx/Interfaces/views/ViewRestClientInterface;

    return-void
.end method


# virtual methods
.method public athetes(Ljava/lang/String;II)V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/startapps/crossx/classes/athletes/UsersGroup;->athleteClient:Lcom/startapps/crossx/rest/clients/AthleteClient;

    new-instance v1, Lcom/startapps/crossx/classes/athletes/UsersGroup$1;

    invoke-direct {v1, p0, p3}, Lcom/startapps/crossx/classes/athletes/UsersGroup$1;-><init>(Lcom/startapps/crossx/classes/athletes/UsersGroup;I)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/startapps/crossx/rest/clients/AthleteClient;->getUsersSameBoxPerPage(Ljava/lang/String;IILcom/startapps/crossx/rest/callback/CancelableCallback;)V

    return-void
.end method

.method public getAthetesPage(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-virtual {p0, p1, v0, p2}, Lcom/startapps/crossx/classes/athletes/UsersGroup;->athetes(Ljava/lang/String;II)V

    return-void
.end method

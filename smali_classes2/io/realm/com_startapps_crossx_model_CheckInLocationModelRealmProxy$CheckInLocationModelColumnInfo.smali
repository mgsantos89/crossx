.class final Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "com_startapps_crossx_model_CheckInLocationModelRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CheckInLocationModelColumnInfo"
.end annotation


# instance fields
.field addressColKey:J

.field idColKey:J

.field latitudeColKey:J

.field longitudeColKey:J

.field nameColKey:J

.field place_idColKey:J


# direct methods
.method constructor <init>(Lio/realm/internal/ColumnInfo;Z)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lio/realm/internal/ColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    .line 66
    invoke-virtual {p0, p1, p0}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V

    return-void
.end method

.method constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    const/4 v0, 0x6

    .line 54
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    const-string v0, "CheckInLocationModel"

    .line 55
    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    const-string v0, "id"

    .line 56
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->idColKey:J

    const-string v0, "name"

    .line 57
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->nameColKey:J

    const-string v0, "address"

    .line 58
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->addressColKey:J

    const-string v0, "place_id"

    .line 59
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->place_idColKey:J

    const-string v0, "latitude"

    .line 60
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->latitudeColKey:J

    const-string v0, "longitude"

    .line 61
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->longitudeColKey:J

    return-void
.end method


# virtual methods
.method protected final copy(Z)Lio/realm/internal/ColumnInfo;
    .locals 1

    .line 71
    new-instance v0, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;

    invoke-direct {v0, p0, p1}, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;-><init>(Lio/realm/internal/ColumnInfo;Z)V

    return-object v0
.end method

.method protected final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 76
    check-cast p1, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;

    .line 77
    check-cast p2, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;

    .line 78
    iget-wide v0, p1, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->idColKey:J

    iput-wide v0, p2, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->idColKey:J

    .line 79
    iget-wide v0, p1, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->nameColKey:J

    iput-wide v0, p2, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->nameColKey:J

    .line 80
    iget-wide v0, p1, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->addressColKey:J

    iput-wide v0, p2, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->addressColKey:J

    .line 81
    iget-wide v0, p1, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->place_idColKey:J

    iput-wide v0, p2, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->place_idColKey:J

    .line 82
    iget-wide v0, p1, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->latitudeColKey:J

    iput-wide v0, p2, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->latitudeColKey:J

    .line 83
    iget-wide v0, p1, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->longitudeColKey:J

    iput-wide v0, p2, Lio/realm/com_startapps_crossx_model_CheckInLocationModelRealmProxy$CheckInLocationModelColumnInfo;->longitudeColKey:J

    return-void
.end method

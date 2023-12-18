.class public Lcom/startapps/crossx/view/fragment/MapView_Fragment;
.super Lcom/startapps/crossx/view/fragment/base/AbstractFragment;
.source "MapView_Fragment.java"

# interfaces
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# static fields
.field private static final ARG_LATITUDE:Ljava/lang/String; = "latitude"

.field private static final ARG_LOCATION:Ljava/lang/String; = "location"

.field private static final ARG_LONGITUDE:Ljava/lang/String; = "longitude"

.field private static final ARG_PLACE:Ljava/lang/String; = "name"


# instance fields
.field REQUEST_CODE:I

.field latitude:Ljava/lang/Double;

.field location:Ljava/lang/String;

.field locationManager:Landroid/location/LocationManager;

.field longitude:Ljava/lang/Double;

.field private mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field protected mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

.field private map:Lcom/google/android/gms/maps/GoogleMap;

.field private mapFragment:Lcom/google/android/gms/maps/SupportMapFragment;

.field namePlace:Ljava/lang/String;

.field private position:Lcom/google/android/gms/maps/model/LatLng;

.field trace_route:Landroid/widget/Button;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;-><init>()V

    const/4 v0, 0x1

    .line 70
    iput v0, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->REQUEST_CODE:I

    return-void
.end method

.method private createLocationRequest()Lcom/google/android/gms/location/LocationRequest;
    .locals 3

    .line 239
    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v1, 0x1388

    .line 240
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 241
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 243
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    .line 245
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;DDLjava/lang/String;)Lcom/startapps/crossx/view/fragment/MapView_Fragment;
    .locals 3

    .line 73
    new-instance v0, Lcom/startapps/crossx/view/fragment/MapView_Fragment;

    invoke-direct {v0}, Lcom/startapps/crossx/view/fragment/MapView_Fragment;-><init>()V

    .line 74
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "location"

    .line 75
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "latitude"

    .line 76
    invoke-virtual {v1, p0, p1, p2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string p0, "longitude"

    .line 77
    invoke-virtual {v1, p0, p3, p4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string p0, "name"

    .line 78
    invoke-virtual {v1, p0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private showGPSDisabledAlertToUser()V
    .locals 4

    .line 336
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Enable GPS to use application"

    .line 337
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 338
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/startapps/crossx/view/fragment/MapView_Fragment$3;

    invoke-direct {v2, p0}, Lcom/startapps/crossx/view/fragment/MapView_Fragment$3;-><init>(Lcom/startapps/crossx/view/fragment/MapView_Fragment;)V

    const-string v3, "Enable GPS"

    .line 339
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 347
    new-instance v1, Lcom/startapps/crossx/view/fragment/MapView_Fragment$4;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/fragment/MapView_Fragment$4;-><init>(Lcom/startapps/crossx/view/fragment/MapView_Fragment;)V

    const-string v2, "Cancel"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 353
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 354
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method protected declared-synchronized buildGoogleApiClient()V
    .locals 2

    monitor-enter p0

    .line 249
    :try_start_0
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    .line 250
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 251
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    .line 252
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method checkGps()V
    .locals 2

    .line 328
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    .line 329
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->showGPSDisabledAlertToUser()V

    :cond_0
    return-void
.end method

.method public endLoader()V
    .locals 0

    return-void
.end method

.method public getGeoLocationByAdress(Ljava/lang/String;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 7

    .line 214
    new-instance v0, Landroid/location/Geocoder;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 220
    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v2

    .line 224
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 225
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Address;

    .line 226
    invoke-virtual {p1}, Landroid/location/Address;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->latitude:Ljava/lang/Double;

    .line 227
    invoke-virtual {p1}, Landroid/location/Address;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->longitude:Ljava/lang/Double;

    .line 229
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Address;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Address;->getLongitude()D

    move-result-wide v5

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 232
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v2
.end method

.method protected getLayoutToInflate()I
    .locals 1

    const v0, 0x7f0d00bf

    return v0
.end method

.method public initLoader()V
    .locals 0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 359
    iget p2, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->REQUEST_CODE:I

    if-ne p1, p2, :cond_1

    .line 361
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "location_providers_allowed"

    invoke-static {p1, p2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "result_gps"

    if-eqz p1, :cond_0

    const-string p1, "start"

    .line 363
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->buildGoogleApiClient()V

    .line 366
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 367
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->createLocationRequest()Lcom/google/android/gms/location/LocationRequest;

    goto :goto_0

    :cond_0
    const-string p1, "failed"

    .line 371
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 0

    .line 276
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->startLocationUpdates()V

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 141
    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 144
    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->view:Landroid/view/View;
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :catch_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "location"

    if-eqz p1, :cond_2

    .line 150
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->location:Ljava/lang/String;

    .line 151
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p3, "latitude"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->latitude:Ljava/lang/Double;

    .line 152
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p3, "longitude"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->longitude:Ljava/lang/Double;

    .line 153
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p3, "name"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->namePlace:Ljava/lang/String;

    .line 155
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->latitude:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->longitude:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpl-double p1, v0, v2

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->location:Ljava/lang/String;

    const-string p3, ""

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 156
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->location:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->getGeoLocationByAdress(Ljava/lang/String;)Lcom/google/android/gms/maps/model/LatLng;

    :cond_1
    const-string/jumbo p1, "teste"

    .line 159
    invoke-static {p1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_2
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->view:Landroid/view/View;

    const p3, 0x7f0a049c

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->trace_route:Landroid/widget/Button;

    if-eqz p1, :cond_3

    .line 164
    new-instance p3, Lcom/startapps/crossx/view/fragment/MapView_Fragment$1;

    invoke-direct {p3, p0}, Lcom/startapps/crossx/view/fragment/MapView_Fragment$1;-><init>(Lcom/startapps/crossx/view/fragment/MapView_Fragment;)V

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    :cond_3
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 182
    new-instance p3, Lcom/startapps/crossx/view/fragment/MapView_Fragment$2;

    invoke-direct {p3, p0}, Lcom/startapps/crossx/view/fragment/MapView_Fragment$2;-><init>(Lcom/startapps/crossx/view/fragment/MapView_Fragment;)V

    invoke-virtual {p1, p3}, Landroidx/fragment/app/FragmentManager;->addOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V

    .line 191
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const p3, 0x7f0a02ce

    invoke-virtual {p1, p3}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/SupportMapFragment;

    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->mapFragment:Lcom/google/android/gms/maps/SupportMapFragment;

    if-eqz p1, :cond_5

    .line 194
    invoke-virtual {p1, p0}, Lcom/google/android/gms/maps/SupportMapFragment;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    .line 196
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->createLocationRequest()Lcom/google/android/gms/location/LocationRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    .line 197
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    const-string p2, "gps"

    .line 199
    invoke-virtual {p1, p2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 200
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->checkGps()V

    goto :goto_0

    .line 202
    :cond_4
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->buildGoogleApiClient()V

    .line 203
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 204
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->createLocationRequest()Lcom/google/android/gms/location/LocationRequest;

    .line 209
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->view:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 132
    invoke-super {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onDestroy()V

    return-void
.end method

.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 1

    .line 259
    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->map:Lcom/google/android/gms/maps/GoogleMap;

    .line 261
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p1, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p1, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 271
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->map:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 126
    invoke-super {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onPause()V

    .line 127
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->stopLocationUpdates()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 100
    invoke-super {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onResume()V

    .line 101
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->startLocationUpdates()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 118
    invoke-super {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onStart()V

    .line 119
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 113
    :cond_0
    invoke-super {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onStop()V

    return-void
.end method

.method protected startLocationUpdates()V
    .locals 7

    .line 291
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 304
    :cond_0
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->latitude:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iget-object v3, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->longitude:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->position:Lcom/google/android/gms/maps/model/LatLng;

    .line 306
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->map:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v3, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->latitude:Ljava/lang/Double;

    .line 307
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    iget-object v5, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->longitude:Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    iget-object v2, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->namePlace:Ljava/lang/String;

    .line 308
    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    iget-object v2, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->location:Ljava/lang/String;

    .line 309
    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    .line 306
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    .line 311
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->map:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_1

    .line 312
    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->position:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 313
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->map:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->position:Lcom/google/android/gms/maps/model/LatLng;

    const/high16 v2, 0x41880000    # 17.0f

    invoke-static {v1, v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    :cond_1
    return-void
.end method

.method protected stopLocationUpdates()V
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/MapView_Fragment;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    :cond_0
    return-void
.end method

.class public Lcom/startapps/crossx/controller/utils/PersonalRecordsUtils;
.super Ljava/lang/Object;
.source "PersonalRecordsUtils.java"


# static fields
.field private static heightWeightHelper:Lcom/startapps/crossx/controller/utils/HeightWeightHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/startapps/crossx/controller/utils/HeightWeightHelper;

    invoke-direct {v0}, Lcom/startapps/crossx/controller/utils/HeightWeightHelper;-><init>()V

    sput-object v0, Lcom/startapps/crossx/controller/utils/PersonalRecordsUtils;->heightWeightHelper:Lcom/startapps/crossx/controller/utils/HeightWeightHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToInt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 75
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p0
.end method

.method public static convertWeightToPreference(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 88
    :try_start_0
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getMeasureUnity()I

    move-result v0

    if-nez v0, :cond_0

    .line 89
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    .line 90
    :cond_0
    sget-object v0, Lcom/startapps/crossx/controller/utils/PersonalRecordsUtils;->heightWeightHelper:Lcom/startapps/crossx/controller/utils/HeightWeightHelper;

    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/startapps/crossx/controller/utils/HeightWeightHelper;->kgToLbConverter(D)D

    move-result-wide v0

    :goto_0
    const-string v2, "%.2f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 92
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p0
.end method

.method public static formatPRSFromType(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    const-string v0, ","

    const-string v1, "."

    .line 20
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "[^\\d.]"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "[^0-9-.]"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string v0, "null"

    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "carga"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "tempo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    invoke-static {p0}, Lcom/startapps/crossx/controller/utils/PersonalRecordsUtils;->convertToInt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 30
    :cond_0
    invoke-static {p0}, Lcom/startapps/crossx/controller/utils/PersonalRecordsUtils;->maskTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 34
    :cond_1
    invoke-static {p0}, Lcom/startapps/crossx/controller/utils/PersonalRecordsUtils;->convertWeightToPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-eqz p2, :cond_2

    .line 43
    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/PersonalRecordsUtils;->getMedida(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0

    :cond_3
    const-string p0, "-"

    return-object p0
.end method

.method private static getMedida(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 104
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "carga"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 105
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/startapps/crossx/model/UserModel;->getMeasureUnity()I

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "kg"

    goto :goto_0

    :cond_0
    const-string p0, "lbs"

    goto :goto_0

    :cond_1
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static maskTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 53
    invoke-static {p0}, Lcom/startapps/crossx/classes/Mask;->unmask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##:##:##"

    .line 57
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_1

    aget-char v5, v1, v3

    const/16 v6, 0x23

    if-eq v5, v6, :cond_0

    .line 58
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 59
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 63
    :cond_0
    :try_start_0
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 70
    :catch_0
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

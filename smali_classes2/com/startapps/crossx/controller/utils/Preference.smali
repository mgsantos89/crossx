.class public Lcom/startapps/crossx/controller/utils/Preference;
.super Ljava/lang/Object;
.source "Preference.java"


# static fields
.field public static final ATHLETES:Ljava/lang/String; = "athletes"

.field private static final BOX_AFFILIATE:Ljava/lang/String; = "box_affiliate"

.field public static final CALENDAR:Ljava/lang/String; = "calendar"

.field public static final CHAMPIONSHIP:Ljava/lang/String; = "championship"

.field public static final CHECKIN:Ljava/lang/String; = "checkin"

.field public static final CLASSES:Ljava/lang/String; = "classes"

.field public static final DATASHEET:Ljava/lang/String; = "datasheet"

.field private static final DATA_PAYMENT_REMOTE_ID:Ljava/lang/String; = "data_payment_remote_id"

.field public static final DAY_TRAINING:Ljava/lang/String; = "day_training"

.field public static final ECOMMERCE:Ljava/lang/String; = "ecommerce"

.field public static final ENABLE_TIMESHEET:Ljava/lang/String; = "enable_timesheet"

.field private static final ENABLE_USER_NOTIFICATION:Ljava/lang/String; = "user_notification_enable"

.field private static final FCM_TOKEN:Ljava/lang/String; = "fcm_token"

.field private static final FCM_TOKEN_SENT:Ljava/lang/String; = "fcm_token_sent"

.field private static final GYMPASS_UNIQUE_TOKEN:Ljava/lang/String; = "gympass_unique_token"

.field private static INSTANCE:Lcom/startapps/crossx/controller/utils/Preference; = null

.field public static final NOTIFICATION:Ljava/lang/String; = "notification"

.field private static final OPEN_ADDRESS_FORM:Ljava/lang/String; = "open_address_form"

.field public static final PAYMENTS:Ljava/lang/String; = "payments"

.field public static final PERSONAL_RECORDS:Ljava/lang/String; = "personal_records"

.field public static final PROFILE:Ljava/lang/String; = "profile"

.field private static final SAVED_NEWS:Ljava/lang/String; = "news"

.field private static final SAVED_PAYMENT_ENABLE:Ljava/lang/String; = "preferencePaymentEnable"

.field private static final SAVED_TIMER_DELAY_INIT:Ljava/lang/String; = "timer_delay_init"

.field private static final SAVED_USER_ADDRESS:Ljava/lang/String; = "user_address"

.field private static final SAVED_USER_ADDRESS_NUMBER:Ljava/lang/String; = "user_address_number"

.field private static final SAVED_USER_BIRTHDAY:Ljava/lang/String; = "user_birthday"

.field private static final SAVED_USER_BOX_ADDRESS:Ljava/lang/String; = "user_box_address"

.field private static final SAVED_USER_BOX_EMAIL:Ljava/lang/String; = "user_box_email"

.field private static final SAVED_USER_BOX_ID:Ljava/lang/String; = "user_box_id"

.field private static final SAVED_USER_BOX_LOGO:Ljava/lang/String; = "user_box_logo"

.field private static final SAVED_USER_BOX_NAME:Ljava/lang/String; = "user_box_name"

.field private static final SAVED_USER_BOX_PHONE:Ljava/lang/String; = "user_box_phone"

.field private static final SAVED_USER_BOX_WEBSITE:Ljava/lang/String; = "user_box_website"

.field private static final SAVED_USER_CITY:Ljava/lang/String; = "user_city"

.field private static final SAVED_USER_COMPLEMENT:Ljava/lang/String; = "user_complement"

.field private static final SAVED_USER_CPF:Ljava/lang/String; = "user_cpf"

.field private static final SAVED_USER_DISTRICT:Ljava/lang/String; = "user_district"

.field private static final SAVED_USER_EMAIL:Ljava/lang/String; = "user_email"

.field private static final SAVED_USER_FACEBOOK_ID:Ljava/lang/String; = "user_facebook_id"

.field private static final SAVED_USER_GENDER:Ljava/lang/String; = "user_gender"

.field private static final SAVED_USER_ID:Ljava/lang/String; = "user_id"

.field private static final SAVED_USER_LAST_NAME:Ljava/lang/String; = "user_last_name"

.field private static final SAVED_USER_MEASURE_UNITY:Ljava/lang/String; = "user_measure_unity"

.field private static final SAVED_USER_NAME:Ljava/lang/String; = "user_name"

.field private static final SAVED_USER_NICKNAME:Ljava/lang/String; = "user_nickname"

.field private static final SAVED_USER_NOTIFICATION_COUNT:Ljava/lang/String; = "notification_count"

.field private static final SAVED_USER_PHONE:Ljava/lang/String; = "user_phone"

.field private static final SAVED_USER_PICTURE:Ljava/lang/String; = "user_picture"

.field private static final SAVED_USER_PRIVACITY:Ljava/lang/String; = "user_privacity"

.field private static final SAVED_USER_RG:Ljava/lang/String; = "user_rg"

.field private static final SAVED_USER_ROLE:Ljava/lang/String; = "user_role"

.field private static final SAVED_USER_STATE:Ljava/lang/String; = "user_state"

.field private static final SAVED_USER_STATUS:Ljava/lang/String; = "user_title"

.field private static final SAVED_USER_STUDENT:Ljava/lang/String; = "user_student"

.field public static final SAVED_USER_TOKEN:Ljava/lang/String; = "user_token"

.field private static final SAVED_USER_WEIGHT:Ljava/lang/String; = "user_weight"

.field private static final SAVED_USER_ZIPCODE:Ljava/lang/String; = "user_zipcode"

.field public static final SETTINGS:Ljava/lang/String; = "settings"

.field public static final STORE:Ljava/lang/String; = "store"

.field public static final TIMELINE:Ljava/lang/String; = "timeline"

.field public static final TIMERS:Ljava/lang/String; = "timers"

.field public static final TOKEN_JWT:Ljava/lang/String; = "token_jwt"

.field public static final VERSION:Ljava/lang/Integer;

.field public static final VERSION_APP:Ljava/lang/String; = "VERSION_APP"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1c

    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/startapps/crossx/controller/utils/Preference;->VERSION:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/startapps/crossx/controller/utils/Preference;
    .locals 1

    .line 91
    sget-object v0, Lcom/startapps/crossx/controller/utils/Preference;->INSTANCE:Lcom/startapps/crossx/controller/utils/Preference;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/startapps/crossx/controller/utils/Preference;

    invoke-direct {v0}, Lcom/startapps/crossx/controller/utils/Preference;-><init>()V

    sput-object v0, Lcom/startapps/crossx/controller/utils/Preference;->INSTANCE:Lcom/startapps/crossx/controller/utils/Preference;

    .line 94
    :cond_0
    sget-object v0, Lcom/startapps/crossx/controller/utils/Preference;->INSTANCE:Lcom/startapps/crossx/controller/utils/Preference;

    return-object v0
.end method


# virtual methods
.method public addNotification(I)V
    .locals 2

    .line 271
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "notification_count"

    .line 272
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 273
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method protected appPrefs()Landroid/content/SharedPreferences;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/Preference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public clearPreference()V
    .locals 1

    .line 104
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public enableNotification(Z)V
    .locals 2

    .line 222
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "user_notification_enable"

    .line 223
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 224
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 2

    .line 360
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getCurrentUser()Lcom/startapps/crossx/model/UserModel;
    .locals 13

    .line 170
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "user_name"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 174
    :cond_0
    new-instance v0, Lcom/startapps/crossx/model/UserModel;

    invoke-direct {v0}, Lcom/startapps/crossx/model/UserModel;-><init>()V

    .line 175
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setName(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v3, "user_last_name"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setLastName(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v3, "user_email"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setEmail(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v3, "user_nickname"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setNickname(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v3, "user_role"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setRole(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v3, "user_title"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setUserStatus(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v3, "user_id"

    const-string v4, "0"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setId(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v3, "user_phone"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setPhone(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v3, "user_cpf"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setCpf(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v3, "user_rg"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setRg(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v3, "user_zipcode"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setZipcode(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v3, "user_address"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setAddress(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v3, "user_address_number"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setAddressNumber(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v3, "user_complement"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setComplement(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v3, "user_district"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setDistrict(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v3, "user_state"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setState(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v3, "user_facebook_id"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setFacebookID(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v3, "user_birthday"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setBirthday(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v3, "user_weight"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setWeight(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v3, "user_picture"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setImgUser(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v3, "user_gender"

    const-string v4, "m"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/startapps/crossx/model/enuns/Gender;->findByGender(Ljava/lang/String;)Lcom/startapps/crossx/model/enuns/Gender;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setGender(Lcom/startapps/crossx/model/enuns/Gender;)V

    .line 199
    new-instance v1, Lcom/startapps/crossx/model/BoxModel;

    .line 200
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v4, "user_box_id"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 201
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v5, "user_box_name"

    invoke-interface {v3, v5, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 202
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v6, "user_box_logo"

    invoke-interface {v3, v6, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 203
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v7, "user_box_website"

    invoke-interface {v3, v7, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 204
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v8, "user_box_phone"

    invoke-interface {v3, v8, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 205
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v9, "user_box_address"

    invoke-interface {v3, v9, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 206
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v10, "user_box_email"

    invoke-interface {v3, v10, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 207
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v11, "box_affiliate"

    const/4 v12, 0x0

    invoke-interface {v3, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/startapps/crossx/model/BoxModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 199
    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setBox(Lcom/startapps/crossx/model/BoxModel;)V

    .line 210
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v3, "user_city"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setCity(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "user_student"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setStudent(Z)V

    .line 212
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "user_measure_unity"

    invoke-interface {v1, v2, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setMeasureUnity(I)V

    .line 213
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "user_privacity"

    invoke-interface {v1, v2, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/UserModel;->setPrivacity(I)V

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataPaymentRemoteId()J
    .locals 4

    .line 425
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "data_payment_remote_id"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getGympassUniqueToken()Ljava/lang/String;
    .locals 3

    .line 403
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "gympass_unique_token"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInteger(Ljava/lang/String;)I
    .locals 2

    .line 368
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getNewsStatus()Z
    .locals 3

    .line 349
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "news"

    const/4 v2, 0x0

    .line 350
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getNotificationCount()I
    .locals 3

    .line 283
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "notification_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getOpenAddressForm()Ljava/lang/Boolean;
    .locals 3

    .line 457
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "open_address_form"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 447
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTimerDelayInit()I
    .locals 3

    .line 265
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "timer_delay_init"

    const/4 v2, 0x3

    .line 266
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 3

    .line 408
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "fcm_token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserStatus()Ljava/lang/String;
    .locals 3

    .line 393
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "user_title"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserToken()Ljava/lang/String;
    .locals 3

    .line 218
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "token_jwt"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/startapps/crossx/controller/utils/Preference;->mContext:Landroid/content/Context;

    return-void
.end method

.method public isBoxAffiliate()Z
    .locals 3

    .line 383
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "box_affiliate"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isNotificationEnable()Z
    .locals 3

    .line 277
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "user_notification_enable"

    const/4 v2, 0x1

    .line 278
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isTokenSent()Z
    .locals 3

    .line 416
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "fcm_token_sent"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public putBoxAffiliate(Z)V
    .locals 2

    .line 377
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "box_affiliate"

    .line 378
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 379
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public putGympassUniqueToken(Ljava/lang/String;)V
    .locals 2

    .line 397
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "gympass_unique_token"

    .line 398
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 399
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public putOpenAddressForm(Z)V
    .locals 2

    .line 451
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "open_address_form"

    .line 452
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 453
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public putUserStatus(Ljava/lang/String;)V
    .locals 2

    .line 387
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "user_title"

    .line 388
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 389
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .line 435
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveBox(Lcom/startapps/crossx/model/BoxModel;)V
    .locals 4

    .line 157
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, ""

    if-eqz p1, :cond_0

    .line 158
    invoke-virtual {p1}, Lcom/startapps/crossx/model/BoxModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/startapps/crossx/controller/utils/StringUtils;->emptyOrNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/startapps/crossx/model/BoxModel;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    const-string/jumbo v3, "user_box_id"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 159
    invoke-virtual {p1}, Lcom/startapps/crossx/model/BoxModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/startapps/crossx/controller/utils/StringUtils;->emptyOrNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/startapps/crossx/model/BoxModel;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    const-string/jumbo v3, "user_box_name"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz p1, :cond_2

    .line 160
    invoke-virtual {p1}, Lcom/startapps/crossx/model/BoxModel;->getLogoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/startapps/crossx/controller/utils/StringUtils;->emptyOrNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/startapps/crossx/model/BoxModel;->getLogoUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    const-string/jumbo v3, "user_box_logo"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz p1, :cond_3

    .line 161
    invoke-virtual {p1}, Lcom/startapps/crossx/model/BoxModel;->getWebsite()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/startapps/crossx/controller/utils/StringUtils;->emptyOrNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/startapps/crossx/model/BoxModel;->getWebsite()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_3
    move-object v2, v1

    :goto_3
    const-string/jumbo v3, "user_box_website"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz p1, :cond_4

    .line 162
    invoke-virtual {p1}, Lcom/startapps/crossx/model/BoxModel;->getTelephone()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/startapps/crossx/controller/utils/StringUtils;->emptyOrNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Lcom/startapps/crossx/model/BoxModel;->getTelephone()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_4
    move-object v2, v1

    :goto_4
    const-string/jumbo v3, "user_box_phone"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz p1, :cond_5

    .line 163
    invoke-virtual {p1}, Lcom/startapps/crossx/model/BoxModel;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/startapps/crossx/controller/utils/StringUtils;->emptyOrNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1}, Lcom/startapps/crossx/model/BoxModel;->getAddress()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_5
    move-object v2, v1

    :goto_5
    const-string/jumbo v3, "user_box_address"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz p1, :cond_6

    .line 164
    invoke-virtual {p1}, Lcom/startapps/crossx/model/BoxModel;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/startapps/crossx/controller/utils/StringUtils;->emptyOrNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p1}, Lcom/startapps/crossx/model/BoxModel;->getEmail()Ljava/lang/String;

    move-result-object v1

    :cond_6
    const-string/jumbo v2, "user_box_email"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz p1, :cond_7

    .line 165
    invoke-virtual {p1}, Lcom/startapps/crossx/model/BoxModel;->isAffiliate()Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_6

    :cond_7
    const/4 p1, 0x0

    :goto_6
    const-string v1, "box_affiliate"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 166
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public savePicture(Ljava/lang/String;)V
    .locals 2

    .line 240
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "user_picture"

    .line 241
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 242
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public savePrivacity(I)V
    .locals 2

    .line 234
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "user_privacity"

    .line 235
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 236
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveRole(Ljava/lang/String;)V
    .locals 2

    .line 246
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "user_role"

    .line 247
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 248
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveTimerDelay(I)V
    .locals 2

    .line 258
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "timer_delay_init"

    .line 259
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 260
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveUnityMeasure(I)V
    .locals 2

    .line 228
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "user_measure_unity"

    .line 229
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 230
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveUser(Lcom/startapps/crossx/model/UserModel;)V
    .locals 4

    .line 114
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    sget-object v1, Lcom/startapps/crossx/controller/utils/Preference;->VERSION:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "VERSION_APP"

    invoke-virtual {v0, v2, v1}, Lcom/startapps/crossx/controller/utils/Preference;->setInteger(Ljava/lang/String;I)V

    .line 115
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "user_id"

    .line 116
    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "user_name"

    .line 117
    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "user_last_name"

    .line 118
    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getLastName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "user_email"

    .line 119
    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "user_nickname"

    .line 120
    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "user_birthday"

    .line 121
    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getBirthday()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "user_picture"

    .line 122
    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getImgUser()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "user_weight"

    .line 123
    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getWeight()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "user_role"

    .line 124
    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getRole()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "user_title"

    .line 125
    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getUserStatus()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "user_phone"

    .line 126
    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getPhone()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "user_cpf"

    .line 127
    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getCpf()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "user_rg"

    .line 128
    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getRg()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "user_zipcode"

    .line 129
    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getZipcode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "user_address"

    .line 130
    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "user_address_number"

    .line 131
    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getAddressNumber()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "user_complement"

    .line 132
    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getComplement()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "user_district"

    .line 133
    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getDistrict()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "user_state"

    .line 134
    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 136
    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getGender()Lcom/startapps/crossx/model/enuns/Gender;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getGender()Lcom/startapps/crossx/model/enuns/Gender;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/enuns/Gender;->getGender()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string/jumbo v3, "user_gender"

    .line 135
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 138
    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/BoxModel;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    const-string/jumbo v3, "user_box_id"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 139
    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/BoxModel;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    const-string/jumbo v3, "user_box_name"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 140
    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/BoxModel;->getLogoUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    move-object v1, v2

    :goto_3
    const-string/jumbo v3, "user_box_logo"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 141
    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/BoxModel;->getWebsite()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_4
    move-object v1, v2

    :goto_4
    const-string/jumbo v3, "user_box_website"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 142
    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/BoxModel;->getTelephone()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_5
    move-object v1, v2

    :goto_5
    const-string/jumbo v3, "user_box_phone"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 143
    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/BoxModel;->getAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_6
    move-object v1, v2

    :goto_6
    const-string/jumbo v3, "user_box_address"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 144
    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/BoxModel;->getEmail()Ljava/lang/String;

    move-result-object v2

    :cond_7
    const-string/jumbo v1, "user_box_email"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "user_city"

    .line 145
    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "user_student"

    .line 146
    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->isStudent()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "user_facebook_id"

    .line 147
    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getFacebookID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "user_measure_unity"

    .line 148
    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getMeasureUnity()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "user_privacity"

    .line 149
    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getPrivacity()I

    move-result p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 150
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveUserStatus(Ljava/lang/String;)V
    .locals 2

    .line 252
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "user_title"

    .line 253
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 254
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setBoolean(Ljava/lang/String;Z)V
    .locals 1

    .line 364
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setDataPaymentRemoteId(J)V
    .locals 2

    .line 429
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "data_payment_remote_id"

    .line 430
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 431
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setInteger(Ljava/lang/String;I)V
    .locals 1

    .line 372
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setNewsStatus(Z)V
    .locals 2

    .line 354
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "news"

    .line 355
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 356
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 2

    .line 412
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "fcm_token"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setTokenSent(Z)V
    .locals 2

    .line 420
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "fcm_token_sent"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public storeBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    .line 443
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public storeString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 439
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/Preference;->appPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.class public Lcom/startapps/crossx/controller/network/URLs;
.super Ljava/lang/Object;
.source "URLs.java"


# static fields
.field public static final DELETE_USER_DELETE_ACCOUNT:Ljava/lang/String; = "user-delete-account"

.field public static final PATH_ADDRESS_BY_ZIPCODE:Ljava/lang/String; = "https://api.appcrossx.com/v3/account/address"

.field public static final PATH_AUTH_FORGOT_PASSWORD:Ljava/lang/String; = "auth/forgot"

.field public static final PATH_AUTH_SIGN_IN:Ljava/lang/String; = "auth/sign-in"

.field public static final PATH_AUTH_SIGN_UP:Ljava/lang/String; = "auth/sign-up"

.field public static final PATH_BOX_DETAIL:Ljava/lang/String; = "/v3/box/{idBox}"

.field public static final PATH_BOX_FEEDBACK:Ljava/lang/String; = "/v3/feedbacks"

.field public static final PATH_BOX_SEARCH:Ljava/lang/String; = "box/search"

.field public static final PATH_BOX_USERS:Ljava/lang/String; = "/v3/box/users"

.field public static final PATH_CHAMPIONSHIP:Ljava/lang/String; = "/v3/championships"

.field public static final PATH_CHAMPIONSHIP_DETAIL:Ljava/lang/String; = "/v3/championship/{id}"

.field public static final PATH_CHECK_IN_CANCEL:Ljava/lang/String; = "checkin/{check_in_id}/cancel"

.field public static final PATH_CHECK_IN_CHANGE:Ljava/lang/String; = "checkin/{check_in_id}/change"

.field public static final PATH_CHECK_IN_CONFIRM_RESERVATION:Ljava/lang/String; = "checkin/{check_in_id}/confirm-reservation"

.field public static final PATH_CHECK_IN_LIST_BY_GYM_CLASS_ID:Ljava/lang/String; = "checkin/list-by-class/{gym_class_id}"

.field public static final PATH_CHECK_IN_MAKE:Ljava/lang/String; = "checkin/make"

.field public static final PATH_CREDITS_CARDS:Ljava/lang/String; = "credit_cards"

.field public static final PATH_DEFAULT_CARD:Ljava/lang/String; = "credit_cards/default"

.field public static final PATH_DELETE_COMMENTS:Ljava/lang/String; = "/v3/box/{idBox}/timeline/{postId}/comment/{commentId}"

.field public static final PATH_DELETE_FCM_TOKEN:Ljava/lang/String; = "fcm-registration/{registration_token}"

.field public static final PATH_DELETE_USER_CREDIT_CARD:Ljava/lang/String; = "/v3/user-credit-card/{id}"

.field public static final PATH_DETAILS_MEMBERSHIP:Ljava/lang/String; = "user_memberships/{user_membership_id}"

.field public static final PATH_EDIT_POST_TIMELINE:Ljava/lang/String; = "/v3/box/{idBox}/timeline/post/{postId}"

.field public static final PATH_ENABLE_RECURRENCE:Ljava/lang/String; = "user_memberships/{user_membership_id}/recurrence"

.field public static final PATH_GET_BOX:Ljava/lang/String; = "box/{box_id}"

.field public static final PATH_GYM_CLASS:Ljava/lang/String; = "gym-classes/{gym_class_id}"

.field public static final PATH_GYM_CLASSES:Ljava/lang/String; = "gym-classes"

.field public static final PATH_INVOICE_PAYMENT:Ljava/lang/String; = "/v3/payment/{id}"

.field public static final PATH_INVOICE_PAYMENT_SEND_EMAIL:Ljava/lang/String; = "/v3/payment/{id}/send-email"

.field public static final PATH_MEMBERSHIP_PAYMENT_BANK_SLIP:Ljava/lang/String; = "user_memberships/{membership_id}/payments/bank_slip"

.field public static final PATH_MEMBERSHIP_PAYMENT_CREDIT_CARD:Ljava/lang/String; = "user_memberships/{membership_id}/payments/credit_card"

.field public static final PATH_ONLINE_PAYMENT:Ljava/lang/String; = "payments/{data_payment_id}"

.field public static final PATH_PAYMENT:Ljava/lang/String; = "payments"

.field public static final PATH_PAYMENT_HISTORY:Ljava/lang/String; = "payments/history"

.field public static final PATH_PAYMENT_METHODS:Ljava/lang/String; = "boxes/{box_id}/user_payment_methods"

.field public static final PATH_PAYMENT_SETTINGS:Ljava/lang/String; = "boxes/{box_id}/payment_settings"

.field public static final PATH_PAY_ALL_WHIT_BANK_SLIP:Ljava/lang/String; = "payments/bank_slip"

.field public static final PATH_PAY_ALL_WHIT_CREDIT_CARD:Ljava/lang/String; = "payments/credit_card"

.field public static final PATH_POST_COMMENT:Ljava/lang/String; = "/v3/box/{idBox}/timeline/{postId}/comment"

.field public static final PATH_POST_COMMENTS:Ljava/lang/String; = "/v3/box/{idBox}/timeline/{postId}/comment"

.field public static final PATH_POST_LIKE:Ljava/lang/String; = "/v3/box/{idBox}/timeline/{postId}/like"

.field public static final PATH_POST_LIKES:Ljava/lang/String; = "/v3/box/{idBox}/timeline/{postId}/like"

.field public static final PATH_REGISTER_CREDIT_CARD:Ljava/lang/String; = "credit_cards"

.field public static final PATH_REGISTER_FCM_TOKEN:Ljava/lang/String; = "fcm-registration"

.field public static final PATH_REGISTER_USER_CREDIT_CARD:Ljava/lang/String; = "/v3/user-credit-card"

.field public static final PATH_TIMELINE:Ljava/lang/String; = "/v3/box/{idBox}/timeline"

.field public static final PATH_TIMELINE_DELET:Ljava/lang/String; = "/v3/box/{idBox}/timeline/delete"

.field public static final PATH_TIMELINE_PUBLISH:Ljava/lang/String; = "/v3/box/{idBox}/timeline/post"

.field public static final PATH_TO_PAY_BY_ID:Ljava/lang/String; = "user_memberships/{user_membership_id}/payments"

.field public static final PATH_USERS:Ljava/lang/String; = "/v3/users"

.field public static final PATH_USER_CREDIT_CARD:Ljava/lang/String; = "/v3/user-credit-card"

.field public static final PATH_USER_CREDIT_CARD_SET_DEFAULT:Ljava/lang/String; = "/v3/user-credit-card/{id}/default"

.field public static final PATH_USER_MEMBERSHIP:Ljava/lang/String; = "/v3/user-memberships/{id}"

.field public static final PATH_USER_MEMBERSHIPS:Ljava/lang/String; = "/v3/user-memberships"

.field public static final PATH_USER_MEMBERSHIPS2:Ljava/lang/String; = "user_memberships"

.field public static final PATH_USER_MEMBERSHIP_CHECKINS:Ljava/lang/String; = "/v3/user-memberships/{id}/checkins"

.field public static final PATH_USER_MEMBERSHIP_DETAILS:Ljava/lang/String; = "user_memberships/{membership_id}/financial_invoices"

.field public static final PATH_USER_MEMBERSHIP_RENEW:Ljava/lang/String; = "/v3/user-memberships/{id}/renew"

.field public static final PATH_USER_UPDATE:Ljava/lang/String; = "users"

.field public static final PATH_USER_UPDATE_IMAGE:Ljava/lang/String; = "user-update-image"

.field public static final PATH_WORKOUT_DAY:Ljava/lang/String; = "/v3/workout/day"

.field public static final POST_TIMELINE_BLOCK_ALL_FROM_USER:Ljava/lang/String; = "/v3/box/{idBox}/timeline/{postId}/blockAllFromUser"

.field public static final POST_TIMELINE_POST_COMPLAINT:Ljava/lang/String; = "/v3/box/{idBox}/timeline/{postId}/complaintPost"

.field public static final POST_TIMELINE_USER_COMPLAINT:Ljava/lang/String; = "/v3/box/{idBox}/timeline/{postId}/complaintUser"

.field public static final POST_USER_LGPD_TERMS:Ljava/lang/String; = "user-lgpd-terms"

.field public static URL_ACCOUNT_PAYMENTS:Ljava/lang/String; = "https://api.appcrossx.com/v3/account/payments"

.field public static URL_ACCOUNT_STATISTICS:Ljava/lang/String; = "https://api.appcrossx.com/v3/account/statistics"

.field public static URL_ADD_RESULT_WORKOUT:Ljava/lang/String; = "https://api.appcrossx.com/v3/workout/result"

.field public static URL_ADD_USERS_GROUP:Ljava/lang/String; = "https://api.appcrossx.com/v3/athletes/add-user"

.field public static URL_ASSIGN_COACH:Ljava/lang/String; = "https://api.appcrossx.com/v3/workout/assign-coach"

.field private static URL_BOX_POST:Ljava/lang/String; = "https://api.appcrossx.com/v3/box/%s/timeline/post"

.field public static final URL_BOX_SEARCH:Ljava/lang/String; = "https://api.appcrossx.com/v3/box/search"

.field public static URL_BOX_USERS:Ljava/lang/String; = "https://api.appcrossx.com/v3/box/users"

.field public static URL_CREATE_GROUP:Ljava/lang/String; = "https://api.appcrossx.com/v3/athletes/create-group"

.field public static URL_DELETE_GROUP:Ljava/lang/String; = "https://api.appcrossx.com/v3/athletes/delete-group"

.field public static URL_EDIT_RESULT_WORKOUT:Ljava/lang/String; = "https://api.appcrossx.com/v3/workout/result-update"

.field public static URL_GROUP_MESSAGES:Ljava/lang/String; = "https://api.appcrossx.com/v3/athletes/group-messages"

.field public static URL_GROUP_USER:Ljava/lang/String; = "https://api.appcrossx.com/v3/athletes/my-groups"

.field public static URL_PERSONAL_RECORD:Ljava/lang/String; = "https://api.appcrossx.com/v3/personal-records/benchmarks"

.field public static URL_PERSONAL_RECORD_DELETE:Ljava/lang/String; = "https://api.appcrossx.com/v3/personal-records/delete"

.field public static URL_PERSONAL_RECORD_EXERCISE:Ljava/lang/String; = "https://api.appcrossx.com/v3/personal-records/exercises"

.field public static URL_PERSONAL_RECORD_EXERCISE_HISTORIC:Ljava/lang/String; = "https://api.appcrossx.com/v3/personal-records/details"

.field public static URL_PERSONAL_RECORD_SAVE:Ljava/lang/String; = "https://api.appcrossx.com/v3/personal-records/save"

.field public static URL_PERSONAL_RECORD_UPDATE:Ljava/lang/String; = "https://api.appcrossx.com/v3/personal-records/update"

.field public static URL_POST_MESAAGE:Ljava/lang/String; = "https://api.appcrossx.com/v3/athletes/post"

.field public static URL_RANKING:Ljava/lang/String; = "https://api.appcrossx.com/v3/workout/ranking"

.field public static URL_REMOVE_CKECHIN:Ljava/lang/String; = "https://api.appcrossx.com/v3/workout/remove-checkin"

.field private static URL_REMOVE_POST:Ljava/lang/String; = "https://api.appcrossx.com/v3/box/%s/timeline/delete"

.field private static URL_TIME_LINE:Ljava/lang/String; = "https://api.appcrossx.com/v3/box/%s/timeline"

.field public static URL_USERS:Ljava/lang/String; = "https://api.appcrossx.com/v3/users"

.field public static URL_USERS_DELETE_GROUP:Ljava/lang/String; = "https://api.appcrossx.com/v3/athletes/remove-user"

.field public static URL_USERS_GROUP:Ljava/lang/String; = "https://api.appcrossx.com/v3/athletes/group-users"

.field public static URL_USER_ALL_CHECKINS:Ljava/lang/String; = "https://api.appcrossx.com/v3/account/checkins"

.field public static URL_USER_ALL_WORKOUT:Ljava/lang/String; = "https://api.appcrossx.com/v3/account/workouts-list-all"

.field public static URL_USER_CHANGE_PASSWORD:Ljava/lang/String; = "https://api.appcrossx.com/v3/account/changepassword"

.field public static URL_USER_CHANGE_PICTURE:Ljava/lang/String; = "https://api.appcrossx.com/v3/account/changepicture"

.field public static URL_USER_LOGIN:Ljava/lang/String; = "https://api.appcrossx.com/v3/account/login"

.field public static URL_USER_NOTIFICATION:Ljava/lang/String; = "https://api.appcrossx.com/v3/account/notifications"

.field public static URL_USER_PROFILE:Ljava/lang/String; = "https://api.appcrossx.com/v3/account/profile"

.field public static URL_USER_REGISTER:Ljava/lang/String; = "https://api.appcrossx.com/v3/account/register"

.field public static URL_USER_RESET_PASSWORD:Ljava/lang/String; = "https://api.appcrossx.com/v3/account/resetpassword"

.field public static URL_USER_ROLE:Ljava/lang/String; = "https://api.appcrossx.com/v3/account/role"

.field public static URL_USER_WORKOUT:Ljava/lang/String; = "https://api.appcrossx.com/v3/account/workouts"

.field public static URL_WORKOUT_ALTER_CKECHIN:Ljava/lang/String; = "https://api.appcrossx.com/v3/workout/checkin-change"

.field public static URL_WORKOUT_CKECHIN:Ljava/lang/String; = "https://api.appcrossx.com/v3/workout/checkin"

.field public static URL_WORKOUT_DAY:Ljava/lang/String; = "https://api.appcrossx.com/v3/workout/day"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUrlBoxPost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 101
    sget-object v0, Lcom/startapps/crossx/controller/network/URLs;->URL_BOX_POST:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUrlRemovePost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 71
    sget-object v0, Lcom/startapps/crossx/controller/network/URLs;->URL_REMOVE_POST:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUrlTimeLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 65
    sget-object v0, Lcom/startapps/crossx/controller/network/URLs;->URL_TIME_LINE:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

class LoginResponseModel {
  String token;
  int expires;
  User user;
  bool returningUser;

  LoginResponseModel({
    this.token,
    this.expires,
    this.returningUser,
    this.user,
  });

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    expires = json['expires'];
    returningUser = json['returningUser'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    data['expires'] = this.expires;
    data['returningUser'] = this.returningUser;

    if(this.user !=null) {
      data['user'] = this.user.toJson();
    }

    return data;
  }
}

class User {
  int id;
  String role;
  bool isActive;
  int reputation;
  String email;
  String name;
  String lastName;
  String fullName;
  String avatarUrl;
  String gender;
  String country;
  String about;
  bool isProfileFilled;
  String facebook;
  String instagram;
  String twitter;
  String website;
  String bestUserPhoto;
  bool allowRejectedPhotoToBeViewed;
  bool isMudeFilterActive;
  bool notPhotoComments;
  bool notPhotoLikes;
  bool notPhotoFeatured;
  bool notPhotoPublished;
  bool notPhotoPromoted;
  bool notNewDiscussion;
  bool notReplyToDiscussion;
  bool notCommentsVotes;
  bool notAccountChangesAndUpdates;
  bool notNewFollower;
  String isFreeAccountOffer;
  bool hasAnActiveSubscription;
  bool isUserSubscribeToReceiveEmail;
  int numberOfUploadPhotoAllowed;
  String provider;
  int maxNumberOfPhotoLimit;
  int numberOfPhotoAlreadyUploaded;
  bool isAdmin;
  String tokenWillBeResetOn;
  String joiningDate;
  String stripeId;
  bool isFollowing;
  int followingCount;
  int followedByCount;
  int numberOfSuperLikeAvailable;
  int numberOfPhotoPublished;
  String userName;
  int userTokens;
  int nextPhotoUploadPrice;
  String subscriptionType;
  String automaticProfileBackGround;
  bool isStatsPublic;
  List skills;
  int numberOfGalleriesAllowed;
  bool darkMode;

  User({
    this.id,
    this.role,
    this.isActive,
    this.reputation,
    this.email,
    this.name,
    this.lastName,
    this.fullName,
    this.avatarUrl,
    this.gender,
    this.country,
    this.about,
    this.isProfileFilled,
    this.facebook,
    this.instagram,
    this.twitter,
    this.website,
    this.bestUserPhoto,
    this.allowRejectedPhotoToBeViewed,
    this.isMudeFilterActive,
    this.notPhotoComments,
    this.notPhotoLikes,
    this.notPhotoFeatured,
    this.notPhotoPublished,
    this.notPhotoPromoted,
    this.notNewDiscussion,
    this.notReplyToDiscussion,
    this.notCommentsVotes,
    this.notAccountChangesAndUpdates,
    this.notNewFollower,
    this.isFreeAccountOffer,
    this.hasAnActiveSubscription,
    this.isUserSubscribeToReceiveEmail,
    this.numberOfUploadPhotoAllowed,
    this.provider,
    this.maxNumberOfPhotoLimit,
    this.numberOfPhotoAlreadyUploaded,
    this.isAdmin,
    this.tokenWillBeResetOn,
    this.joiningDate,
    this.stripeId,
    this.isFollowing,
    this.followingCount,
    this.followedByCount,
    this.numberOfSuperLikeAvailable,
    this.numberOfPhotoPublished,
    this.userName,
    this.userTokens,
    this.nextPhotoUploadPrice,
    this.subscriptionType,
    this.automaticProfileBackGround,
    this.isStatsPublic,
    this.skills,
    this.numberOfGalleriesAllowed,
    this.darkMode,
  });
  User.fromJson(Map<String, dynamic> json){
    id = json['id'];
    role = json['role'];
    isActive = json['isActive'];
    reputation = json['reputation'];
    email = json['email'];
    name = json['name'];
    lastName = json['lastName'];
    fullName = json['fullName'];
    avatarUrl = json['avatarUrl'];
    gender = json['gender'];
    country = json['country'];
    about = json['about'];
    isProfileFilled = json['isProfileFilled'];
    facebook = json['facebook'];
    instagram = json['instagram'];
    twitter = json['twitter'];
    website = json['website'];
    bestUserPhoto = json['bestUserPhoto'];
    allowRejectedPhotoToBeViewed = json['allowRejectedPhotoToBeViewed'];
    isMudeFilterActive = json['isMudeFilterActive'];
    notPhotoComments = json['notPhotoComments'];
    notPhotoLikes = json['notPhotoLikes'];
    notPhotoFeatured = json['notPhotoFeatured'];
    notPhotoPublished = json['notPhotoPublished'];
    notPhotoPromoted = json['notPhotoPromoted'];
    notNewDiscussion = json['notNewDiscussion'];
    notReplyToDiscussion = json['notReplyToDiscussion'];
    notCommentsVotes = json['notCommentsVotes'];
    notAccountChangesAndUpdates = json['notAccountChangesAndUpdates'];
    notNewFollower = json['notNewFollower'];
    isFreeAccountOffer = json['isFreeAccountOffer'];
    hasAnActiveSubscription = json['hasAnActiveSubscription'];
    isUserSubscribeToReceiveEmail = json['isUserSubscribeToReceiveEmail'];
    numberOfUploadPhotoAllowed = json['numberOfUploadPhotoAllowed'];
    provider = json['provider'];
    maxNumberOfPhotoLimit = json['maxNumberOfPhotoLimit'];
    numberOfPhotoAlreadyUploaded = json['numberOfPhotoAlreadyUploaded'];
    isAdmin = json['isAdmin'];
    tokenWillBeResetOn = json['tokenWillBeResetOn'];
    joiningDate = json['joiningDate'];
    stripeId = json['stripeId'];
    isFollowing = json['isFollowing'];
    followingCount = json['followingCount'];
    followedByCount = json['followedByCount'];
    numberOfSuperLikeAvailable = json['numberOfSuperLikeAvailable'];
    numberOfPhotoPublished = json['numberOfPhotoPublished'];
    userName = json['userName'];
    userTokens = json['userTokens'];
    nextPhotoUploadPrice = json['nextPhotoUploadPrice'];
    subscriptionType = json['subscriptionType'];
    automaticProfileBackGround = json['automaticProfileBackGround'];
    isStatsPublic = json['isStatsPublic'];
    skills = json['skills'].cast<String>();
    numberOfGalleriesAllowed = json['numberOfGalleriesAllowed'];
    darkMode = json['darkMode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['id'] =this.id;
    data['role'] =this.role;
    data['isActive'] =this.isActive;
    data['reputation'] =this.reputation;
    data['email'] =this.email;
    data['name'] =this.name;
    data['lastName'] =this.lastName;
    data['fullName'] =this.fullName;
    data['avatarUrl'] =this.avatarUrl;
    data['gender'] =this.gender;
    data['country'] =this.country;
    data['about'] =this.about;
    data['isProfileFilled'] =this.isProfileFilled;
    data['facebook'] = this.facebook;
    data['instagram'] =this.instagram;
    data['twitter'] =this.twitter;
    data['website'] =this.website;
    data['bestUserPhoto'] =this.bestUserPhoto;
    data['allowRejectedPhotoToBeViewed'] =this.allowRejectedPhotoToBeViewed;
    data['isMudeFilterActive'] =this.isMudeFilterActive;
    data['notPhotoComments'] =this.notPhotoComments;
    data['notPhotoLikes'] =this.notPhotoLikes;
    data['notPhotoFeatured'] =this.notPhotoFeatured;
    data['notPhotoPublished'] =this.notPhotoPublished;
    data['notPhotoPromoted'] =this.notPhotoPromoted;
    data['notNewDiscussion'] =this.notNewDiscussion;
    data['notReplyToDiscussion'] =this.notReplyToDiscussion;
    data['notCommentsVotes'] =this.notCommentsVotes;
    data['notAccountChangesAndUpdates'] =this.notAccountChangesAndUpdates;
    data['notNewFollower'] =this.notNewFollower;
    data['isFreeAccountOffer'] =this.isFreeAccountOffer;
    data['hasAnActiveSubscription'] =this.hasAnActiveSubscription;
    data['isUserSubscribeToReceiveEmail'] =this.isUserSubscribeToReceiveEmail;
    data['numberOfUploadPhotoAllowed'] =this.numberOfUploadPhotoAllowed;
    data['provider'] =this.provider;
    data['maxNumberOfPhotoLimit'] =this.maxNumberOfPhotoLimit;
    data['numberOfPhotoAlreadyUploaded'] =this.numberOfPhotoAlreadyUploaded;
    data['isAdmin'] =this.isAdmin;
    data['tokenWillBeResetOn'] =this.tokenWillBeResetOn;
    data['joiningDate'] =this.joiningDate;
    data['stripeId'] =this.stripeId;
    data['isFollowing'] =this.isFollowing;
    data['followingCount'] =this.followingCount;
    data['followedByCount'] =this.followedByCount;
    data['numberOfSuperLikeAvailable'] =this.numberOfSuperLikeAvailable;
    data['numberOfPhotoPublished'] =this.numberOfPhotoPublished;
    data['userName'] =this.userName;
    data['userTokens'] =this.userTokens;
    data['nextPhotoUploadPrice'] =this.nextPhotoUploadPrice;
    data['subscriptionType'] =this.subscriptionType;
    data['automaticProfileBackGround'] =this.automaticProfileBackGround;
    data['isStatsPublic'] =this.isStatsPublic;
    if(this.skills != null){
      data['skills'] = this.skills.map((v) => v.toJson()).toList();
    }
    data['numberOfGalleriesAllowed'] =this.numberOfGalleriesAllowed;
    data['darkMode'] =this.darkMode;

    return data;
  }

}
// ignore_for_file: non_constant_identifier_names

part of 'values.dart';

class CertificationData {
  CertificationData({
    required this.title,
    required this.image,
    required this.imageSize,
    required this.url,
    required this.awardedBy,
  });

  final String image;
  final double imageSize;
  final String url;
  final String title;
  final String awardedBy;
}

class NoteWorthyProjectDetails {
  NoteWorthyProjectDetails({
    required this.projectName,
    required this.isOnPlayStore,
    required this.isPublic,
    required this.technologyUsed,
    required this.isWeb,
    required this.isLive,
    this.projectDescription,
    this.playStoreUrl,
    this.webUrl,
    this.hasBeenReleased,
    this.gitHubUrl,
  });

  final String projectName;
  final bool isPublic;
  final bool isOnPlayStore;
  final bool isWeb;
  final String? projectDescription;
  final bool isLive;
  final bool? hasBeenReleased;
  final String? playStoreUrl;
  final String? gitHubUrl;
  final String? webUrl;
  final String? technologyUsed;
}

class ExperienceData {
  ExperienceData({
    required this.position,
    required this.roles,
    required this.location,
    required this.duration,
    required this.company,
    this.companyUrl,
  });

  final String company;
  final String? companyUrl;
  final String location;
  final String duration;
  final String position;
  final List<String> roles;
}

class SkillData {
  SkillData({
    required this.skillName,
    required this.skillLevel,
  });

  final String skillName;
  final double skillLevel;
}

class SubMenuData {
  SubMenuData({
    required this.title,
    this.isSelected,
    this.content,
    this.skillData,
    this.isAnimation = false,
  });

  final String title;
  final String? content;
  final List<SkillData>? skillData;
  bool isAnimation;
  bool? isSelected;
}

class Data {
  static List<NavItemData> menuItems = [
    NavItemData(name: StringConst.HOME, route: StringConst.HOME_PAGE),
    NavItemData(name: StringConst.ABOUT, route: StringConst.ABOUT_PAGE),
    NavItemData(name: StringConst.WORKS, route: StringConst.WORKS_PAGE),
    NavItemData(
      name: StringConst.EXPERIENCE,
      route: StringConst.EXPERIENCE_PAGE,
    ),
    // NavItemData(
    //   name: StringConst.CERTIFICATIONS,
    //   route: StringConst.CERTIFICATION_PAGE,
    // ),
    NavItemData(name: StringConst.CONTACT, route: StringConst.CONTACT_PAGE),
  ];

  static List<SocialData> socialData = [
    SocialData(
      name: StringConst.GITHUB,
      iconData: FontAwesomeIcons.github,
      url: StringConst.GITHUB_URL,
    ),
    SocialData(
      name: StringConst.LINKED_IN,
      iconData: FontAwesomeIcons.linkedin,
      url: StringConst.LINKED_IN_URL,
    ),
    SocialData(
      name: StringConst.TWITTER,
      iconData: FontAwesomeIcons.twitter,
      url: StringConst.TWITTER_URL,
    ),
    SocialData(
      name: StringConst.INSTAGRAM,
      iconData: FontAwesomeIcons.instagram,
      url: StringConst.INSTAGRAM_URL,
    ),
    SocialData(
      name: StringConst.TELEGRAM,
      iconData: FontAwesomeIcons.telegram,
      url: StringConst.TELEGRAM_URL,
    ),
  ];

  static List<String> mobileTechnologies = [
    "Flutter",
    "Android",
    "Dart",
    "Kotlin",
    "Jetpack Compose",
    "Java",
  ];

  static List<String> otherTechnologies = [
    "HTML5",
    "CSS3",
    "Javascript",
    "Chakra UI",
    "Tailwind CSS",
    "PHP",
    "Figma",
    "Adobe XD",
    "Whimsical",
    "GitHub",
    "GitLab",
    "Firebase",
    "MySQL",
    "Rive",
    "C",
    "C++",
    "Python",
  ];
  static List<SocialData> socialData1 = [
    SocialData(
      name: StringConst.LINKED_IN,
      iconData: FontAwesomeIcons.linkedin,
      url: StringConst.LINKED_IN_URL,
    ),
    SocialData(
      name: StringConst.GITHUB,
      iconData: FontAwesomeIcons.github,
      url: StringConst.GITHUB_URL,
    ),
    SocialData(
      name: StringConst.GITLAB,
      iconData: FontAwesomeIcons.gitlab,
      url: StringConst.GITLAB_URL,
    ),
    SocialData(
      name: StringConst.INSTAGRAM,
      iconData: FontAwesomeIcons.instagram,
      url: StringConst.INSTAGRAM_URL,
    ),
  ];

  static List<SocialData> socialData2 = [
    SocialData(
      name: StringConst.LINKED_IN,
      iconData: FontAwesomeIcons.linkedin,
      url: StringConst.LINKED_IN_URL,
    ),
    SocialData(
      name: StringConst.GITHUB,
      iconData: FontAwesomeIcons.github,
      url: StringConst.GITHUB_URL,
    ),
    SocialData(
      name: StringConst.GITLAB,
      iconData: FontAwesomeIcons.gitlab,
      url: StringConst.GITLAB_URL,
    ),
    SocialData(
      name: StringConst.INSTAGRAM,
      iconData: FontAwesomeIcons.instagram,
      url: StringConst.INSTAGRAM_URL,
    ),
  ];

  static List<ProjectItemData> recentWorks = [
    // Projects.UPCOMING,
    Projects.BUAHTANGAN,
    Projects.DITONTON,
    Projects.PLANTIST,
    Projects.TABLETOP,
    Projects.EDGESTORE,
    Projects.RESTAURANT,
    Projects.MASAKIN,
  ];

  static List<ProjectItemData> projects = [
    // Projects.UPCOMING,
    Projects.BUAHTANGAN,
    Projects.DITONTON,
    Projects.PLANTIST,
    Projects.TABLETOP,
    Projects.EDGESTORE,
    Projects.RESTAURANT,
    Projects.MASAKIN,
    Projects.BOOKSHELF,
    Projects.KENAK,
  ];

  static List<NoteWorthyProjectDetails> noteworthyProjects = [
    NoteWorthyProjectDetails(
      projectName: StringConst.UDAGRAM_IMAGE_FILTERING,
      isPublic: true,
      isOnPlayStore: false,
      isWeb: false,
      technologyUsed: StringConst.UDAGRAM_IMAGE_FILTERING_TECH,
      projectDescription: StringConst.UDAGRAM_IMAGE_FILTERING_DETAIL,
      gitHubUrl: StringConst.UDAGRAM_IMAGE_FILTERING_GITHUB_URL,
      isLive: false,
    ),
    NoteWorthyProjectDetails(
      projectName: StringConst.SERVERLESS_TODO,
      isPublic: true,
      isOnPlayStore: false,
      isWeb: false,
      technologyUsed: StringConst.SERVERLESS_TODO_TECH,
      projectDescription: StringConst.SERVERLESS_TODO_DETAIL,
      gitHubUrl: StringConst.SERVERLESS_TODO_GITHUB_URL,
      isLive: false,
    ),
    NoteWorthyProjectDetails(
      projectName: StringConst.PYTHON_ALGORITHMS,
      isPublic: true,
      isOnPlayStore: false,
      isWeb: false,
      technologyUsed: StringConst.PYTHON,
      projectDescription: StringConst.PYTHON_ALGORITHMS_DETAIL,
      gitHubUrl: StringConst.PYTHON_ALGORITHMS_GITHUB_URL,
      isLive: false,
    ),
    NoteWorthyProjectDetails(
      projectName: StringConst.PROGRAMMING_FOR_DATA_SCIENCE,
      isPublic: true,
      isOnPlayStore: false,
      isWeb: false,
      technologyUsed: StringConst.PYTHON,
      projectDescription: StringConst.PROGRAMMING_FOR_DATA_SCIENCE_DETAIL,
      gitHubUrl: StringConst.PROGRAMMING_FOR_DATA_SCIENCE_GITHUB_URL,
      isLive: false,
    ),
    NoteWorthyProjectDetails(
      projectName: StringConst.ONBOARDING_APP,
      isPublic: true,
      isOnPlayStore: false,
      isWeb: false,
      technologyUsed: StringConst.FLUTTER,
      projectDescription: StringConst.ONBOARDING_APP_DETAIL,
      gitHubUrl: StringConst.ONBOARDING_APP_GITHUB_URL,
      isLive: false,
    ),
    NoteWorthyProjectDetails(
      projectName: StringConst.FINOPP,
      isPublic: true,
      isOnPlayStore: false,
      isWeb: false,
      technologyUsed: StringConst.FLUTTER,
      projectDescription: StringConst.FINOPP_DETAIL,
      gitHubUrl: StringConst.FINOPP_GITHUB_URL,
      isLive: false,
    ),
    NoteWorthyProjectDetails(
      projectName: StringConst.AMOR_APP,
      isPublic: true,
      isOnPlayStore: false,
      isWeb: true,
      technologyUsed: StringConst.FLUTTER,
      projectDescription: StringConst.AMOR_APP_DETAIL,
      gitHubUrl: StringConst.AMOR_APP_GITHUB_URL,
      webUrl: StringConst.AMOR_APP_WEB_URL,
      isLive: true,
    ),
  ];

  static List<CertificationData> certificationData = [
    CertificationData(
      title: StringConst.MSC_IT,
      url: StringConst.CMU_CERT_URL,
      image: ImagePath.CMU_MASTERS_CERT,
      imageSize: 0.325,
      awardedBy: StringConst.CMU,
    ),
    CertificationData(
      title: StringConst.ASSOCIATE_ANDROID_DEV,
      url: StringConst.ASSOCIATE_ANDROID_DEV_URL,
      image: ImagePath.ASSOCIATE_ANDROID_DEV,
      imageSize: 0.325,
      awardedBy: StringConst.GOOGLE,
    ),
    CertificationData(
      title: StringConst.CLOUD_DEVELOPER,
      url: StringConst.CLOUD_DEVELOPER_URL,
      image: ImagePath.CLOUD_DEVELOPER_CERT,
      imageSize: 0.325,
      awardedBy: StringConst.UDACITY,
    ),
    CertificationData(
      title: StringConst.DATA_SCIENCE,
      url: StringConst.DATA_SCIENCE_CERT_URL,
      image: ImagePath.DATA_SCIENCE_CERT,
      imageSize: 0.325,
      awardedBy: StringConst.UDACITY,
    ),
    CertificationData(
      title: StringConst.ANDROID_BASICS,
      url: StringConst.ANDROID_BASICS_CERT_URL,
      image: ImagePath.ANDROID_BASICS_CERT,
      imageSize: 0.325,
      awardedBy: StringConst.UDACITY,
    ),
  ];

  static List<ExperienceData> experienceData = [
    ExperienceData(
      company: StringConst.COMPANY_5,
      position: StringConst.POSITION_5,
      companyUrl: StringConst.COMPANY_5_URL,
      roles: [
        StringConst.COMPANY_5_ROLE_1,
        StringConst.COMPANY_5_ROLE_2,
        StringConst.COMPANY_5_ROLE_3,
        StringConst.COMPANY_5_ROLE_4,
      ],
      location: StringConst.LOCATION_5,
      duration: StringConst.DURATION_5,
    ),
    ExperienceData(
      company: StringConst.COMPANY_4,
      position: StringConst.POSITION_4,
      companyUrl: StringConst.COMPANY_4_URL,
      roles: [
        StringConst.COMPANY_4_ROLE_1,
        StringConst.COMPANY_4_ROLE_2,
      ],
      location: StringConst.LOCATION_4,
      duration: StringConst.DURATION_4,
    ),
    ExperienceData(
      company: StringConst.COMPANY_3,
      position: StringConst.POSITION_3,
      companyUrl: StringConst.COMPANY_3_URL,
      roles: [
        StringConst.COMPANY_3_ROLE_1,
        StringConst.COMPANY_3_ROLE_2,
        // StringConst.COMPANY_3_ROLE_3,
      ],
      location: StringConst.LOCATION_3,
      duration: StringConst.DURATION_3,
    ),
    // ExperienceData(
    //   company: StringConst.COMPANY_2,
    //   position: StringConst.POSITION_2,
    //   companyUrl: StringConst.COMPANY_2_URL,
    //   roles: [
    //     StringConst.COMPANY_2_ROLE_1,
    //     StringConst.COMPANY_2_ROLE_2,
    //     StringConst.COMPANY_2_ROLE_3,
    //   ],
    //   location: StringConst.LOCATION_2,
    //   duration: StringConst.DURATION_2,
    // ),
  ];
}

class Projects {
  static ProjectItemData DISNEY_PLUS = ProjectItemData(
    title: StringConst.DISNEY_PLUS,
    subtitle: StringConst.DISNEY_PLUS,
    platform: StringConst.DISNEY_PLUS_PLATFORM,
    primaryColor: AppColors.disneyPlus,
    image: ImagePath.DISNEY_PLUS_COVER,
    coverUrl: ImagePath.DISNEY_PLUS_SCREENS,
    navSelectedTitleColor: AppColors.flutterCatalogSelectedNavTitle,
    appLogoColor: AppColors.flutterCatalogAppLogo,
    projectAssets: [
      ImagePath.DISNEY_PLUS_1,
      ImagePath.DISNEY_PLUS_2,
      ImagePath.DISNEY_PLUS_3,
      ImagePath.DISNEY_PLUS_4,
      ImagePath.DISNEY_PLUS_5,
      ImagePath.DISNEY_PLUS_6,
      ImagePath.DISNEY_PLUS_7,
      ImagePath.DISNEY_PLUS_8,
      ImagePath.DISNEY_PLUS_9,
      ImagePath.DISNEY_PLUS_10,
      ImagePath.DISNEY_PLUS_11,
      ImagePath.DISNEY_PLUS_12,
      ImagePath.DISNEY_PLUS_13,
    ],
    category: StringConst.DISNEY_PLUS_CATEGORY,
    portfolioDescription: StringConst.DISNEY_PLUS_DETAIL,
    isPublic: true,
    isOnPlayStore: false,
    technologyUsed: StringConst.JETPACK_COMPOSE,
    gitHubUrl: StringConst.DISNEY_PLUS_GITHUB_URL,
    playStoreUrl: StringConst.DISNEY_PLUS_PLAYSTORE_URL,
  );

  static ProjectItemData FLUTTER_CATALOG = ProjectItemData(
    title: StringConst.FLUTTER_CATALOG,
    subtitle: StringConst.FLUTTER_CATALOG,
    platform: StringConst.FLUTTER_CATALOG_PLATFORM,
    primaryColor: AppColors.flutter_catalog,
    image: ImagePath.FLUTTER_CATALOG_COVER,
    coverUrl: ImagePath.FLUTTER_CATALOG_COVER,
    navSelectedTitleColor: AppColors.flutterCatalogSelectedNavTitle,
    appLogoColor: AppColors.flutterCatalogAppLogo,
    projectAssets: [
      ImagePath.FLUTTER_CATALOG_SCREENS,
      ImagePath.FLUTTER_CATALOG_1,
      ImagePath.FLUTTER_CATALOG_2,
      ImagePath.FLUTTER_CATALOG_3,
      ImagePath.FLUTTER_CATALOG_4,
      ImagePath.FLUTTER_CATALOG_5,
    ],
    category: StringConst.FLUTTER_CATALOG_CATEGORY,
    portfolioDescription: StringConst.FLUTTER_CATALOG_DETAIL,
    isPublic: true,
    isOnPlayStore: true,
    technologyUsed: StringConst.FLUTTER,
    gitHubUrl: StringConst.FLUTTER_CATALOG_GITHUB_URL,
    playStoreUrl: StringConst.FLUTTER_CATALOG_PLAYSTORE_URL,
  );

  static ProjectItemData DROP = ProjectItemData(
    title: StringConst.DROP,
    subtitle: StringConst.DROP,
    platform: StringConst.DROP_PLATFORM,
    primaryColor: AppColors.drop,
    image: ImagePath.DROP_COVER,
    category: StringConst.DROP_CATEGORY,
    designer: StringConst.DROP_DESIGNER,
    coverUrl: ImagePath.DROP_COVER,
    navTitleColor: AppColors.dropNavTitle,
    navSelectedTitleColor: AppColors.dropSelectedNavTitle,
    appLogoColor: AppColors.dropAppLogo,
    projectAssets: [
      ImagePath.DROP_DESC,
      ImagePath.DROP_FLOW_CHART,
      ImagePath.DROP_WIREFRAMES,
      ImagePath.DROP_MINIMAL_DESIGN,
      ImagePath.DROP_EASY_ACCESS,
      ImagePath.DROP_SIMPLE,
      ImagePath.DROP_THANKS,
    ],
    portfolioDescription: StringConst.DROP_DETAIL,
    isPublic: true,
    isOnPlayStore: true,
    technologyUsed: StringConst.FLUTTER,
    gitHubUrl: StringConst.DROP_GITHUB_URL,
    playStoreUrl: StringConst.DROP_PLAYSTORE_URL,
  );

  static ProjectItemData ROAM = ProjectItemData(
    title: StringConst.ROAM,
    subtitle: StringConst.ROAM,
    primaryColor: AppColors.roam,
    category: StringConst.ROAM_CATEGORY,
    designer: StringConst.ROAM_DESIGNER,
    platform: StringConst.ROAM_PLATFORM,
    image: ImagePath.ROAM_COVER,
    coverUrl: ImagePath.ROAM_COVER,
    navTitleColor: AppColors.roamNavTitle,
    navSelectedTitleColor: AppColors.roamSelectedNavTitle,
    appLogoColor: AppColors.roamAppLogo,
    projectAssets: [
      ImagePath.ROAM_OVERALL,
      ImagePath.ROAM_ONBOARDING,
      ImagePath.ROAM_HOME,
      ImagePath.ROAM_EXPLORE,
      ImagePath.ROAM_PROFILE,
      ImagePath.ROAM_FLOW_CHART,
      ImagePath.ROAM_WIREFRAMES_1,
      ImagePath.ROAM_WIREFRAMES_2,
      ImagePath.ROAM_WIREFRAMES_3,
    ],
    portfolioDescription: StringConst.ROAM_DETAIL,
    isPublic: true,
    isOnPlayStore: true,
    technologyUsed: StringConst.FLUTTER,
    gitHubUrl: StringConst.ROAM_GITHUB_URL,
    playStoreUrl: StringConst.ROAM_PLAYSTORE_URL,
  );

  static ProjectItemData LOGIN_CATALOG = ProjectItemData(
    title: StringConst.LOGIN_CATALOG,
    primaryColor: AppColors.login_catalog,
    subtitle: StringConst.LOGIN_CATALOG,
    category: StringConst.LOGIN_CATALOG_CATEGORY,
    platform: StringConst.LOGIN_CATALOG_PLATFORM,
    image: ImagePath.LOGIN_CATALOG_COVER,
    coverUrl: ImagePath.LOGIN_CATALOG_COVER,
    portfolioDescription: StringConst.LOGIN_CATALOG_DETAIL,
    navTitleColor: AppColors.loginCatalogNavTitle,
    navSelectedTitleColor: AppColors.loginCatalogSelectedNavTitle,
    appLogoColor: AppColors.loginCatalogAppLogo,
    projectAssets: [
      ImagePath.LOGIN_DESIGN_4,
      ImagePath.LOGIN_DESIGN_5,
      ImagePath.LOGIN_DESIGN_7,
      ImagePath.LOGIN_DESIGN_8,
      ImagePath.LOGIN_DESIGN_9,
    ],
    isPublic: true,
    isOnPlayStore: true,
    technologyUsed: StringConst.FLUTTER,
    gitHubUrl: StringConst.LOGIN_CATALOG_GITHUB_URL,
    playStoreUrl: StringConst.LOGIN_CATALOG_PLAYSTORE_URL,
  );

  static ProjectItemData FOODY_BITE = ProjectItemData(
    title: StringConst.FOODY_BITE,
    subtitle: StringConst.FOODY_BITE_SUBTITLE,
    category: StringConst.FOODY_BITE_CATEGORY,
    designer: StringConst.FOODY_BITE_DESIGNER,
    primaryColor: AppColors.foodybite,
    platform: StringConst.FOODY_BITE_PLATFORM,
    image: ImagePath.FOODY_BITE_COVER,
    coverUrl: ImagePath.FOODY_BITE_COVER,
    navTitleColor: AppColors.foodybiteNavTitle,
    navSelectedTitleColor: AppColors.foodybiteSelectedNavTitle,
    appLogoColor: AppColors.foodybiteAppLogo,
    projectAssets: [
      ImagePath.FOODY_BITE_HOME,
      ImagePath.FOODY_BITE_STARTING_FLOW,
      ImagePath.FOODY_BITE_HOME_FLOW,
      ImagePath.FOODY_BITE_REVIEW_FLOW,
      ImagePath.FOODY_BITE_TYPOGRAPHY,
    ],
    portfolioDescription: StringConst.FOODY_BITE_DETAIL,
    isPublic: true,
    isOnPlayStore: true,
    technologyUsed: StringConst.FLUTTER,
    gitHubUrl: StringConst.FOODY_BITE_GITHUB_URL,
    playStoreUrl: StringConst.FOODY_BITE_PLAYSTORE_URL,
  );

  static ProjectItemData NIMBUS = ProjectItemData(
    title: StringConst.NIMBUS,
    subtitle: StringConst.NIMBUS,
    primaryColor: AppColors.nimbus,
    platform: StringConst.NIMBUS_PLATFORM,
    category: StringConst.NIMBUS_CATEGORY,
    designer: StringConst.NIMBUS_DESIGNER,
    image: ImagePath.NIMBUS_COVER,
    coverUrl: ImagePath.NIMBUS_COVER,
    navTitleColor: AppColors.nimbusNavTitle,
    navSelectedTitleColor: AppColors.nimbusSelectedNavTitle,
    projectAssets: [
      ImagePath.NIMBUS,
    ],
    portfolioDescription: StringConst.NIMBUS_DETAIL,
    isPublic: true,
    isOnPlayStore: false,
    isLive: true,
    technologyUsed: StringConst.FLUTTER,
    gitHubUrl: StringConst.NIMBUS_GITHUB_URL,
    webUrl: StringConst.NIMBUS_WEB_URL,
  );

  static ProjectItemData OTP_TEXT_FIELD = ProjectItemData(
    title: StringConst.OTP_TEXT_FIELD,
    subtitle: StringConst.OTP_TEXT_FIELD_SUBTITLE,
    category: StringConst.OTP_TEXT_FIELD_CATEGORY,
    primaryColor: AppColors.otp_package,
    platform: StringConst.OTP_TEXT_FIELD_PLATFORM,
    image: ImagePath.OTP_TEXTFIELD_COVER,
    coverUrl: ImagePath.OTP_TEXTFIELD_COVER,
    portfolioDescription: StringConst.OTP_TEXT_FIELD_DETAIL,
    navTitleColor: AppColors.otpPackageNavTitle,
    navSelectedTitleColor: AppColors.otpPackageSelectedNavTitle,
    appLogoColor: AppColors.otpPackageAppLogo,
    isPublic: true,
    isLive: true,
    technologyUsed: StringConst.FLUTTER,
    gitHubUrl: StringConst.OTP_TEXT_FIELD_GITHUB_URL,
    webUrl: StringConst.OTP_TEXT_FIELD_WEB_URL,
  );

  static ProjectItemData AERIUM = ProjectItemData(
    title: StringConst.AERIUM,
    subtitle: StringConst.AERIUM_SUBTITLE,
    primaryColor: AppColors.aerium_v1,
    platform: StringConst.AERIUM_PLATFORM,
    category: StringConst.AERIUM_CATEGORY,
    designer: StringConst.AERIUM_DESIGNER,
    image: ImagePath.AERIUM_COVER,
    coverUrl: ImagePath.AERIUM_COVER,
    navTitleColor: AppColors.aeriumV1NavTitle,
    projectAssets: [
      ImagePath.AERIUM_COVER,
      ImagePath.AERIUM_DESIGN_2,
      ImagePath.AERIUM_DESIGN_3,
    ],
    portfolioDescription: StringConst.AERIUM_DETAIL,
    isPublic: true,
    isLive: true,
    technologyUsed: StringConst.FLUTTER,
    gitHubUrl: StringConst.AERIUM_GITHUB_URL,
    webUrl: StringConst.AERIUM_WEB_URL,
  );

  static ProjectItemData AERIUM_V2 = ProjectItemData(
    title: StringConst.AERIUM_V2,
    subtitle: StringConst.AERIUM_V2_SUBTITLE,
    category: StringConst.AERIUM_V2_CATEGORY,
    designer: StringConst.AERIUM_V2_DESIGNER,
    primaryColor: AppColors.aerium_v1,
    platform: StringConst.AERIUM_V2_PLATFORM,
    image: ImagePath.AERIUM_V2_LAST,
    coverUrl: ImagePath.AERIUM_V2_LAST,
    portfolioDescription: StringConst.AERIUM_V2_DETAIL,
    projectAssets: [
      ImagePath.AERIUM_V2_OVERALL,
      ImagePath.AERIUM_V2_FIRST,
      ImagePath.AERIUM_V2_TYPOGRAPHY,
      ImagePath.AERIUM_V2_LAST,
    ],
    isPublic: true,
    isLive: true,
    technologyUsed: StringConst.FLUTTER,
    gitHubUrl: StringConst.AERIUM_V2_GITHUB_URL,
    webUrl: StringConst.AERIUM_V2_WEB_URL,
  );

  static ProjectItemData OUTFITR = ProjectItemData(
    title: StringConst.OUTFITR,
    subtitle: StringConst.OUTFITR_SUBTITLE,
    category: StringConst.OUTFITR_CATEGORY,
    primaryColor: AppColors.outfitr,
    platform: StringConst.OUTFITR_PLATFORM,
    image: ImagePath.OUTFITR_COVER,
    coverUrl: ImagePath.OUTFITR_1,
    portfolioDescription: StringConst.OUTFITR_DETAIL,
    navTitleColor: AppColors.outfitrNavTitle,
    navSelectedTitleColor: AppColors.outfitrSelectedNavTitle,
    appLogoColor: AppColors.outfitrAppLogo,
    projectAssets: [
      ImagePath.OUTFITR_2,
      ImagePath.OUTFITR_4,
      ImagePath.OUTFITR_5,
      ImagePath.OUTFITR_6,
    ],
    isPublic: true,
    technologyUsed: StringConst.FLUTTER,
    gitHubUrl: StringConst.OUTFITR_GITHUB_URL,
    webUrl: StringConst.OUTFITR_WEB_URL,
  );

  // A-Dev
  static ProjectItemData UPCOMING = ProjectItemData(
    title: StringConst.UPCOMING,
    subtitle: StringConst.UPCOMING_SUBTITLE,
    category: StringConst.UPCOMING_CATEGORY,
    primaryColor: AppColors.upcoming,
    platform: StringConst.UPCOMING_PLATFORM,
    image: ImagePath.OUTFITR_COVER,
    coverUrl: ImagePath.OUTFITR_1,
    portfolioDescription: StringConst.UPCOMING_DETAIL,
    navTitleColor: AppColors.upcomingNavTitle,
    navSelectedTitleColor: AppColors.upcomingSelectedNavTitle,
    appLogoColor: AppColors.upcomingAppLogo,
    projectAssets: [
      ImagePath.OUTFITR_2,
      ImagePath.OUTFITR_4,
      ImagePath.OUTFITR_5,
      ImagePath.OUTFITR_6,
    ],
    isPublic: true,
    technologyUsed: StringConst.FLUTTER,
    gitHubUrl: StringConst.UPCOMING_GITHUB_URL,
    webUrl: StringConst.UPCOMING_WEB_URL,
  );

  static ProjectItemData DITONTON = ProjectItemData(
    title: StringConst.DITONTON,
    subtitle: StringConst.DITONTON_SUBTITLE,
    category: StringConst.DITONTON_CATEGORY,
    primaryColor: AppColors.ditonton,
    platform: StringConst.DITONTON_PLATFORM,
    image: ImagePath.OUTFITR_COVER,
    coverUrl: ImagePath.OUTFITR_1,
    portfolioDescription: StringConst.DITONTON_DETAIL,
    navTitleColor: AppColors.ditontonNavTitle,
    navSelectedTitleColor: AppColors.ditontonSelectedNavTitle,
    appLogoColor: AppColors.ditontonAppLogo,
    projectAssets: [
      ImagePath.OUTFITR_2,
      ImagePath.OUTFITR_4,
      ImagePath.OUTFITR_5,
      ImagePath.OUTFITR_6,
    ],
    isPublic: true,
    technologyUsed: StringConst.FLUTTER,
    gitHubUrl: StringConst.DITONTON_GITHUB_URL,
    webUrl: StringConst.DITONTON_WEB_URL,
  );

  static ProjectItemData BUAHTANGAN = ProjectItemData(
    title: StringConst.BUAHTANGAN,
    subtitle: StringConst.BUAHTANGAN_SUBTITLE,
    category: StringConst.BUAHTANGAN_CATEGORY,
    primaryColor: AppColors.buahTangan,
    platform: StringConst.BUAHTANGAN_PLATFORM,
    image: ImagePath.OUTFITR_COVER,
    coverUrl: ImagePath.OUTFITR_1,
    portfolioDescription: StringConst.BUAHTANGAN_DETAIL,
    navTitleColor: AppColors.buahTanganNavTitle,
    navSelectedTitleColor: AppColors.buahTanganSelectedNavTitle,
    appLogoColor: AppColors.buahTanganAppLogo,
    projectAssets: [
      ImagePath.OUTFITR_2,
      ImagePath.OUTFITR_4,
      ImagePath.OUTFITR_5,
      ImagePath.OUTFITR_6,
    ],
    isPublic: true,
    technologyUsed: StringConst.FLUTTER,
    gitHubUrl: StringConst.BUAHTANGAN_GITHUB_URL,
    webUrl: StringConst.BUAHTANGAN_WEB_URL,
  );

  static ProjectItemData PLANTIST = ProjectItemData(
    title: StringConst.PLANTIST,
    subtitle: StringConst.PLANTIST_SUBTITLE,
    category: StringConst.PLANTIST_CATEGORY,
    primaryColor: AppColors.plantist,
    platform: StringConst.PLANTIST_PLATFORM,
    image: ImagePath.PLANTIST_COVER,
    coverUrl: ImagePath.PLANTIST_3,
    portfolioDescription: StringConst.PLANTIST_DETAIL,
    navTitleColor: AppColors.plantistNavTitle,
    navSelectedTitleColor: AppColors.plantistSelectedNavTitle,
    appLogoColor: AppColors.plantistAppLogo,
    projectAssets: [
      ImagePath.PLANTIST_1,
      ImagePath.PLANTIST_2,
      ImagePath.PLANTIST_3,
    ],
    isPublic: true,
    technologyUsed: StringConst.ANDROID,
    gitHubUrl: StringConst.PLANTIST_GITHUB_URL,
    // webUrl: StringConst.BUAHTANGAN_WEB_URL,
  );

  static ProjectItemData MASAKIN = ProjectItemData(
    title: StringConst.MASAKIN,
    subtitle: StringConst.MASAKIN_SUBTITLE,
    category: StringConst.MASAKIN_CATEGORY,
    primaryColor: AppColors.masakin,
    platform: StringConst.MASAKIN_PLATFORM,
    image: ImagePath.MASAKIN_COVER,
    coverUrl: ImagePath.MASAKIN_3,
    portfolioDescription: StringConst.MASAKIN_DETAIL,
    navTitleColor: AppColors.masakinNavTitle,
    navSelectedTitleColor: AppColors.masakinSelectedNavTitle,
    appLogoColor: AppColors.masakinAppLogo,
    projectAssets: [
      ImagePath.MASAKIN_1,
      ImagePath.MASAKIN_2,
      ImagePath.MASAKIN_3,
    ],
    isPublic: true,
    technologyUsed: StringConst.FLUTTER,
    gitHubUrl: StringConst.MASAKIN_GITHUB_URL,
    // webUrl: StringConst.MASAKIN_WEB_URL,
  );

  static ProjectItemData RESTAURANT = ProjectItemData(
    title: StringConst.RESTAURANT,
    subtitle: StringConst.RESTAURANT_SUBTITLE,
    category: StringConst.RESTAURANT_CATEGORY,
    primaryColor: AppColors.restaurant,
    platform: StringConst.RESTAURANT_PLATFORM,
    image: ImagePath.RESTAURANT_COVER,
    coverUrl: ImagePath.RESTAURANT_3,
    portfolioDescription: StringConst.RESTAURANT_DETAIL,
    navTitleColor: AppColors.restaurantNavTitle,
    navSelectedTitleColor: AppColors.restaurantSelectedNavTitle,
    appLogoColor: AppColors.restaurantAppLogo,
    projectAssets: [
      ImagePath.RESTAURANT_1,
      ImagePath.RESTAURANT_2,
      ImagePath.RESTAURANT_3,
      ImagePath.RESTAURANT_4,
    ],
    isPublic: true,
    technologyUsed: StringConst.FLUTTER,
    gitHubUrl: StringConst.RESTAURANT_GITHUB_URL,
    // webUrl: StringConst.RESTAURANT_WEB_URL,
  );

  static ProjectItemData TABLETOP = ProjectItemData(
    title: StringConst.TABLETOP,
    subtitle: StringConst.TABLETOP_SUBTITLE,
    category: StringConst.TABLETOP_CATEGORY,
    primaryColor: AppColors.tabletop,
    platform: StringConst.TABLETOP_PLATFORM,
    image: ImagePath.TABLETOP_COVER,
    coverUrl: ImagePath.TABLETOP_9,
    portfolioDescription: StringConst.TABLETOP_DETAIL,
    navTitleColor: AppColors.tabletopNavTitle,
    navSelectedTitleColor: AppColors.tabletopSelectedNavTitle,
    appLogoColor: AppColors.tabletopAppLogo,
    projectAssets: [
      ImagePath.TABLETOP_0,
      ImagePath.TABLETOP_1,
      ImagePath.TABLETOP_2,
      ImagePath.TABLETOP_3,
      ImagePath.TABLETOP_4,
      ImagePath.TABLETOP_5,
      ImagePath.TABLETOP_6,
      ImagePath.TABLETOP_7,
      ImagePath.TABLETOP_8,
      ImagePath.TABLETOP_9,
    ],
    isPublic: true,
    technologyUsed: StringConst.FLUTTER,
    gitHubUrl: StringConst.TABLETOP_GITHUB_URL,
    webUrl: StringConst.TABLETOP_WEB_URL,
  );

  static ProjectItemData EDGESTORE = ProjectItemData(
    title: StringConst.EDGESTORE,
    subtitle: StringConst.EDGESTORE_SUBTITLE,
    category: StringConst.EDGESTORE_CATEGORY,
    primaryColor: AppColors.edgestore,
    platform: StringConst.EDGESTORE_PLATFORM,
    image: ImagePath.EDGESTORE_COVER,
    coverUrl: ImagePath.EDGESTORE_18,
    portfolioDescription: StringConst.EDGESTORE_DETAIL,
    navTitleColor: AppColors.edgestoreNavTitle,
    navSelectedTitleColor: AppColors.edgestoreSelectedNavTitle,
    appLogoColor: AppColors.edgestoreAppLogo,
    projectAssets: [
      ImagePath.EDGESTORE_1,
      ImagePath.EDGESTORE_2,
      ImagePath.EDGESTORE_3,
      ImagePath.EDGESTORE_4,
      ImagePath.EDGESTORE_5,
      ImagePath.EDGESTORE_6,
      ImagePath.EDGESTORE_7,
      ImagePath.EDGESTORE_8,
      ImagePath.EDGESTORE_9,
      ImagePath.EDGESTORE_10,
      ImagePath.EDGESTORE_11,
      ImagePath.EDGESTORE_12,
      ImagePath.EDGESTORE_13,
      ImagePath.EDGESTORE_14,
      ImagePath.EDGESTORE_15,
      ImagePath.EDGESTORE_16,
      ImagePath.EDGESTORE_17,
      ImagePath.EDGESTORE_18,
      ImagePath.EDGESTORE_19,
    ],
    isPublic: true,
    technologyUsed: "Html, CSS, TailwindCss, Javascript, PHP, MySQL",
    gitHubUrl: StringConst.EDGESTORE_GITHUB_URL,
    webUrl: StringConst.EDGESTORE_WEB_URL,
  );

  static ProjectItemData BOOKSHELF = ProjectItemData(
    title: StringConst.BOOKSHELF,
    subtitle: StringConst.BOOKSHELF_SUBTITLE,
    category: StringConst.BOOKSHELF_CATEGORY,
    primaryColor: AppColors.bookshelf,
    platform: StringConst.BOOKSHELF_PLATFORM,
    image: ImagePath.BOOKSHELF_COVER,
    coverUrl: ImagePath.BOOKSHELF_3,
    portfolioDescription: StringConst.BOOKSHELF_DETAIL,
    navTitleColor: AppColors.bookshelfNavTitle,
    navSelectedTitleColor: AppColors.bookshelfSelectedNavTitle,
    appLogoColor: AppColors.bookshelfAppLogo,
    projectAssets: [
      ImagePath.BOOKSHELF_1,
      ImagePath.BOOKSHELF_2,
      ImagePath.BOOKSHELF_3,
    ],
    isPublic: true,
    technologyUsed: "Html, CSS, Javascript",
    gitHubUrl: StringConst.BOOKSHELF_GITHUB_URL,
    webUrl: StringConst.BOOKSHELF_WEB_URL,
  );

  static ProjectItemData KENAK = ProjectItemData(
    title: StringConst.KENAK,
    subtitle: StringConst.KENAK_SUBTITLE,
    category: StringConst.KENAK_CATEGORY,
    primaryColor: AppColors.kenak,
    platform: StringConst.KENAK_PLATFORM,
    image: ImagePath.KENAK_COVER,
    coverUrl: ImagePath.KENAK_3,
    portfolioDescription: StringConst.KENAK_DETAIL,
    navTitleColor: AppColors.kenakNavTitle,
    navSelectedTitleColor: AppColors.kenakSelectedNavTitle,
    appLogoColor: AppColors.kenakAppLogo,
    projectAssets: [
      ImagePath.KENAK_1,
      ImagePath.KENAK_2,
      ImagePath.KENAK_3,
    ],
    isPublic: true,
    technologyUsed: "Html, CSS, Javascript",
    gitHubUrl: StringConst.KENAK_GITHUB_URL,
    webUrl: StringConst.KENAK_WEB_URL,
  );
}

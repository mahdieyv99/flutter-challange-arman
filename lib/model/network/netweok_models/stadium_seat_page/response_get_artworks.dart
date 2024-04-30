class ResponseGetArtworks {
  List<ResultArtwork>? result;
  List<Similars>? similars;
  int? errCode;
  String? error;

  ResponseGetArtworks({
    this.result,
    this.errCode,
    this.error,
  });

  ResponseGetArtworks.fromJson(Map<String, dynamic> json) {
    if (json['result'] != null) {
      result = <ResultArtwork>[];
      json['result'].forEach((v) {
        result!.add(new ResultArtwork.fromJson(v));
      });
      if (json['similars'] != null) {
        similars = <Similars>[];
        json['similars'].forEach((v) {
          similars!.add(new Similars.fromJson(v));
        });
      }
      errCode = json['errCode'];
      error = json['error'];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.result != null) {
      data['result'] = this.result!.map((v) => v.toJson()).toList();
    }
    if (this.similars != null) {
      data['similars'] = this.similars!.map((v) => v.toJson()).toList();
    }
    data['errCode'] = this.errCode;
    data['error'] = this.error;
    return data;
  }
}

class ResultArtwork {
  String? sId;
  String? name;
  String? date;
  Artist? artist;
  String? dimensions;
  Period? medium;
  Period? genre;
  Period? period;
  List<Tags>? tags;
  Period? mood;
  Period? story;
  Museum? museum;
  String? ailes;
  String? comment;
  String? contract;
  String? description;
  String? locationInMuseum;
  String? level;
  String? order;
  String? room;
  Tags? writer;
  String? other;
  List<String>? wikipedia;
  String? mMID;
  bool? checkedTd;
  bool? designedTd;
  bool? doneTd;
  bool? editedMt;
  String? galleryNumber;
  String? largeTour;
  String? mediumTour;
  String? museumUrl;
  dynamic oldID;
  String? smallTour;
  List<String>? supportingImage;
  String? tdRanking;
  List<String>? wikimediaCommons;
  bool? writtenJg;
  bool? shouldShowOnboarding;
  String? picture;
  String? fullImage;
  List<String>? funFacts;
  String? floorPlane;
  String? profile;
  String? spotlight;
  String? thumb;
  String? search;
  bool? isLiked;

  ResultArtwork(
      {this.sId,
      this.name,
      this.date,
      this.artist,
      this.dimensions,
      this.medium,
      this.genre,
      this.period,
      this.tags,
      this.mood,
      this.story,
      this.museum,
      this.ailes,
      this.comment,
      this.contract,
      this.description,
      this.locationInMuseum,
      this.level,
      this.order,
      this.room,
      this.writer,
      this.other,
      this.wikipedia,
      this.mMID,
      this.checkedTd,
      this.designedTd,
      this.doneTd,
      this.editedMt,
      this.galleryNumber,
      this.largeTour,
      this.mediumTour,
      this.museumUrl,
      this.oldID,
      this.smallTour,
      this.supportingImage,
      this.tdRanking,
      this.wikimediaCommons,
      this.writtenJg,
      this.shouldShowOnboarding,
      this.picture,
      this.fullImage,
      this.funFacts,
      this.floorPlane,
      this.profile,
      this.spotlight,
      this.thumb,
      this.isLiked,
      this.search});

  ResultArtwork.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    date = json['date'];
    artist = json['artist'] != null ? new Artist.fromJson(json['artist']) : null;
    dimensions = json['dimensions'];
    medium = json['medium'] != null ? new Period.fromJson(json['medium']) : null;
    genre = json['genre'] != null ? new Period.fromJson(json['genre']) : null;
    period = json['period'] != null ? new Period.fromJson(json['period']) : null;
    if (json['tags'] != null) {
      tags = <Tags>[];
      json['tags'].forEach((v) {
        tags!.add(new Tags.fromJson(v));
      });
    }
    mood = json['mood'] != null ? new Period.fromJson(json['mood']) : null;
    story = json['story'] != null ? new Period.fromJson(json['story']) : null;
    museum = json['museum'] != null ? new Museum.fromJson(json['museum']) : null;
    ailes = json['ailes'];
    comment = json['comment'];
    contract = json['contract'];
    description = json['description'];
    locationInMuseum = json['locationInMuseum'];
    level = json['level'];
    order = json['order'];
    room = json['room'];
    writer = json['writer'] != null ? new Tags.fromJson(json['writer']) : null;
    other = json['other'];
    wikipedia =(json['wikipedia'] == null) ? [] : json['wikipedia'].cast<String>();
    mMID = json['MMID'];
    checkedTd = json['checkedTd'];
    designedTd = json['designedTd'];
    doneTd = json['doneTd'];
    editedMt = json['editedMt'];
    galleryNumber = json['galleryNumber'];
    largeTour = json['largeTour'];
    mediumTour = json['mediumTour'];
    museumUrl = json['museumUrl'];
    oldID = json['oldID'];
    smallTour = json['smallTour'];
    supportingImage = (json['supportingImage'] == null) ? [] : json['supportingImage'].cast<String>();
    tdRanking = json['tdRanking'];
    wikimediaCommons =(json['wikimediaCommons'] == null) ? [] :  json['wikimediaCommons'].cast<String>();
    writtenJg = json['writtenJg'];
    shouldShowOnboarding = json['shouldShowOnboarding'];
    picture = json['picture'];
    fullImage = json['fullImage'];
    funFacts =(json['funFacts'] == null) ? [] : json['funFacts'].cast<String>();
    floorPlane = json['floorPlane'];
    profile = json['profile'];
    spotlight = json['spotlight'];
    thumb = json['thumb'];
    search = json['search'];
    isLiked = json['isLiked'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['date'] = this.date;
    if (this.artist != null) {
      data['artist'] = this.artist!.toJson();
    }
    data['dimensions'] = this.dimensions;
    if (this.medium != null) {
      data['medium'] = this.medium!.toJson();
    }
    if (this.genre != null) {
      data['genre'] = this.genre!.toJson();
    }
    if (this.period != null) {
      data['period'] = this.period!.toJson();
    }
    if (this.tags != null) {
      data['tags'] = this.tags!.map((v) => v.toJson()).toList();
    }
    if (this.mood != null) {
      data['mood'] = this.mood!.toJson();
    }
    if (this.story != null) {
      data['story'] = this.story!.toJson();
    }
    if (this.museum != null) {
      data['museum'] = this.museum!.toJson();
    }
    data['ailes'] = this.ailes;
    data['comment'] = this.comment;
    data['contract'] = this.contract;
    data['description'] = this.description;
    data['locationInMuseum'] = this.locationInMuseum;
    data['level'] = this.level;
    data['order'] = this.order;
    data['room'] = this.room;
    if (this.writer != null) {
      data['writer'] = this.writer!.toJson();
    }
    data['other'] = this.other;
    data['wikipedia'] = this.wikipedia;
    data['MMID'] = this.mMID;
    data['checkedTd'] = this.checkedTd;
    data['designedTd'] = this.designedTd;
    data['doneTd'] = this.doneTd;
    data['editedMt'] = this.editedMt;
    data['galleryNumber'] = this.galleryNumber;
    data['largeTour'] = this.largeTour;
    data['mediumTour'] = this.mediumTour;
    data['museumUrl'] = this.museumUrl;
    data['oldID'] = this.oldID;
    data['smallTour'] = this.smallTour;
    data['supportingImage'] = this.supportingImage;
    data['tdRanking'] = this.tdRanking;
    data['wikimediaCommons'] = this.wikimediaCommons;
    data['writtenJg'] = this.writtenJg;
    data['shouldShowOnboarding'] = this.shouldShowOnboarding;
    data['picture'] = this.picture;
    data['fullImage'] = this.fullImage;
    data['funFacts'] = this.funFacts;
    data['floorPlane'] = this.floorPlane;
    data['profile'] = this.profile;
    data['spotlight'] = this.spotlight;
    data['thumb'] = this.thumb;
    data['search'] = this.search;
    data['isLiked'] = this.isLiked;
    return data;
  }
}

class Artist {
  String? sId;
  String? name;
  List<Period>? period;
  String? mMID;
  String? artistNationality;
  String? artistYear;
  int? numberOfArtworks;
  String? profilePicture;

  Artist(
      {this.sId,
      this.name,
      this.period,
      this.mMID,
      this.artistNationality,
      this.artistYear,
      this.numberOfArtworks,
      this.profilePicture});

  Artist.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    if (json['period'] != null) {
      period = <Period>[];
      json['period'].forEach((v) {
        period!.add(new Period.fromJson(v));
      });
    }
    mMID = json['MMID'];
    artistNationality = json['artistNationality'];
    artistYear = json['artistYear'];
    numberOfArtworks = json['numberOfArtworks'];
    profilePicture = json['profilePicture'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    if (this.period != null) {
      data['period'] = this.period!.map((v) => v.toJson()).toList();
    }
    data['MMID'] = this.mMID;
    data['artistNationality'] = this.artistNationality;
    data['artistYear'] = this.artistYear;
    data['numberOfArtworks'] = this.numberOfArtworks;
    data['profilePicture'] = this.profilePicture;
    return data;
  }
}

class Period {
  String? sId;
  String? type;
  String? name;

  Period({this.sId, this.type, this.name});

  Period.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    type = json['type'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['type'] = this.type;
    data['name'] = this.name;
    return data;
  }
}

class Tags {
  String? sId;
  String? name;

  Tags({this.sId, this.name});

  Tags.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    return data;
  }
}

class Museum {
  String? sId;
  String? name;
  String? mMID;
  String? country;
  String? countryNumber;
  String? city;
  String? piecesCount;
  String? website;
  String? description;
  String? openingHours;
  List<Tours>? tours;
  String? homepage;
  String? search;
  String? profile;
  String? thumb;

  Museum(
      {this.sId,
        this.name,
        this.mMID,
        this.country,
        this.countryNumber,
        this.city,
        this.piecesCount,
        this.website,
        this.description,
        this.openingHours,
        this.tours,
        this.homepage,
        this.search,
        this.profile,
        this.thumb});

  Museum.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    mMID = json['MMID'];
    country = json['country'];
    countryNumber = json['countryNumber'];
    city = json['city'];
    piecesCount = json['piecesCount'];
    website = json['website'];
    description = json['description'];
    openingHours = json['openingHours'];
    if (json['tours'] != null) {
      tours = <Tours>[];
      json['tours'].forEach((v) {
        tours!.add(new Tours.fromJson(v));
      });
    }
    homepage = json['homepage'];
    search = json['search'];
    profile = json['profile'];
    thumb = json['thumb'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['MMID'] = this.mMID;
    data['country'] = this.country;
    data['countryNumber'] = this.countryNumber;
    data['city'] = this.city;
    data['piecesCount'] = this.piecesCount;
    data['website'] = this.website;
    data['description'] = this.description;
    data['openingHours'] = this.openingHours;
    if (this.tours != null) {
      data['tours'] = this.tours!.map((v) => v.toJson()).toList();
    }
    data['homepage'] = this.homepage;
    data['search'] = this.search;
    data['profile'] = this.profile;
    data['thumb'] = this.thumb;
    return data;
  }
}



class Tours {
  String? name;
  int? duration;
  bool? showIntroduction;
  String? introduction;
  String? mainImage;
  List<ArtworksInTours>? artworks;
  String? sId;

  Tours(
      {this.name,
        this.duration,
        this.showIntroduction,
        this.introduction,
        this.mainImage,
        this.artworks,
        this.sId});

  Tours.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    duration = json['duration'];
    showIntroduction = json['showIntroduction'];
    introduction = json['introduction'];
    mainImage = json['mainImage'];
    if (json['artworks'] != null) {
      artworks = <ArtworksInTours>[];
      json['artworks'].forEach((v) {
        artworks!.add(new ArtworksInTours.fromJson(v));
      });
    }
    sId = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['duration'] = this.duration;
    data['showIntroduction'] = this.showIntroduction;
    data['introduction'] = this.introduction;
    data['mainImage'] = this.mainImage;
    if (this.artworks != null) {
      data['artworks'] = this.artworks!.map((v) => v.toJson()).toList();
    }

    data['_id'] = this.sId;
    return data;
  }
}

class ArtworksInTours {
  String? artwork;
  String? artworkId;
  int? order;
  int? floor;
  String? areaName;
  String? sId;

  ArtworksInTours(
      {this.artwork,
        this.artworkId,
        this.order,
        this.floor,
        this.areaName,
        this.sId});

  ArtworksInTours.fromJson(Map<String, dynamic> json) {
    artwork = json['artwork'];
    artworkId = json['artworkId'];
    order = json['order'];
    floor = json['floor'];
    areaName = json['areaName'];
    sId = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['artwork'] = this.artwork;
    data['artworkId'] = this.artworkId;
    data['order'] = this.order;
    data['floor'] = this.floor;
    data['areaName'] = this.areaName;
    data['_id'] = this.sId;
    return data;
  }
}
class Similars {
  String? sId;
  String? name;
  String? fullImage;
  String? profile;
  String? thumb;
  String? search;

  Similars({this.sId, this.name, this.fullImage, this.profile, this.thumb, this.search});

  Similars.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    fullImage = json['fullImage'];
    profile = json['profile'];
    thumb = json['thumb'];
    search = json['search'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['fullImage'] = this.fullImage;
    data['profile'] = this.profile;
    data['thumb'] = this.thumb;
    data['search'] = this.search;
    return data;
  }
}

class StadiumSeatPageMainModel {
  List<bool> resultByFilterUserProfileExpansionStatus;
  bool isLoadingGetArtworkUserProfile;
  bool isLoadingGetArtworks;
  bool isLoadingGetSearch;
  bool isLoadingGetMoreSearch;
  bool isLoadingGetMuseum;
  bool isErrorGetData;
  String errorMessage;
  int selectedBottomNavigationIndex;
  int currentArtworksIndex;
  int currentPageArtwork;
  int currentPageSearch;
  int currentPageMuseum;
  String filter;
  String searchQuery;
  StadiumSeatPageMainModel({
    required this.resultByFilterUserProfileExpansionStatus,
    required this.isLoadingGetArtworkUserProfile,
    required this.isLoadingGetArtworks,
    required this.isLoadingGetSearch,
    required this.isLoadingGetMoreSearch,
    required this.isLoadingGetMuseum,
    required this.isErrorGetData,
    required this.errorMessage,
    required this.selectedBottomNavigationIndex,
    required this.currentArtworksIndex,
    required this.currentPageArtwork,
    required this.currentPageSearch,
    required this.currentPageMuseum,
    required this.filter,
    required this.searchQuery,
  });
}

void main(List<String> args) {
  int age = 13;
  bool hasParentConsent = false;
  int movieAgeRating = 16;

  if (age >= movieAgeRating ||
      (hasParentConsent == true && !(age < movieAgeRating - 2))) {
    print('You can watch the movie.');
  } else {
    print('You cannot watch the movie.');
  }
}

# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GKAchievementDescription = class GKAchievementDescription extends NSObject
  # Retrieving Achievement Descriptions
  @loadAchievementDescriptions: @nativeSelector "loadAchievementDescriptionsWithCompletionHandler:"

  # Reading and Writing Achievement Properties
  @instanceProperty "identifier"
  @instanceProperty "title"
  @instanceProperty "achievedDescription"
  @instanceProperty "unachievedDescription"
  @instanceProperty "maximumPoints"
  @instanceProperty "image"
  @instanceProperty "hidden"

  # Working with Achievement Images
  @incompleteAchievementImage: @nativeSelector "incompleteAchievementImage"
  @placeholderCompletedAchievementImage: @nativeSelector "placeholderCompletedAchievementImage"
  loadImage: @nativeSelector "loadImageWithCompletionHandler:"

  @register()

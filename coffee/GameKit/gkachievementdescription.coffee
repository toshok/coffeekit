# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GKAchievementDescription = class GKAchievementDescription extends NSObject
  @register()

  # Retrieving Achievement Descriptions
  @loadAchievementDescriptions: objc.invokeSelector "loadAchievementDescriptionsWithCompletionHandler:"

  # Reading and Writing Achievement Properties
  ck.instanceProperty @, "identifier"
  ck.instanceProperty @, "title"
  ck.instanceProperty @, "achievedDescription"
  ck.instanceProperty @, "unachievedDescription"
  ck.instanceProperty @, "maximumPoints"
  ck.instanceProperty @, "image"
  ck.instanceProperty @, "hidden"

  # Working with Achievement Images
  @incompleteAchievementImage: objc.invokeSelector "incompleteAchievementImage"
  @placeholderCompletedAchievementImage: objc.invokeSelector "placeholderCompletedAchievementImage"
  loadImage: objc.invokeSelector "loadImageWithCompletionHandler:"

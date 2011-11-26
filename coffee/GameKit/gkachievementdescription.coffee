# This file is part of coffeekit.  for licensing information, see the LICENSE file

class GKAchievementDescription extends NSObject
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # Retrieving Achievement Descriptions
  @loadAchievementDescriptions: objc.invokeSelector ("loadAchievementDescriptionsWithCompletionHandler:")

  # Reading and Writing Achievement Properties
  ck.addProperty @::, "identifier"
  ck.addProperty @::, "title"
  ck.addProperty @::, "achievedDescription"
  ck.addProperty @::, "unachievedDescription"
  ck.addProperty @::, "maximumPoints"
  ck.addProperty @::, "image"
  ck.addProperty @::, "hidden"

  # Working with Achievement Images
  @incompleteAchievementImage: objc.invokeSelector ("incompleteAchievementImage")
  @placeholderCompletedAchievementImage: objc.invokeSelector ("placeholderCompletedAchievementImage")
  loadImage: objc.invokeSelector ("loadImageWithCompletionHandler:")

new ck.RegisterAttribute GKAchievementDescription, "GKAchievementDescription"
exports.GKAchievementDescription = GKAchievementDescription

import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_model.freezed.dart';
part 'recipe_model.g.dart';

@freezed
class Recipe with _$Recipe {
  const factory Recipe({
    required String recipeId,
    required String userId,
    required String image,
    required String title,
    required String description,
    required int cookingTime,
    required Category category,
    required List<Ingredient> ingredients,
    required List<Step> steps,
    required Rating rating,
    required List<Comment> comments,
  }) = _Recipe;

  factory Recipe.fromJson(Map<String, dynamic> json) => _$RecipeFromJson(json);
}

@freezed
class Category with _$Category {
  const factory Category({
    required String categoryId,
    required String title,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}

@freezed
class Ingredient with _$Ingredient {
  const factory Ingredient({
    required String ingredientId,
    required String title,
  }) = _Ingredient;

  factory Ingredient.fromJson(Map<String, dynamic> json) =>
      _$IngredientFromJson(json);
}

@freezed
class Measurement with _$Measurement {
  const factory Measurement({
    required String measurementId,
    required String title,
  }) = _Measurement;

  factory Measurement.fromJson(Map<String, dynamic> json) =>
      _$MeasurementFromJson(json);
}

@freezed
class IngredientAndQuantity with _$IngredientAndQuantity {
  const factory IngredientAndQuantity(
      {required String ingredientAndQuantityId,
      required String ingredientId,
      required String quantity,
      required String measurementId,
      required String recipeId}) = _IngredientAndQuantity;

  factory IngredientAndQuantity.fromJson(Map<String, dynamic> json) =>
      _$IngredientAndQuantityFromJson(json);
}

@freezed
class Step with _$Step {
  const factory Step(
      {required String stepId,
      required String description,
      required String image,
      required String recipeId}) = _Step;

  factory Step.fromJson(Map<String, dynamic> json) => _$StepFromJson(json);
}

@freezed
class Comment with _$Comment {
  const factory Comment(
      {required String commentId,
      required String userId,
      required String comment,
      required DateTime time,
      required String recipeId}) = _Comment;

  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);
}

@freezed
class Rating with _$Rating {
  const factory Rating({
    required String ratingId,
    required String userId,
    required double overallRating,
    required int totalRating,
  }) = _Rating;

  factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);
}

@freezed
class FavoriteRecipe with _$FavoriteRecipe {
  const factory FavoriteRecipe({
    required String favoriteRecipeId,
    required String userId,
    required String recipeId,
  }) = _FavoriteRecipe;

  factory FavoriteRecipe.fromJson(Map<String, dynamic> json) =>
      _$FavoriteRecipeFromJson(json);
}

@freezed
class RecipeCollection with _$RecipeCollection {
  const factory RecipeCollection({
    required String recipeCollectionId,
    required String recipeId,
    required String recipeCollectionImage,
    required String title,
    required String description,
  }) = _RecipeCollection;

  factory RecipeCollection.fromJson(Map<String, dynamic> json) =>
      _$RecipeCollectionFromJson(json);
}

@freezed
class SeasonalProduct with _$SeasonalProduct {
  const factory SeasonalProduct(
      {required String productId,
      required String productIdImage,
      required String title,
      required String description,
      required String history,
      required String seson,
      required String taste,
      required String benefitsAndHarms,
      required String storage,
      required String recommendation,
      required String evidence}) = _SeasonalProduct;

  factory SeasonalProduct.fromJson(Map<String, dynamic> json) =>
      _$SeasonalProductFromJson(json);
}

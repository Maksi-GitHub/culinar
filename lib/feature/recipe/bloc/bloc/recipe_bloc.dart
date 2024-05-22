import 'package:bloc/bloc.dart';
import 'package:culinar/feature/recipe/data/repositories/resipe_repository.dart';
import 'package:culinar/feature/recipe/domain/entity/recipe_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_event.dart';
part 'recipe_state.dart';
part 'recipe_bloc.freezed.dart';

class RecipeBloc extends Bloc<RecipeEvent, RecipeState> {
final RecipeRepository _recipeRepository;

  RecipeBloc(this._recipeRepository) : super(const _Initial()) {

    //Рецепты
    on<_AddRecipe>((event, emit) async {
      try {
          await _recipeRepository.addRecipe(event.recipe);
          emit (const RecipeState.success([]));
        } catch (e) {
          emit (RecipeState.failure('Failed to add recipe: $e'));
        }
    });
  //   on<_UpdateRecipe>((event, emit) async {
  //     try {
  //         await _recipeRepository.updateRecipe(event.recipe);
  //         emit (const RecipeState.success([]));
  //       } catch (e) {
  //         emit (RecipeState.failure('Failed to update recipe: $e'));
  //       }
  //   });
  //   on<_DeleteRecipe>((event, emit) async {
  //     try {
  //         await _recipeRepository.deleteRecipe(event.recipeId);
  //         emit (const RecipeState.success([]));
  //       } catch (e) {
  //         emit (RecipeState.failure('Failed to delete recipe: $e'));
  //       }
  //   });
  //   on<_GetRecipeById>((event, emit) async {
  //     try {
  //         final recipe = await _recipeRepository.getRecipeById(event.recipeId);
  //         if (recipe != null) {
  //           emit (RecipeState.success([recipe]));
  //         } else {
  //           emit (const RecipeState.failure('Recipe not found'));
  //         }
  //       } catch (e) {
  //         emit (RecipeState.failure('Failed to get recipe: $e'));
  //       }
  //   });
  //   on<_GetAllRecipes>((event, emit) async {
  //     try {
  //         final recipes = await _recipeRepository.getAllRecipes();
  //         emit (RecipeState.success(recipes));
  //       } catch (e) {
  //         emit (RecipeState.failure('Failed to get recipes: $e'));
  //       }
  //   });
  //   on<_SearchRecipes>((event, emit) async {
  //     try {
  //         final recipes = await _recipeRepository.searchRecipes(event.query);
  //         emit (RecipeState.success(recipes));
  //       } catch (e) {
  //         emit (RecipeState.failure('Failed to search recipes: $e'));
  //       }
  //   });
  //   on<_FilterRecipesByCategory>((event, emit) async {
  //      try {
  //         final recipes = await _recipeRepository.filterRecipesByCategory(event.category);
  //         emit (RecipeState.success(recipes));
  //       } catch (e) {
  //         emit (RecipeState.failure('Failed to filter recipes by category: $e'));
  //       }
  //   });
  //   on<_FilterRecipesByIngredient>((event, emit) async {
  //      try {
  //         final recipes = await _recipeRepository.filterRecipesByIngredient(event.ingredient);
  //         emit (RecipeState.success(recipes));
  //       } catch (e) {
  //         emit (RecipeState.failure('Failed to filter recipes by ingredient: $e'));
  //       }
  //   });

  //   //Комментарии
  //   on<_AddComment>((event, emit) async {
  //     try {
  //         await _recipeRepository.addComment(event.comment);
  //         emit (const RecipeState.success([]));
  //       } catch (e) {
  //         emit (RecipeState.failure('Failed to add comment: $e'));
  //       }
  //   });
  //   on<_DeleteComment>((event, emit) async {
  //      try {
  //         await _recipeRepository.deleteComment(event.commentId);
  //         emit (const RecipeState.success([]));
  //       } catch (e) {
  //         emit (RecipeState.failure('Failed to delete comment: $e'));
  //       }
  //   });
  //   on<_GetCommentsByRecipe>((event, emit) async {
  //     try {
  //       final comments = await _recipeRepository.getCommentsByRecipe(event.recipeId);
  //       emit (RecipeState.success(comments.cast<Recipe>()));
  //     } catch (e) {
  //       emit (RecipeState.failure('Failed to get comments by recipe: $e'));
  //     }
  //   });

  //   //Избранное
  //   on<_AddToFavorites>((event, emit) async {
  //     try {
  //       await _recipeRepository.addToFavorites(event.userId, event.recipeId);
  //       emit (const RecipeState.success([]));
  //     } catch (e) {
  //       emit (RecipeState.failure('Failed to add to favorites: $e'));
  //     }
  //   });
  //   on<_RemoveFromFavorites>((event, emit) async {
  //     try {
  //   await _recipeRepository.removeFromFavorites(event.userId, event.recipeId);
  //   emit(const RecipeState.success([]));
  // } catch (e) {
  //   emit(RecipeState.failure('Failed to remove from favorites: $e'));
  // }
  //   });
  //   on<_GetFavoriteRecipes>((event, emit) async {
  //      try {
  //   final favoriteRecipes = await _recipeRepository.getFavoriteRecipes(event.userId);
  //   emit(RecipeState.success(favoriteRecipes));
  // } catch (e) {
  //   emit(RecipeState.failure('Failed to get favorite recipes: $e'));
  // }
  //   });

  //   //Подборки
  //   on<_GetRecipesByCollection>((event, emit) async {
  //     try {
  //   final recipes = await _recipeRepository.getRecipesByCollection(event.collectionId);
  //   emit(RecipeState.success(recipes));
  // } catch (e) {
  //   emit(RecipeState.failure('Failed to get recipes by collection: $e'));
  // }
  //   });


  }
}


import 'package:booklib/features/domain/repositories/books_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../entities/book_entity.dart';
import '../base_use_case.dart';

class GetFeaturedBooksUseCase extends BaseUseCase<List<BookEntity>, NoParameters> {
  final BooksRepository _booksRepository;

  GetFeaturedBooksUseCase(this._booksRepository);
  @override
  Future<Either<Failure, List<BookEntity>>> call(NoParameters parameters) async{
    return await _booksRepository.getFeaturedBooks();
  }
}
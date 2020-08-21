import 'package:hive/hive.dart';

class QuestionAdapter extends TypeAdapter<Question> {
  @override
  Question read(BinaryReader reader) {
    return Question(
      reader.readString(),
      reader.readInt(),
      reader.readBool(),
    );
  }

  @override
  int get typeId => 1;

  @override
  void write(BinaryWriter writer, Question obj) {
    writer.writeString(obj.text);
    writer.writeInt(obj.votes);
    writer.writeBool(obj.answered);
  }
}

class Question extends HiveObject {
  final String text;
  final int votes;
  final bool answered;

  Question(this.text, this.votes, this.answered);

  Question vote() {
    return Question(
      text,
      votes + 1,
      answered,
    );
  }
}

// To parse this JSON data, do
//
//     final taskModel = taskModelFromJson(jsonString);

import 'dart:convert';

TaskModel taskModelFromJson(String str) => TaskModel.fromJson(json.decode(str));

String taskModelToJson(TaskModel data) => json.encode(data.toJson());

class TaskModel {
  final String? docId;
  final String? title;
  final String? description;
  final bool? isCompleted;
  final int? createdAt;
  final String? image;

  TaskModel({
    this.docId,
    this.title,
    this.description,
    this.isCompleted,
    this.createdAt,
    this.image,
  });

  factory TaskModel.fromJson(Map<String, dynamic> json) => TaskModel(
    docId: json["docID"],
    title: json["title"],
    description: json["description"],
    isCompleted: json["isCompleted"],
    createdAt: json["createdAt"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "docID": docId,
    "title": title,
    "description": description,
    "isCompleted": isCompleted,
    "createdAt": createdAt,
    "image": image,
  };
}
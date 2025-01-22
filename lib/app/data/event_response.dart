class EventResponse {
  List<Events>? events;

  EventResponse({this.events});

  EventResponse.fromJson(Map<String, dynamic> json) {
    if (json['events'] != null) {
      events = <Events>[];
      json['events'].forEach((v) {
        events!.add(new Events.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.events != null) {
      data['events'] = this.events!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Events {
  int? id;
  String? name;
  String? description;
  String? eventDate;
  String? location;
  int? userId;
  String? createdAt;
  String? updatedAt;
  String? dibuatOleh;

  Events(
      {this.id,
      this.name,
      this.description,
      this.eventDate,
      this.location,
      this.userId,
      this.createdAt,
      this.updatedAt,
      this.dibuatOleh});

  Events.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    eventDate = json['event_date'];
    location = json['location'];
    userId = json['user_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    dibuatOleh = json['dibuat_oleh'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    data['event_date'] = this.eventDate;
    data['location'] = this.location;
    data['user_id'] = this.userId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['dibuat_oleh'] = this.dibuatOleh;
    return data;
  }
}

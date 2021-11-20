// To parse this JSON data, do
//
//     final notifications = notificationsFromJson(jsonString);

import 'dart:convert';

Notifications notificationsFromJson(String str) => Notifications.fromJson(json.decode(str));

String notificationsToJson(Notifications data) => json.encode(data.toJson());

class Notifications {
  Notifications({
    required this.lastUpdated,
    required this.isKtusiteOnline,
    required this.notifications,
  });

  final String lastUpdated;
  final bool isKtusiteOnline;
  final List<Notification> notifications;

  factory Notifications.fromJson(Map<String, dynamic> json) => Notifications(
    lastUpdated: json["last_updated"],
    isKtusiteOnline: json["is_ktusite_online"],
    notifications: List<Notification>.from(json["notifications"].map((x) => Notification.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "last_updated": lastUpdated,
    "is_ktusite_online": isKtusiteOnline,
    "notifications": List<dynamic>.from(notifications.map((x) => x.toJson())),
  };
}

class Notification {
  Notification({
    required this.date,
    required this.title,
    required this.description,
    required this.links,
  });

  final String date;
  final String title;
  final String description;
  final List<Link> links;

  factory Notification.fromJson(Map<String, dynamic> json) => Notification(
    date: json["date"],
    title: json["title"],
    description: json["description"],
    links: List<Link>.from(json["links"].map((x) => Link.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "date": date,
    "title": title,
    "description": description,
    "links": List<dynamic>.from(links.map((x) => x.toJson())),
  };
}

class Link {
  Link({
    required this.urlTitle,
    required this.url,
  });

  final String urlTitle;
  final String url;

  factory Link.fromJson(Map<String, dynamic> json) => Link(
    urlTitle: json["url_title"],
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "url_title": urlTitle,
    "url": url,
  };
}
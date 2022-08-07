class NotificationModel {
  String? title;
  String? subtitle;
  String? icon;

  NotificationModel({this.title, this.subtitle, this.icon});

  NotificationModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    subtitle = json['subtitle'];
    icon = json['icon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['subtitle'] = subtitle;
    data['icon'] = icon;
    return data;
  }
}

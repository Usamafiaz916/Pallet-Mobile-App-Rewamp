// ignore_for_file: file_names

class JobsitesModel {
  bool? success;
  String? expireAt;
  String? currentTimestamp;
  Data? data;
  Null jobsite;
  MaxHistory? maxHistory;
  MaxHistory? adminPhone;

  JobsitesModel(
      {this.success,
      this.expireAt,
      this.currentTimestamp,
      this.data,
      this.jobsite,
      this.maxHistory,
      this.adminPhone});

  JobsitesModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    expireAt = json['expire_at'];
    currentTimestamp = json['current_timestamp'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    jobsite = json['jobsite'];
    maxHistory = json['max_history'] != null
        ? new MaxHistory.fromJson(json['max_history'])
        : null;
    adminPhone = json['admin_phone'] != null
        ? new MaxHistory.fromJson(json['admin_phone'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    data['expire_at'] = expireAt;
    data['current_timestamp'] = currentTimestamp;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['jobsite'] = jobsite;
    if (maxHistory != null) {
      data['max_history'] = maxHistory!.toJson();
    }
    if (adminPhone != null) {
      data['admin_phone'] = adminPhone!.toJson();
    }
    return data;
  }
}

class Data {
  int? id;
  String? firstName;
  String? middleInitial;
  String? lastName;
  String? salutation;
  Null suffix;
  String? email;
  int? userTypeId;
  Null emailVerifiedAt;
  int? suspend;
  Null suspendStartDate;
  Null suspendEndDate;
  String? createdAt;
  String? updatedAt;
  String? phone;
  String? cell;
  Null deletedAt;
  int? logoutUser;
  int? superUser;
  String? lastAction;
  String? company;
  int? companyId;
  Null actingAsUser;
  List<Jobsites>? jobsites;

  Data(
      {this.id,
      this.firstName,
      this.middleInitial,
      this.lastName,
      this.salutation,
      this.suffix,
      this.email,
      this.userTypeId,
      this.emailVerifiedAt,
      this.suspend,
      this.suspendStartDate,
      this.suspendEndDate,
      this.createdAt,
      this.updatedAt,
      this.phone,
      this.cell,
      this.deletedAt,
      this.logoutUser,
      this.superUser,
      this.lastAction,
      this.company,
      this.companyId,
      this.actingAsUser,
      this.jobsites});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    middleInitial = json['middle_initial'];
    lastName = json['last_name'];
    salutation = json['salutation'];
    suffix = json['suffix'];
    email = json['email'];
    userTypeId = json['user_type_id'];
    emailVerifiedAt = json['email_verified_at'];
    suspend = json['suspend'];
    suspendStartDate = json['suspend_start_date'];
    suspendEndDate = json['suspend_end_date'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    phone = json['phone'];
    cell = json['cell'];
    deletedAt = json['deleted_at'];
    logoutUser = json['logout_user'];
    superUser = json['super_user'];
    lastAction = json['last_action'];
    company = json['company'];
    companyId = json['company_id'];
    actingAsUser = json['acting_as_user'];
    if (json['jobsites'] != null) {
      jobsites = <Jobsites>[];
      json['jobsites'].forEach((v) {
        jobsites!.add(new Jobsites.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['first_name'] = firstName;
    data['middle_initial'] = middleInitial;
    data['last_name'] = lastName;
    data['salutation'] = salutation;
    data['suffix'] = suffix;
    data['email'] = email;
    data['user_type_id'] = userTypeId;
    data['email_verified_at'] = emailVerifiedAt;
    data['suspend'] = suspend;
    data['suspend_start_date'] = suspendStartDate;
    data['suspend_end_date'] = suspendEndDate;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['phone'] = phone;
    data['cell'] = cell;
    data['deleted_at'] = deletedAt;
    data['logout_user'] = logoutUser;
    data['super_user'] = superUser;
    data['last_action'] = lastAction;
    data['company'] = company;
    data['company_id'] = companyId;
    data['acting_as_user'] = actingAsUser;
    if (jobsites != null) {
      data['jobsites'] = jobsites!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Jobsites {
  int? id;
  String? name;
  int? locked;
  String? createdAt;
  String? updatedAt;
  String? jobsiteId;
  Null deletedAt;
  int? suspend;
  Null suspendStartDate;
  Null suspendEndDate;
  String? address;
  String? city;
  String? state;
  Null zip;
  Null phone;
  Null cell;
  int? companyId;
  String? hauler;
  Pivot? pivot;

  Jobsites(
      {this.id,
      this.name,
      this.locked,
      this.createdAt,
      this.updatedAt,
      this.jobsiteId,
      this.deletedAt,
      this.suspend,
      this.suspendStartDate,
      this.suspendEndDate,
      this.address,
      this.city,
      this.state,
      this.zip,
      this.phone,
      this.cell,
      this.companyId,
      this.hauler,
      this.pivot});

  Jobsites.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    locked = json['locked'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    jobsiteId = json['jobsite_id'];
    deletedAt = json['deleted_at'];
    suspend = json['suspend'];
    suspendStartDate = json['suspend_start_date'];
    suspendEndDate = json['suspend_end_date'];
    address = json['address'];
    city = json['city'];
    state = json['state'];
    zip = json['zip'];
    phone = json['phone'];
    cell = json['cell'];
    companyId = json['company_id'];
    hauler = json['hauler'];
    pivot = json['pivot'] != null ? new Pivot.fromJson(json['pivot']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['locked'] = locked;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['jobsite_id'] = jobsiteId;
    data['deleted_at'] = deletedAt;
    data['suspend'] = suspend;
    data['suspend_start_date'] = suspendStartDate;
    data['suspend_end_date'] = suspendEndDate;
    data['address'] = address;
    data['city'] = city;
    data['state'] = state;
    data['zip'] = zip;
    data['phone'] = phone;
    data['cell'] = cell;
    data['company_id'] = companyId;
    data['hauler'] = hauler;
    if (pivot != null) {
      data['pivot'] = pivot!.toJson();
    }
    return data;
  }
}

class Pivot {
  int? userId;
  int? jobsiteId;

  Pivot({this.userId, this.jobsiteId});

  Pivot.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    jobsiteId = json['jobsite_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['user_id'] = userId;
    data['jobsite_id'] = jobsiteId;
    return data;
  }
}

class MaxHistory {
  int? id;
  String? name;
  String? description;
  String? value;
  Null createdAt;
  String? updatedAt;

  MaxHistory(
      {this.id,
      this.name,
      this.description,
      this.value,
      this.createdAt,
      this.updatedAt});

  MaxHistory.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    value = json['value'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['description'] = description;
    data['value'] = value;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

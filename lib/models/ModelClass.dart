/// createdAt : ""
/// name : "Nitish Kuar"
/// avatar : ""
/// emailId : ""
/// mobile : ""
/// country : ""
/// state : ""
/// district : ""
/// id : "1"
/// firstName : ""
/// lastName : ""
/// email : ""
/// phoneNumber : ""

class ModelClass {
  ModelClass({
      String? createdAt, 
      String? name, 
      String? avatar, 
      String? emailId, 
      String? mobile, 
      String? country, 
      String? state, 
      String? district, 
      String? id, 
      String? firstName, 
      String? lastName, 
      String? email, 
      String? phoneNumber,}){
    _createdAt = createdAt;
    _name = name;
    _avatar = avatar;
    _emailId = emailId;
    _mobile = mobile;
    _country = country;
    _state = state;
    _district = district;
    _id = id;
    _firstName = firstName;
    _lastName = lastName;
    _email = email;
    _phoneNumber = phoneNumber;
}

  ModelClass.fromJson(dynamic json) {
    _createdAt = json['createdAt'];
    _name = json['name'];
    _avatar = json['avatar'];
    _emailId = json['emailId'];
    _mobile = json['mobile'];
    _country = json['country'];
    _state = json['state'];
    _district = json['district'];
    _id = json['id'];
    _firstName = json['firstName'];
    _lastName = json['lastName'];
    _email = json['email'];
    _phoneNumber = json['phoneNumber'];
  }
  String? _createdAt;
  String? _name;
  String? _avatar;
  String? _emailId;
  String? _mobile;
  String? _country;
  String? _state;
  String? _district;
  String? _id;
  String? _firstName;
  String? _lastName;
  String? _email;
  String? _phoneNumber;
ModelClass copyWith({  String? createdAt,
  String? name,
  String? avatar,
  String? emailId,
  String? mobile,
  String? country,
  String? state,
  String? district,
  String? id,
  String? firstName,
  String? lastName,
  String? email,
  String? phoneNumber,
}) => ModelClass(  createdAt: createdAt ?? _createdAt,
  name: name ?? _name,
  avatar: avatar ?? _avatar,
  emailId: emailId ?? _emailId,
  mobile: mobile ?? _mobile,
  country: country ?? _country,
  state: state ?? _state,
  district: district ?? _district,
  id: id ?? _id,
  firstName: firstName ?? _firstName,
  lastName: lastName ?? _lastName,
  email: email ?? _email,
  phoneNumber: phoneNumber ?? _phoneNumber,
);
  String? get createdAt => _createdAt;
  String? get name => _name;
  String? get avatar => _avatar;
  String? get emailId => _emailId;
  String? get mobile => _mobile;
  String? get country => _country;
  String? get state => _state;
  String? get district => _district;
  String? get id => _id;
  String? get firstName => _firstName;
  String? get lastName => _lastName;
  String? get email => _email;
  String? get phoneNumber => _phoneNumber;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['createdAt'] = _createdAt;
    map['name'] = _name;
    map['avatar'] = _avatar;
    map['emailId'] = _emailId;
    map['mobile'] = _mobile;
    map['country'] = _country;
    map['state'] = _state;
    map['district'] = _district;
    map['id'] = _id;
    map['firstName'] = _firstName;
    map['lastName'] = _lastName;
    map['email'] = _email;
    map['phoneNumber'] = _phoneNumber;
    return map;
  }

}
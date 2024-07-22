import 'package:flutter/material.dart';

@immutable
final class SignupKeys {
  SignupKeys._();

  static  String headerTitle = "Hoşgeldiniz";
  static String headerSubtitle = "Hemen kaydolun ve satışlarınızı kolayca yönetin."; 

  static String nameTextFieldTitle = "Adınız";
  static String surnameTextFieldTitle = "Soyadınız";
  static String emailTextFieldTitle = "Email";
  static String numberTextFieldTitle = "Telefon Numaranız";
  static String webSiteTextFieldTitle = "Web Site Adresiniz";
  static String passwordTextFieldTitle = "Şifre";
  static String signupTermsText = "Üyelik Sözleşmesini ve Kullanım Şartlarını kabul ediyorum.";
  static String signupButtonTitle = "Kayıt Ol";
  static String needHelp = "Yardıma mı ihtiyacın var? ";
  static String support = "HST Asistan";
  static String agreeTerms = "Okudum, onayladım";

}

extension SingupKeysExt on SignupKeys {
  static String termsConditionsTitle = "Üyelik Sözleşmesi";
  static String termsConditionsText = """
  1. Taraflar  Bu sözleşme, HST Mobil ile üye arasında akdedilmiştir.  
  2. Sözleşmenin Konusu  Bu sözleşme, Üye’nin Şirket’in hizmetlerinden faydalanmasına ilişkin koşulları belirler.  
  3. Üyelik Şartları  
    3.1. Üye, doğru ve güncel bilgilerle kayıt olmayı kabul eder.  
    3.2. Üye, kullanıcı adı ve şifresinin güvenliğinden sorumludur.  
  4. Hizmetler  
    4.1. Şirket, üyelerine hizmetlerini sunar.  
  5. Gizlilik  
    5.1. Üye bilgileri gizli tutulacaktır.  
  6. Fesih  
    6.1. Taraflar, dilediği zaman sözleşmeyi feshedebilir.  
  7. Yürürlük  
    7.1. İşbu sözleşme, Üye tarafından onaylandığı tarihte yürürlüğe girer.""";
}
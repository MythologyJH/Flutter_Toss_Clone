import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:toss/util/color.dart';

var numberFormat = NumberFormat('###,###,###,###,###,###');


/// Bank
///

String convertBank({
  required String bank
}) {
  switch(bank) {
    case 'kakaoBank': return '카카오뱅크';
    case 'nhBank': return '지역농협';
    case 'kbBank': return 'KB국민';
    default: return '오류';
  }
}

String bankImage({
  required String bank
}) {
  switch(bank) {
    case 'kakaoBank': return 'resource/icon/chat.png';
    case 'nhBank': return 'resource/icon/chat.png';
    case 'kbBank': return 'resource/icon/chat.png';
    default: return '오류';
  }
}

Color bankColor({
  required String bank
}) {
  switch(bank) {
    case 'kakaoBank': return Colors.transparent;
    case 'nhBank': return nhBankColor;
    case 'kbBank': return kbBankColor;
    default: return Colors.transparent;
  }
}


/// Card
///

String convertCard({
  required String card
}) {
  switch(card) {
    case 'nhCard': return 'NH농협카드';
    case 'kbCard': return 'KB국민카드';
    case 'sinHanCard': return '신한카드';
    case 'samsungCard': return '삼성카드';
    case 'hyundaiCard': return '현대카드';
    case 'hanaCard': return '하나카드';
    case 'kakaoCard': return '카카오뱅크카드';
    case 'lotteCard': return '롯데카드';
    case 'woriCard': return '우리카드';
    case 'bcCard': return 'BC카드';
    case 'kBankCard': return '케이뱅크카드';
    default: return '오류';
  }
}


/// Stock
///

String convertStock({
  required String stock
}) {
  switch(stock) {
    case 'samsungElectron': return '삼성전자';
    case 'samsungSDI': return '삼성SDI';
    case 'kakao': return '카카오';
    case 'naver': return 'NAVER';
    case 'hyundai': return '현대차';
    default: return '오류';
  }
}

String stockImage({
  required String stock
}) {
  switch(stock) {
    case 'samsungElectron': return 'resource/icon/chat.png';
    case 'kakao': return 'resource/icon/chat.png';
    case 'naver': return 'resource/icon/chat.png';
    case 'hyundai': return 'resource/icon/chat.png';
    default: return '오류';
  }
}

Color stockColor({
  required String stock
}) {
  switch(stock) {
    case 'kakao': return Colors.transparent;
    case 'samsungElectron': return samsungColor;
    case 'hyundai': return hyundaiColor;
    case 'naver': return naverColor;
    default: return Colors.transparent;
  }
}
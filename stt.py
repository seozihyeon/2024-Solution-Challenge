import boto3
from botocore.exceptions import NoCredentialsError
from flask import Flask, request, jsonify
import speech_recognition as sr
from contextlib import closing
import requests
import logging

app = Flask(__name__)

app.logger.setLevel(logging.INFO)

file_handler = logging.FileHandler('app.log')
file_handler.setLevel(logging.INFO)
app.logger.addHandler(file_handler)
        
keyword_dict = {'지검': '2', '참고인': '2', '출석요구서': '2', '불법자금은닉': '2', '전자금융거래법': '2', '검찰': '2', '금융감독원': '2', '대포통장': '2', '거래실적': '2', '신용도': '2', '경찰': '2', '국세청': '2', '주민등록번호': '7', '신분증': '7', '비밀번호': '7', '혐의': '2', '수사과': '2', '현금지급기': '7', '법정출석': '2', '주민번호': '7', '개인정보유출': '2', '불법자금세탁': '2', '건강보험공단': '2', '국민연금관리공단': '2', '계좌범죄': '2', '카드번호': '7', '저금리': '1', '서울중앙지검': '2', '수사관': '2', '명의도용': '2', '대검찰청': '2', '고소장': '2', '대출': '1', '명의통장': '2', '전환대출': '1', '범죄연루': '2', '온라인사기': '2', '성매매': '2', '보안수사': '2', '대환대출': '2', '신용한도': '1', 'CVC번호': '2', '처벌대상': '2', '금감원': '2', '현금인출': '7', '입건통지서': '2', '비밀수사': '2', '인증번호': '7', '투자금': '7', '기프트카드': '7', '구글플레이': '7', '핀번호': '7', '계좌번호': '7', '구속수사': '2', '대출상품': '1', '피해자': '2', '채무한도초과': '1', '자산보호': '2', '정부정책금': '1', '채무상환': '1', '당일수령': '1', '금융거래법': '2', '첨단범죄수사부': '2', '사기단검거': '2', '신용카드': '7', '녹취': '2', '상환': '1', '고객님': '1', '은행': '1', '이자': '1', '자금': '2', '본인': '2', '통장': '2', '개설': '2', '명의': '2', '금융권': '2', '계좌': '2', '동결': '2', '검거': '2', '금융': '2', '거래': '2', '유출': '2', '전산': '1', '납부': '1', '금리': '1', '심사': '1', '대환': '1', '한도': '1', '마이너스통장': '1', '채권': '1', '완납': '1', '공증': '1', '지방검찰청': '2', '자산관리공사': '1', '국민은행': '2', '하나은행': '2', '신한은행': '2', '우리은행': '2', '농협은행': '2', '부산은행': '2', '경남은행': '2', '대구은행': '2', '수협은행': '2', '기업은행': '2', '외환은행': '2', '케이뱅크': '2', '카카오뱅크': '2', '토스뱅크': '2', '새마을금고': '2', '신용등급': '1', '수수료': '1', '공탁금': '1', '귀하명의': '2',
               '해치지' : '3', '다치지' : '3',  '무사' : '3' , '다쳤' : '3' , '수작' : '3', '죽입니다' : '3', '죽인다' : '3', '죽여버린다' : '3', '조용한 곳' : '3'} 

import speech_recognition as sr
r = sr.Recognizer()


import librosa

def detect(keyword_dict, input_string):
    keyword_count = {key: 0 for key in keyword_dict.values()}

    for keyword, keyword_type in keyword_dict.items():
        count = input_string.count(keyword.lower())
        keyword_count[keyword_type] += count

    return keyword_count

def warning(result_dict):
    max_value = max(result_dict.values())
    max_keys = [key for key, value in result_dict.items() if value == max_value]

    if sum(result_dict.values()) >= 5:
        print(f"주의: 보이스피싱 위험이 있을 수 있습니다.")
        for max_key in max_keys:
            if max_key == '1':
                print ("대출 관련 보이스피싱일 위험이 있습니다. 주의하세요.")
            elif max_key == '2':
                print ("기관 사칭 관련 보이스피싱일 위험이 있습니다. 주의하세요.")
            elif max_key == '3':
                print ("가족 납치 빙자 편취일 수 있습니다. 주의하세요.")
            else:
                return ("보이스피싱 위험 있습니다. 주의하세요.")
    else:
        print("통화 내용에 이상 없음")

@app.route('/process_audio_s3', methods=['POST'])
def process_audio_s3():
    content = request.json
    audio_url = content['audio_url']
    app.logger.info('Received audio URL: %s', audio_url)

    # Load audio file using requests
    with closing(requests.get(audio_url, stream=True)) as response:
        if response.status_code != 200:
            return jsonify({'error': 'Failed to download audio'}), 500
        
        # Convert audio to SpeechRecognition AudioData
        r = sr.Recognizer()
        with sr.AudioFile(response.raw) as source:
            audio_data = r.record(source)
        
        try:
            # Recognize speech from the audio data
            text = r.recognize_google(audio_data=audio_data, language='ko-KR')
            
            # Perform keyword detection and warning analysis
            result1 = detect(keyword_dict, text)
            warning_message = warning(result1)


            # Return the transcribed text, analysis results, and next page
            return jsonify({
                'transcribed_text': text,
                'analysis': result1,
                'warning': warning_message,
            })
        except sr.UnknownValueError:
            return jsonify({'error': 'Speech recognition could not understand audio'}), 500
        except sr.RequestError as e:
            return jsonify({'error': f'Could not request results from speech recognition service; {e}'}), 500

        

        


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')

